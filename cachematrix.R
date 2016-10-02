###makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
 
## Elements are put in row-wise order as independent vectors

Code used:

makeCacheMatrix <- function(x1=numeric,...){
X<- rbind(x1,...)
return(X)
}

###Testing:
>makeCacheMatrix(c(1,2),c(2,3))

     [,1] [,2]
x1    1    2
        2    3

###cacheSolve: This function computes the inverse of the special "matrix"

Code used: cacheSolve<- function(t){
solve(t)
}

###Testing:
>t<-makeCacheMatrix(c(1,2),c(2,3))
>cacheSolve(t)
       x1   
[1,] -3  2
[2,]  2 -1
