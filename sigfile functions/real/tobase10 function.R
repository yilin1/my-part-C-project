tobase10=function(row,k){
  #this function regards the row "row" as a base "k" number, and convert it to a unique number 
  #in base 10
  #hence "row" should be a row of output of function baseKmc(k=k) 
  #row need to be deducted by 1 as by convention base k number expressed by 0,..,k-1, 
  #but the input "row" uses 1,...,k
  digit=0
  row=row-1
  for (i in length(row):1){
    dig=row[i]*(k^(length(row)-i))
    digit=digit+dig
  }
  return(digit)
}
