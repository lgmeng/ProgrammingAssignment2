## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL                 # to store inverse result
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setI <- function(inverse) i <<- inverse
	getI <- function() i
	list(set = set, get = get,
		setI = setI,
		getI = getI)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getI()
	if(!is.null(i)) {
		message("get cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setI(i)
	i
}

