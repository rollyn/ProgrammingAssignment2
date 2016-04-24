## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## make the inverse of the matrix available in the cache
makeCacheMatrix <- function(x = matrix()) {
        
        cache <- NULL
        set <- function(y) {
           x <<- y
           cache <<- NULL
        }
        get <- function() {
           x
        }
        setinv <- function(y) {
           cache  <<- y
        }
        getinv <- function() {
           cache
        }
        list(set = set,
             get = get,
             setinv = setinv,
             getinv = getinv)
}

## Write a short comment describing this function
## cacheSolve calcluates the inverse of the matrix
## inverse stored in cache
cacheSolve <- function(x, ...) {
      
        cache <- x$getinv()

        if (!is.null(cache)) {
             message("retrieved cached data")
             return(cache)
        }
        data <- x$get()
        cache <- solve(data)
        x$setinv(inv)
        cache
}
