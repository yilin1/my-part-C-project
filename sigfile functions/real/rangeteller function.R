rangeteller=function(v){
  #this function runs through any component of a vector, if any of the component <0 or >1, returns TRUE
  #returns TRUE if manzu tiaojian
  for (i in 1:length(v)){
    j1=which(v<0)
    j2=which(v>1)
  }
  if (is.na(j1>0||j2>0)==TRUE){ #i.e. if there is no index of v which is >1 or <0
    #print("v=")
    #print(v)
    #print("is within prior range (0,1)")
    return (TRUE)
  }
  else {
    #print("v=")
    #print(v)
    #print("is outside prior range (0,1)")
    return (FALSE)
  }
}

#test
#v=c(0.6,0.8,0.7,-0.2,-0.8,1.1,0.4)
#v=c(0.2,0.3,0.4)
#v=c(0.2,0.3,-0.00001,0)
#v=c(0.2,0.3,1.0000000001)
#rangeteller(v)
