apply(matrix(1:9,nrow=3),MARGIN=2,FUN=sum)
lapply(list(a=1:3,b=4:6,c=7:9),FUN=sum)
sapply(list(a=1:3,b=4:6,c=7:9),FUN=sum)
vapply(list(a=1:3,b=4:6,c=7:9),FUN=sum,FUN.VALUE=numeric(1))
mapply(function(x,y)x+y,1:3,4:6)

firstList<-list(A=matrix(1:16,4), B=matrix(1:16,2),C=1:5)
secondList<-list(A=matrix(1:16,4),B=matrix(1:16,2),C=15:1)
# test element by element if they are identical
mapply(identical, firstList,secondList)

theMatrix<- matrix(1:9,nrow=3)
# sum of the rows
apply(theMatrix,1,sum)
# sum the columns
apply(theMatrix,2,sum)

theList<- list(A= matrix(1:9, 3), B=1:5, C=matrix(1:4, 2), D=2)
lapply(theList, sum)
sapply(theList,sum)

## build two lists
firstList<-list(A=matrix(1:16,4), B=matrix(1:16,2),C=1:5)
secondList<-list(A=matrix(1:16,4),B=matrix(1:16,2),C=15:1)
# test element by element if they are identical
mapply(identical, firstList,secondList)
## build a simple function that adds the number of rows (or
## length) of each corresponding element
simpleFunc<-function(x,y)
{
  NROW(x)+NROW(y)
}
mapply(simpleFunc,firstList,secondList)