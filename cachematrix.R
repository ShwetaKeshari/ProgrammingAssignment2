## Put comments here that give an overall description of what your
## functions do.

##The Function I created a list of function set the value of the vector
#get the input matrix
#set the inverse of matrix
#get the inverse of matrix. It also uses  <<- assignment operator which can be used to assign a value to an object in an environment that is different from the current environment.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL  #initialized m to null
        }
        get <- function() x # returns the input matrix

        setinv <- function(solve) m <<- solve # set the inversed matrix

        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv) # return a list that contains these functions, so that we can use

}





## Write a short comment describing this function

    

cacheSolve <- function(x, ...) {  # Return a matrix that is the inverse of 'x
        m <- x$getinv()
        if(!is.null(m)) { # checks if inverse matrix is already there or not.
                message("getting cached data")
                return(m)# if inverse matrix is there, return the calculated inverse

        }
        data <- x$get() # if not, x$get  gets the matrix object.
        m <- solve(data, ...) solve(X) returns its inverse.
        x$setinv(m)
        m # gives the result.
}
  