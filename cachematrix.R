## First I am going to create a matrix, set the value, get the value.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <- NULL
    }
    get <- function() x
    
    ## Then set the inverse value, and get the inverse value.
    setinv <- function(inverse) inv <<- inv
    getinv <- function() inv
    
    ## Call them by names.
    list(set = set, get = get, setinv = setinv, getinv = getinv)

}
## Next I am going to return the inverse value of a given matrix

cacheSolve <- function(x, ...) {
    inv <- x$getinv() 
    ## get something new
    if(!is.null(inv)){
        message("getting cached data")
        ruturn(inv)
    }
    
    ## store them on data vector
    data <- x$get()
    ## solve them
    inv <- solve(data, ...)
    ## set them
    x$setinv(inv)
    ## return them
    inv
}
