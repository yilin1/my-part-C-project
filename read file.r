install.packages("RCurl")
library(RCurl)
install.packages("repmis")
library(repmis)
script <- getURL("https://github.com/yilin1/my-part-C-project/tree/170124", ssl.verifypeer = FALSE)

source_data("https://github.com/yilin1/my-part-C-project/blob/170124/150000.RData?raw=True")
#setwd("/C:Users/sann4775/Documents")
install.packages("ode")
install.packages("deSolve")

#save(sd,file="realtest.RData")
#load("C:/Users/sann4775/Documents/realtest.RData")
.libPaths()
