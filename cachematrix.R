
## First I assign a function to set and get the value for inverse the matrix
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    ## set the value
    set <- function(y){
        x <<- y
        inv <- NULL
    }
    ## get the value
    get <- function() x
    ## set the inverse
    setinv <- function(inverse) inv <<- inv
    ## get the inverse
    getinv <- function() inv
    ## call them by names 
    list(set = set, get = get, setinv = setinv, getinv = getinv)

}

## Then caching the inverse of the matrix 
cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)){
        message("getting cached data")
        ruturn(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
