#######################################################################################
#
# Objective : Define a function called 'cacheSolve' that creates a special 
#             'matrix' object that can cache its inverse.
#
#######################################################################################
cacheSolve <- function(x, ...)
{
   InverseMatrix <- x$getInverse()

   if (!is.null(InverseMatrix))
   {
      message("Getting cached data ... ")
      return(InverseMatrix)
   }

   data <- x$get()
   InverseMatrix <- solve(data)
   x$setInverse(InverseMatrix)

   InverseMatrix

}  # end of function cacheSolve
