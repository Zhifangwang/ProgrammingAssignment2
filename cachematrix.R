## Below are two functions that can creat a special object that can 
## caches the inverse of a matrix

## this function creats a "matrix" to cache both the imput matrix and 
## the inverse of imput matrix

makeCacheMatrix <- function(x = matrix()) {
        inverse <- solve(x)
        originmatrix <- x
        list(originmatrix = originmatrix,
                inverse = inverse)
}


##this function calculates the inverse of imput matrix

cacheSolve <- function(x, ...) {
        m <- x$inverse
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        ## Return a matrix that is the inverse of 'x'
        return(solve(x$originmatrix))
}
