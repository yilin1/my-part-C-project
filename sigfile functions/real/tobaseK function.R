tobaseK=function(base10,k,d=14){
  #base10 is a base 10 number
  #k is the base to which you want to convert to 
  #d is the dimension you are proposing
  result=rep(0,d)
  l1=base10%%k 
  result[1]=l1
  int=floor(base10/k)
  n=2
  while (int!=0){
    l=int%%k
    result[n]=l
    n=n+1
    int=floor(int/k)
      }
  result=rev(result)
  return(result+1) #in the problem use 1,...,k rather than 0,...,k-1
}