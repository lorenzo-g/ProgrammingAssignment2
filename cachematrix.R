# lorenzo-g here, glad to meet you!
# this one was for week2 assignment from rprog002

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  # an empty variable created, ready to be filled.
  
  set <- function(matrix2) {
    x <<- matrix2
    inverse <<- NULL
  }
  # set (or re-set) inverse to "NULL"
  
  get <- function() {
    print(x)
  }
  # just asking, what did I say for X? ; )
  
  makeinverse <- function(x) {
    inverse <<- solve(x)
  }
  # makes the operation requested on the matrix
  
  getinverse <- function() {
    print(inverse)
  }
  # prints the inverse matrix
  
  list(set = set,
       get = get,
       setinverse = setinverse,
       makeinverse = makeinverse)
  
}

cacheSolve <- function(x, ...) {
  
  if (x$getinverse != NULL) {
    #if inverse is not empty
    inverse <- x$makeinverse
    #uses the makeinverse function from above
  }
  # else... nothing happens!
  print (inverse)
}
