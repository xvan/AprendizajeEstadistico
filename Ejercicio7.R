library("PerformanceAnalytics")
datos<-read.table("cemento.txt",header=TRUE, row.names = 1)


X<-data.matrix(datos)

n <- nrow(X)
C <- diag(n) - matrix(1/n, n, n)
Xc <- C %*% X
S <- t(Xc) %*% Xc / (n-1)

%S[1:3,1:6]

chart.Correlation(datos, histogram=FALSE, pch=19)
cor(datos)