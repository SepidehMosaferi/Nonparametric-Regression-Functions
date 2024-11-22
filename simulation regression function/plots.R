
## Plots for the x regression function LM/SLM
xd01_SLM_N500 <- read.table("/Users/sepidehmosaferi/Library/CloudStorage/Dropbox/Pivotal Test Statistic paper/Submissions/Journal of Nonparametric Statistics/code/simulation regression function/results_x/xd01_SLM_N500.txt",header = FALSE) 
xd01_SLM_N500 <- as.data.frame(xd01_SLM_N500)
colnames(xd01_SLM_N500) <- c("xf","yff","biasd01","stdd01","rmsed01","CI_upd01final","CI_lowd01final","CI_d01final","coverage_d01final")

xd02_SLM_N500 <- read.table("/Users/sepidehmosaferi/Library/CloudStorage/Dropbox/Pivotal Test Statistic paper/Submissions/Journal of Nonparametric Statistics/code/simulation regression function/results_x/xd02_SLM_N500.txt",header = FALSE) 
xd02_SLM_N500 <- as.data.frame(xd02_SLM_N500)
colnames(xd02_SLM_N500) <- c("xf","yff","biasd02","stdd02","rmsed02","CI_upd02final","CI_lowd02final","CI_d02final","coverage_d02final")

xd03_SLM_N500 <- read.table("/Users/sepidehmosaferi/Library/CloudStorage/Dropbox/Pivotal Test Statistic paper/Submissions/Journal of Nonparametric Statistics/code/simulation regression function/results_x/xd03_SLM_N500.txt",header = FALSE) 
xd03_SLM_N500 <- as.data.frame(xd03_SLM_N500)
colnames(xd03_SLM_N500) <- c("xf","yff","biasd03","stdd03","rmsed03","CI_upd03final","CI_lowd03final","CI_d03final","coverage_d03final")

xd04_SLM_N500 <- read.table("/Users/sepidehmosaferi/Library/CloudStorage/Dropbox/Pivotal Test Statistic paper/Submissions/Journal of Nonparametric Statistics/code/simulation regression function/results_x/xd04_SLM_N500.txt",header = FALSE) 
xd04_SLM_N500 <- as.data.frame(xd04_SLM_N500)
colnames(xd04_SLM_N500) <- c("xf","yff","biasd04","stdd04","rmsed04","CI_upd04final","CI_lowd04final","CI_d04final","coverage_d04final")

## Example of plots
plot(xd01_SLM_N500$xf,xd01_SLM_N500$yff,main="",xlab="x",ylab="confidence interval",xlim=c(-1,1),ylim=c(-1.55,1.55),
     font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, cex.main=1.5,cex=1.5,lty=1,col="black",type="l")
title(main="Straight Line Regression Function \n with SLM and N=500",adj=0.5,font.main=1,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,line = 1)
lines(xd01_SLM_N500$xf,xd01_SLM_N500$CI_upd01final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="blue",lty=2,type="l")
lines(xd01_SLM_N500$xf,xd01_SLM_N500$CI_lowd01final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="blue",lty=2,type="l")
lines(xd02_SLM_N500$xf,xd02_SLM_N500$CI_upd02final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="red",lty=3,type="l")
lines(xd02_SLM_N500$xf,xd02_SLM_N500$CI_lowd02final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="red",lty=3,type="l")
lines(xd03_SLM_N500$xf,xd03_SLM_N500$CI_upd03final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="brown",lty=4,type="l")
lines(xd03_SLM_N500$xf,xd03_SLM_N500$CI_lowd03final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="brown",lty=4,type="l")
lines(xd04_SLM_N500$xf,xd04_SLM_N500$CI_upd04final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="green",lty=5,type="l")
lines(xd04_SLM_N500$xf,xd04_SLM_N500$CI_lowd04final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="green",lty=5,type="l")
legend("topleft", legend=expression("d=0.1","d=0.2","d=0.3","d=0.4"),
       col=c("blue","red","brown","green"), 
       lty=2:5, cex=1,lwd=1,horiz=TRUE)

plot(xd01_SLM_N500$xf,xd01_SLM_N500$coverage_d01final,main="",xlab="x",ylab="coverage probability",xlim=c(-1,1),ylim=c(0,1),
     font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, cex.main=1.5,cex=1.5,lty=1,col="black",type="l")
title(main="Straight Line Regression Function \n with SLM and N=500",adj=0.5,font.main=1,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,line = 1)
lines(xd02_SLM_N500$xf,xd02_SLM_N500$coverage_d02final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="blue",lty=2,type="l")
lines(xd03_SLM_N500$xf,xd03_SLM_N500$coverage_d03final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="red",lty=3,type="l")
lines(xd04_SLM_N500$xf,xd04_SLM_N500$coverage_d04final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="brown",lty=4,type="l")
legend("topleft", legend=expression("d=0.1","d=0.2","d=0.3","d=0.4"),
       col=c("black","blue","red","brown"), 
       lty=1:4, cex=1,lwd=1,horiz=TRUE)

plot(xd01_SLM_N500$xf,xd01_SLM_N500$biasd01,main="",xlab="x",ylab="absolute bias",xlim=c(-1,1),ylim=c(0,0.5),
     font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, cex.main=1.5,cex=1.5,lty=1,col="black",type="l")
title(main="Straight Line Regression Function \n with SLM and N=500",adj=0.5,font.main=1,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,line = 1)
lines(xd02_SLM_N500$xf,xd02_SLM_N500$biasd02,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="blue",lty=2,type="l")
lines(xd03_SLM_N500$xf,xd03_SLM_N500$biasd03,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="red",lty=3,type="l")
lines(xd04_SLM_N500$xf,xd04_SLM_N500$biasd04,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="brown",lty=4,type="l")
legend("topleft", legend=expression("d=0.1","d=0.2","d=0.3","d=0.4"),
       col=c("black","blue","red","brown"), 
       lty=1:4, cex=1,lwd=1,horiz=TRUE)

plot(xd01_SLM_N500$xf,xd01_SLM_N500$stdd01,main="",xlab="x",ylab="std",xlim=c(-1,1),ylim=c(0,0.5),
     font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, cex.main=1.5,cex=1.5,lty=1,col="black",type="l")
title(main="Straight Line Regression Function \n with SLM and N=500",adj=0.5,font.main=1,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,line = 1)
lines(xd02_SLM_N500$xf,xd02_SLM_N500$stdd02,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="blue",lty=2,type="l")
lines(xd03_SLM_N500$xf,xd03_SLM_N500$stdd03,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="red",lty=3,type="l")
lines(xd04_SLM_N500$xf,xd04_SLM_N500$stdd04,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="brown",lty=4,type="l")
legend("topleft", legend=expression("d=0.1","d=0.2","d=0.3","d=0.4"),
       col=c("black","blue","red","brown"), 
       lty=1:4, cex=1,lwd=1,horiz=TRUE)

plot(xd01_SLM_N500$xf,xd01_SLM_N500$rmsed01,main="",xlab="x",ylab="rmse",xlim=c(-1,1),ylim=c(0,0.5),
     font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, cex.main=1.5,cex=1.5,lty=1,col="black",type="l")
title(main="Straight Line Regression Function \n with SLM and N=500",adj=0.5,font.main=1,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,line = 1)
lines(xd02_SLM_N500$xf,xd02_SLM_N500$rmsed02,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="blue",lty=2,type="l")
lines(xd03_SLM_N500$xf,xd03_SLM_N500$rmsed03,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="red",lty=3,type="l")
lines(xd04_SLM_N500$xf,xd04_SLM_N500$rmsed04,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="brown",lty=4,type="l")
legend("topleft", legend=expression("d=0.1","d=0.2","d=0.3","d=0.4"),
       col=c("black","blue","red","brown"), 
       lty=1:4, cex=1,lwd=1,horiz=TRUE)

plot(xd01_SLM_N500$xf,xd01_SLM_N500$CI_d01final,main="",xlab="x",ylab="expected length of confidence interval",xlim=c(-1,1),ylim=c(0,1),
     font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, cex.main=1.5,cex=1.5,lty=1,col="black",type="l")
title(main="Straight Line Regression Function \n with SLM and N=500",adj=0.5,font.main=1,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,line = 1)
lines(xd02_SLM_N500$xf,xd02_SLM_N500$CI_d02final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="blue",lty=2,type="l")
lines(xd03_SLM_N500$xf,xd03_SLM_N500$CI_d03final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="red",lty=3,type="l")
lines(xd04_SLM_N500$xf,xd04_SLM_N500$CI_d04final,main="",font.main=1.5,lwd=1.5,cex.lab=1.5, cex.axis=1.5, 
      cex.main=1.5,cex=1.5,xlab="",col="brown",lty=4,type="l")
legend("topleft", legend=expression("d=0.1","d=0.2","d=0.3","d=0.4"),
       col=c("black","blue","red","brown"), 
       lty=1:4, cex=1,lwd=1,horiz=TRUE)










