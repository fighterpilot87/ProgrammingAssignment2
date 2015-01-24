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
  getinverse <- function() m ## get the value of the inverse
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ##list functions

}


## Calculates the inverse of the matrix created by "makeCacheMatrix()"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("Acquiring cached inverse") 
    ## when inverse is the same as cached matrix inverse, takes value from cache
    return (m)
  }
  ## when inverse has not been found / is different from cache
  ## gets it using get() from makeCacheVector function
  data <- x$get()  
  
  m <- solve(data, ...) ## Solve for inverse
  x$setinverse(m) ## store inverse in cache
  m  ## return inverse

}
