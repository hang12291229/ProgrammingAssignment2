## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inver <-NULL
  set <- function (y){
    x <<- y
    inver <<-NULL
  }
  get <- function() x
  #Now change to find the inverse, the inverse is computed through inverse<<-solve(matrix) 
  setInverse <-function() inver<<-solve(x)
  getInverse <-function() inver
  list(set=set, get=get,
    setInverse = setInverse, 
    getInverse = getInverse)      
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inver<- x$getInverse( )
## If the inverse of the matrix (inver) is not empty --then return inver
  if(!is.null (inver)) {
    message("getting cached data")
    return(inver)
  }
## Get the function of x and do the inverse 
  data <- x$get ()
  inver <- solve (data, ....)
  x$setInverse(inver)
  inver  
}

##Looking forward to your comment!
