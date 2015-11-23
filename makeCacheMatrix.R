#######################################################################################
#
# Objective : Define a function called 'makeCacheMatrix' that creates a special 
#             'matrix' object that can cache its inverse.
#             It uses 
#             - the scoping rules of the R Programming language to cache 
#               the inverse of a matrix;
#             - the feature of being able to define a function within a function
#               gather the related functionality in one place.
#
#######################################################################################
makeCacheMatrix <- function(x = matrix())
{
   # just initialize the variable that holds the inverse of the input parameter 
   # to an empty matrix
   StoredInvertedMatrix <- NULL

   # function for setting the matrix value.
   set <- function(y)
   {
      # initialize the 'external' variable x using the operator '<<-'
      x <<- y
      StoredInvertedMatrix <<- NULL
   }  # end of set function

   # function for returning the value held
   get <- function() x

   # function of setting the variable that holds the inverse matrix.
   setInverse <- function(x) StoredInvertedMatrix <<- x

   # function of returning the variable that holds the inverse matrix.
   getInverse <- function() StoredInvertedMatrix 
   
   # lastly, to ensure that the above defined funtions are available when we 
   # assign makeCacheMatrix to an object, define the list of functions.
   # the list 
   list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
   
}  # end of function makeCacheMatrix
