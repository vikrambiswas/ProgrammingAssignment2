> makeCacheMatrix <- function(x = matrix()) {
        ## Creates a special matrix object that can cache its inverse
i <- NULL
set <- function( matrix ) {m <<- matrix
        ## A way to set the matrix
> makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function( matrix )
{
m <<- matrix
i <<- NULL
}
get <- function() {
        ## A way to get the matrix
m
}
setInverse <- function(inverse) {
        ## A way to set the inverse of the matrix
i <<- inverse
}
getInverse <- function() {
i
}
list(set = set, get = get,
     ## Returns a list of the methods
setInverse = setInverse,
getInverse = getInverse)
}
> cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Compute the inverse of the special matrix returned by "makeCacheMatrix above. 
        ## If the inverse has already been calculated (and the matrix has not
        ## changed), then the "cachesolve" should retrieve the inverse from the cache
m <- x$getInverse()
if( !is.null(m) ) {
        ## Just return the inverse if its already set
message("fetching cached data")
return(m)
}
data <- x$get()
        ## Get the matrix from our object
m <- solve(data) %*% data
        ## Calculate the inverse using matrix multiplication
x$setInverse(m)
        ## Set the inverse to the object
m
        ## Return the matrix
}
