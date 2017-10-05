## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
  invert <- NULL
  set <- function(x) {
    m <<- x
    invert <<- NULL
  }
  get <- function() m
  setInvert <- function(inv) invert <<- inv
  getInvert <- function() invert
  list(set = set, get = get,
       setInvert = setInvert,
       getInvert = getInvert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invert = x$getInvert()
  if (is.null(invert)) {
    matrix = x$get()
    invert = solve(matrix)
    x$setInvert(invert)
    print('not calculated')
  }
  invert
}

