#'Help statrt conversions
#'
#'This function is for greeting in different ways
#'
#'@param who character(1) The name of the person to greet at
#'
#'@param how character(1) The name of the person to convert
#'
#'@return a line of the text to be used for starting the conversion
#'
#'@examples
#'    hi("Song Liu")
#'
#'@export



hi <- function(who, how=c("shout", "whisper")){
  stopifnot(
    is.character(who),
    length(who)==1,
    !is.na(who)
  )
  how = match.arg(how)
  fun = switch (how,
    shout = shout,
    whisper = whisper
  )
  paste("Hello, ", who, "Your name is", fun(who), "!")
}

shout <- function(who){
  toupper(who)
}

whisper <- function(who){
  tolower(who)
}
