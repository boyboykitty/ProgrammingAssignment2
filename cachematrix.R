## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
elc <- NULL
set <- function(y) {
x <<- y
elc <<- NULL
}
get <- function() x
setreverse<- function(reverse) elc <<-reverse
getreverse <- function() elc
list(set = set, get = get,
setreverse = setreverse,
getreverse = getreverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
elc <- x$getreverse()
if (!is.null(elc)) {
message("getting cached reververse matrix")
return(elc)
} else {
elc <- solve(x$get())
x$setreverse(elc)
return(elc)
        
}
