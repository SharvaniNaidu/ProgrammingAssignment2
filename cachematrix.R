## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # Internal state to store the matrix and its inverse
  matrizinversa <- NULL
  
  # Function to set the matrix value
  set <- function(y) {
    x <<- y  # Update the internal matrix
    matrizinversa <<- NULL  # Invalidate the cached inverse
  }
  
  # Function to get the matrix value
  get <- function() x
  
  # Function to set the cached inverse (for internal use)
  setInversa <- function(calculoinversa) {
    matrizinversa <<- calculoinversa
  }
  
  # Function to get the cached inverse
  getInversa <- function() matrizinversa
  
  # Return a list-based object encapsulating the functions
  list(set = set, get = get, setInversa = setInversa, getInversa = getInversa)
}
