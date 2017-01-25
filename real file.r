library(RCurl)
install.packages("repmis")
library(repmis)
script <- getURL("https://github.com/yilin1/my-part-C-project/tree/170124", ssl.verifypeer = FALSE)

source_data("https://github.com/yilin1/my-part-C-project/blob/170124/150000.RData?raw=True")
#setwd("/C:Users/sann4775/Documents")
setwd("/Users/yilinsmac/Desktop")
source_data("https://github.com/yilin1/my-part-C-project/blob/0125/realtest1415(20).RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0125/workimage%200125.RData?raw=True")
install.packages("ode")
install.packages("deSolve")

#save(sd,file="realtest.RData")
#load("C:/Users/sann4775/Documents/realtest.RData")
.libPaths()

save.image(file='image0125.RData')
