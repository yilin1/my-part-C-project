
#L14/6th Prac: Part A Simulation and Statistical Programming

#######################
#Ising Model
ising.mcmc<-function(N,SS,n=16,theta=0.8,x0=matrix(1,n,n),show=T) {

  #initialise state and hashX=number disgreeing neighbors
  X<-x0
  wp<-sum(X) #monitor the number of white pixels for convergence
  hashX<-sum(abs(diff(X))+abs(diff(t(X))))

  for (j in 1:N) {

    #simultate proposal Xp - pick a pixel and flip it
    i<-1+floor(runif(1)*n^2)
    Xp<-X
    Xp[i]<-1-X[i]
    
    #calculate hashXp for the candidate state Xp
    hashXp<-sum(abs(diff(Xp))+abs(diff(t(Xp))))

    #accept/reject on a log scale
    if (log(runif(1))<theta*(hashX-hashXp)) {
      X<-Xp
      hashX<-hashXp
    }

    #monitor the MCMC - take a sample evey SS steps
    if (!(j%%SS)) {
      wp[j/SS+1]=sum(X)
      if (show) {
        par(mfrow=c(1,2)); 
        plot(wp,xlim=c(0,N/SS),ylim=c(0,n^2)); abline(h=n^2/2)
        image(X,col=gray(0:255/255),axes=F); box()
      }
    }

  }
  #return the time-series wp and the last state X
  return(list(wp=wp,X=X))
}

#simulate 32x32 Ising model (using default theta=0.8)
#200K steps sampling every 1000 steps
n<-32; N<-200000; SS<-1000
ising.mcmc(N, SS)

##############################################################
#Convergence monitoring - illustrated on Ising 16x16
#check convergence monitoring the number of white pixels
#quite time consuming
n<-16
wp1<-ising.mcmc(N,SS,n,show=F)$wp
wp2<-ising.mcmc(N,SS,n,x0=matrix(0,n,n),show=F)$wp
wp3<-ising.mcmc(N,SS,n,x0=matrix(runif(n^2)>0.5,n,n),show=F)$wp

#plot the MCMC time series of wp-values
plot(wp1,type='l',xlim=c(0,N/SS),ylim=c(0,n^2),
     xlab='MCMC step count',ylab="# white pixels"); abline(h=n^2/2)
lines(wp2,col=2); lines(wp3,col=3)
#M=25 looks like a sensible cut-off
M<-25
abline(v=M)

#the run has length N/SS+1. Superpose the densities from the 
#different runs to check they agree 
L<-N/SS+1
plot(density(wp1[M:L]),main='',xlim=c(0,256),ylim=c(0,0.015)); 
lines(density(wp2[M:L]),col=2); 
lines(density(wp3[M:L]),col=3)

###################################################################
#MCMC Bayesian inference
#Ising Model

#[1] simulate the true image Xtrue~Ising(0.8)
n<-32; theta<-0.8
N<-20000; SS<-1000
Xtrue<-ising.mcmc(N,SS,n,x0=matrix(runif(n^2)>0.5,n,n),show=F)$X

#simulate the observation process
sigma=0.7
Y=Xtrue+sigma*rnorm(n^2)

#plot the images Xtrue and Y alongside each other
par(mfrow=c(1,2)); 
image(Xtrue,col=gray(0:255/255),axes=F); box()
image(Y,col=gray(0:255/255),axes=F); box()

#Bayesian inference for X|Y recover the true image from 
#the noisy one - estimate the posterior mean using MCMC
N<-200000; SS<-1000
Xest<-post.mcmc(N,SS,Y) #this function defined below

#here is our code - what has changed from above is the
#likelihood factor exp(-|x-y|^2/2*sigma^2)
post.mcmc<-function(N,SS,Y,theta=0.8,sigma=1,x0=matrix(1,n,n),show=T) {
  n<-dim(Y)[1]
  X<-x0; wp<-sum(X)
  Xtot<-X
  hashX<-sum(abs(diff(X))+abs(diff(t(X))))
  dXY<-sum((X-Y)^2)

  for (j in 1:N) {

    #simulate the proposed new state
    i<-1+floor(runif(1)*n^2)
    Xp<-X
    Xp[i]<-1-X[i]

    #calculate the log-lkd and log-prior for the new state
    hashXp<-sum(abs(diff(Xp))+abs(diff(t(Xp))))
    dXpY<-sum((Xp-Y)^2)

    #Accept/Reject the proposed state
    if (log(runif(1))< (theta*(hashX-hashXp)+(dXY-dXpY)/(2*sigma^2))) {
      X<-Xp
      hashX<-hashXp
      dXY<-dXpY
    }

    #every SS steps take a sample - calculate the mean.
    if (!(j%%SS)) {
      wp[j/SS+1]=sum(X)
      Xtot<-Xtot+X
      if (show) {
        par(mfrow=c(2,2))
        image(Xtrue,col=gray(0:255/255),axes=F,xlab='True 0/1'); box()
        image(Y,col=gray(0:255/255),axes=F,xlab='noisy sigma=1'); box()
        image(X,col=gray(0:255/255),axes=F,xlab='mcmc sample X|Y'); box()
        image(Xtot/(N/SS),col=gray(0:255/255),axes=F,xlab='post mean'); box()
      }
    }
  }
  return(list(wp=wp,X=X,post.mean=Xtot/(N/SS)))
}
