## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mtx = matrix()) {

    ## Inverse
    inv <- NULL

    ## Set the matrix "method"
    set <- function(matrix) {

        mtx <<- matrix
        inv <<- NULL

    }

    ## Get the matrix "method"
    get <- function() {

        ## Return matrix
        mtx

    }

    ## Set the inverse matrix "method"
    setInverse <- function(inverse) {

        inv <<- inverse

    }

    ## Get the inverse matrix "method"
    getInverse <- function() {

        ## Return inverse

        inv
    }

    ## Return a list of the methods
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'


    ## Return inverse matrix
    mtx <- x$getInverse()

    ## Return the inverse if it wasal created
    if(!is.null(mtx)) {

        message("Getting cached data...")
        return(mtx)

    }

    ## Get matrix
    data <- x$get()

    ## Calculate the inverse matrix
    mtx <- solve(data) %*% data

    ## Set the inverse
    x$setInverse(mtx)

    ## Return matrix
    mtx

}
