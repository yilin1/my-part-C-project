setwd('/Users/yilinsmac/Desktop')
install.packages("gdata")
require(gdata)
rd=read.xls("(Real Data) bcr-abl1-transcript-ratios_state2006.xls",header=TRUE,sheet=1,verbose=FALSE)
rd$X=NULL
rd$X.1=NULL
