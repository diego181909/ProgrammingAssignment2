## In this file i create the required functions in the activity of week two of the course "R Programming"

## This function crates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL    # initialize inv as NULL; will hold value of matrix inverse 
        set <- function(y) {
                x <<- y
                inver <<- NULL  # if there is a new matrix, reset inv to NULL
        }
        get <- function() x
        setinverse <- function(inverse) inver <<- inverse
        getinverse <- function() inver
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ## you need this in order to refer to the functions with the $ operator
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inver <- x$getinverse()
        if(!is.null(inver)){
                message("getting cached data")
                return(inver)
         ## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
        ]
         data <- x$get()
         inver <- solve(data, ...)
         x$setinverse(inver)    # The function cacheSolve will retrieve the inverse from the cache
         inver
}
