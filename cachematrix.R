## Programming Assignment2
## This code caches the Inverse of a Matrix, assuming that the Matrix supplied is invertible 

## Step 1: The Cache of the Matrix is created 

makeCacheMatrix <- function(x = matrix()) {
  
  # Step 2: Initialize matrix
  mat <- x
  
  # Step 3: initialize cahced inverse
  cached_inverse <- NULL
  
  # Step 4: Function to set the matrix and reset the cached inverse
  set <- function(y) {
    mat <<- y
    cached_inverse <<- NULL
  }
  
  # Step 5: Function to calculate and cache the inverse of the matrix
  cacheSolve <- function() {
    if (!is.null(cached_inverse)) {
      message("Getting cached inverse")
      return(cached_inverse)
    } else {
      message("Calculating and caching the inverse")
      cached_inverse <- solve(mat)
      return(cached_inverse)
    }
  }
  
  # Step 6: Return a list of functions
  list(set = set, get = get, cacheSolve = cacheSolve)
}

## Step7: Function to compute the inverse of the special "matrix" and retrieve from cache if already calculated
cacheSolve <- function(x, ...) {
  x$cacheSolve()
}
