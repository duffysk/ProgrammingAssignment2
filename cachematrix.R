makeCacheMatrix <- function(mtx = matrix()) {

    ## Initialize inverse
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

        ## Return the inverse

        inv
    }

    ## Return a list of the defined methods
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



cacheSolve <- function(x, ...) {

    ## Return the inverse matrix
    mtx <- x$getInverse()

    ## Return the inverse if it was created
    if(!is.null(mtx)) {

        ## Returns message about cached data
        message("Getting cached data...")
        return(mtx)

    }

    ## Get the matrix
    data <- x$get()

    ## Calculate the inverse matrix
    mtx <- solve(data) %*% data

    ## Set the inverse
    x$setInverse(mtx)

    ## Return matrix
    mtx

}
