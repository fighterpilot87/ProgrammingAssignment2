## Put comments here that give an overall description of what your
## functions do

## This function takes a matrix and creates the inverse



makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) { ## This function sets the value of the matrix
    x <<- y
    m <<- NULL
  }
  get <- function() x ## Then gets the value of the matrix
  setinverse <- function(solve) m <<- solve ## set the value of the inverse

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
