makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {   ## set the input x as a matrix
  s <- NULL##  set   "s" as a null
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve##  "mean" to "solve"
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}        getmean = getmean)
}

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
inv <- x$getinv()
if(!is.null(inv)) {
message("getting cached result")
return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv
}
}