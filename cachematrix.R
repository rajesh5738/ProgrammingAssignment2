## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function( mat = matrix() ) {
  inverse <- NULL
  setMat <- function( matrix ) {
    mat <<- matrix 
    inverse <<- NULL }
  getMat <- function() { mat }
  setInverse <- function(inV) { inverse <<- inV }
  getInverse <- function() { inverse }
  list(setMat = setMat, getMat = getMat, setInverse = setInverse, getInverse = getInverse) 
}
cacheSolve <- function(x, ...) { 
  inverse <- x$getInverse()
  if( !is.null(inverse) ) { message("getting cached data") 
                            return(inverse) }
  newMat <- x$getMat()
  inverse <- solve(newMat)
  x$setInverse(inverse)
  inverse
}


