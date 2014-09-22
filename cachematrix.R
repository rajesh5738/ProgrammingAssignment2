
## Creates list containing functions to:
## Set the matrix value
## Get the matrix value
##set the inverse of the matrix
##get the inverse of the matrix

## method to creat matrix which will be cached
makeCacheMatrix <- function( mat = matrix() ) {
  ## stores the value of inverse matrix
  inverse <- NULL
  ##set matrix to store matrix value
  setMat <- function( matrix ) {
    mat <<- matrix 
    inverse <<- NULL }
  ##get matrix
  getMat <- function() { mat }
  ##sets the inverse matrix
  setInverse <- function(inV) { inverse <<- inV }
  ## gets inverse matrix
  getInverse <- function() { inverse }
  list(setMat = setMat, getMat = getMat, setInverse = setInverse, getInverse = getInverse) 
}

##Create cached invers function
## Checks for cached value and if null returns inverse of matrix
## and caches value for future use

cacheSolve <- function(x, ...) { 
  ##get inverse matrix
  inverse <- x$getInverse()
  ##check if inverse is null or not
  if( !is.null(inverse) ) { message("getting cached data") 
                            return(inverse) }
  ## get the matrix 
  newMat <- x$getMat()
  ##calculate inverse
  inverse <- solve(newMat)
  ##set inverse matrix
  x$setInverse(inverse)
  inverse
}
