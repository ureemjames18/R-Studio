## Put comments here that give an overall description of what your
## functions do

## This first functiion starts with its input as a matrix, in which it sets the value of the matrix,
## you can get the value of the matrix, and be able to set and get the value of the solved/inverse of the
## matrix.
makeCacheMatrix <- function(x = matrix()) {
  j < - NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) j <<- solve
  getsolve <- function() j
  list( set = set, get = get, setsolve = setsolve, getsolve, getsolve)

}


## This function acts in coinjunction with the first function. This function calculates the inverse
## of the matrix created in the first function above, but checks to see if the matrix has already been
## solved for; if it has, it retains the prior value, and skips the computation.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getsolve()
  if(!is.null(j)){message("getting cached matrix")
    return(j)}
  data <- x$get()
  j <- solve(data,...)
  x$setsolve(j)
  j
}
