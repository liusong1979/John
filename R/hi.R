#'Help statrt conversions
#' 
#'This function is for greeting in different ways
#' 
#'@param who character(1) The name of the person to greet at 
#'  
#'@return a line of the text to be used for starting the conversion
#'  
#'@examples 
#'    hi("Song Liu")
#'  
#'@export

hi <- function(who){
  
  paste("Hello", who, ", your name is", who, "!")
}