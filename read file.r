install.packages("RCurl")
library(RCurl)
install.packages("repmis")
library(repmis)
install.packages("data.table")
library(data.table)
install.packages("bitops")
library(bitops)
install.packages("curl")
library(curl)
script <- getURL("https://github.com/yilin1/my-part-C-project/tree/170124", ssl.verifypeer = FALSE)

source_data("https://github.com/yilin1/my-part-C-project/blob/170124/150000.RData?raw=True")
#setwd("/C:Users/sann4775/Documents")
setwd("/Users/yilinsmac/Desktop")
#source_data("https://github.com/yilin1/my-part-C-project/blob/0125/workimage.RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0125/realtest1415(20).RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0125/workimage%200125.RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0126/realtest1617(30).RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0126/work%20images/image0126.RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0130/work%20images/image0129%2334.RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0131/realtest's/realtest24(260).RData?raw=True")
source_data("https://github.com/yilin1/my-part-C-project/blob/0203/realtest's/realtest26(280%2Ck%3D50).RData?raw=TRUE")
source_data("https://github.com/yilin1/my-part-C-project/blob/0203/realtest's/realtest28(280%2Ck%3D1000).RData?raw=TRUE")
source_data("https://github.com/yilin1/my-part-C-project/blob/0203/realtest's/realtest34(280%2Ck%3D1000).RData?raw=TRUE")
save(realtest26,erv2_26,file="realtest26(280,k=50).RData")
save(realtest28,erv2_28,file="realtest28(280,k=1000).RData")
save(realtest34,erv2_34,file="realtest34(280,k=1000).RData")

install.packages("ode")
install.packages("deSolve")

#save(sd,file="realtest.RData")
#load("C:/Users/sann4775/Documents/realtest.RData")
.libPaths()

save.image(file='image0125.RData')
save(realtest14,realtest15,erv2_1415,file='realtest1415(20).RData')
load("/Users/yilinsmac/Desktop/image0125.RData")

rm(list = setdiff(ls(), lsf.str()))
lsf.str()
rm(list = setdiff(ls(), lsf.str())[grep("^p", ls())])
rm(list = ls()[grep("^d1", ls())])
setwd("/Users/yilinsmac/Desktop")
save.image(file="coreimage0206.RData")
rm(d28,d38,d48,d58)
