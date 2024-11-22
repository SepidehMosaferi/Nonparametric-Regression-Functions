### application code

require("arfima"); require("artfima"); require("PLRModels")

## Spain
Spain <- read.table("/Users/sepidehmosaferi/Desktop/code_non-parametric-stat/Spain.txt")
y <- Spain[,1]; x <- Spain[,2]
ghat <- read.table("/Users/sepidehmosaferi/Desktop/code_non-parametric-stat/ghat_SPA.txt",header = TRUE)
artfima(x,arimaOrder=c(0,0,0),likAlg="Whittle")

# cross-validation
data <- cbind(y,x)

CVprocess <- np.cv(data = data, h.seq = NULL, num.h = 50, w = NULL, num.ln = 1, 
                   ln.0 = 1, step.ln = 1, estimator = "NW", kernel = "gaussian")

CVprocess$h.opt[2,1]; CVprocess$CV.opt

# Nadaraya-Watson regression function estimator
nw <- function(x, X, Y, h, K = dnorm) {
  
  # arguments
  # x: evaluation points
  # X: vector (size n) with the predictors
  # Y: vector (size n) with the response variable
  # h: bandwidth
  # K: kernel
  
  # matrix of size n x length(x) (rbind() is called for ensuring a matrix
  # output if x is a scalar)
  Kx <- rbind(sapply(X, function(Xi) K((x - Xi) / h) / h))
  
  # weights
  W <- Kx / rowSums(Kx) 
  
  # means at x ("drop" to drop the matrix attributes)
  drop(W %*% Y)
  
}

x_grid <- seq(-10, 20, l = 500)
plot(data[,2], data[,1],xlab="log(GDP)",ylab="log(CO2)",main="Spain",
     font.main=2,lwd=2,cex.lab=1.5, cex.axis=1.5)
lines(x_grid, nw(x = x_grid, X = data[,2], Y = data[,1], 
                 h = CVprocess$h.opt$matrix.0..2..num.ln.[2]), 
      col = "black", lwd=2, lty=4)
lines(ghat$lnx,ghat$g_linear_SPA,lwd=2,col="black",lty=1)
legend("bottomright", legend=c("N-W", "Null"), col = c("black","black"),lty = c(4,1))

##///////////////////////////
## United Kingdom
DATA <- read.table("/Users/sepidehmosaferi/Desktop/code_non-parametric-stat/UK.txt",header = TRUE)
x <- log(DATA$GDP)
y <- log(DATA$SO2)
cor(x,y)
ghat <- read.table("/Users/sepidehmosaferi/Desktop/code_non-parametric-stat/ghat_UK.txt",header = TRUE)
artfima(x,arimaOrder=c(0,0,0),likAlg="Whittle")

# cross-validation
data <- cbind(y,x)

CVprocess <- np.cv(data = data, h.seq = NULL, num.h = 50, w = NULL, num.ln = 1, 
                   ln.0 = 1, step.ln = 1, estimator = "NW", kernel = "gaussian")

CVprocess$h.opt[2,1]; CVprocess$CV.opt

x_grid <- seq(-10, 20, l = 500)
plot(data[,2], data[,1],xlab="log(GDP)",ylab="log(SO2)",main="United Kingdom",
     font.main=2,lwd=2,cex.lab=1.5, cex.axis=1.5)
lines(x_grid, nw(x = x_grid, X = data[,2], Y = data[,1], 
                 h = CVprocess$h.opt$matrix.0..2..num.ln.[2]), 
      col = "black", lwd=2, lty=4)
lines(ghat$lnx,ghat$g_linear_UK,lwd=3,col="black",lty=1)
lines(ghat$lnx,ghat$g_quadratic_UK,lwd=2,col="black",lty=2)
legend("bottomleft", legend=c("N-W", "Null 1", "Null 2"), col = c("black","black","black"),lty = c(4,1,2))





