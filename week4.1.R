x<-matrix(1:12,nrow=3)
y<-max(x)
f<-min(x)
z<-which(x==y,arr.ind=TRUE)
z
k<-which(x==f,arr.ind=TRUE)
k