#' Create a random sequence
#'
#' @param seq_len Length of the random sequence
#'
#' @return Sequence randomly generated
#' @export
create_random_seq <- function(seq_len){
  seq <- sample(c("A", "T", "G", "C"), size = seq_len, replace = TRUE)
  seq <- paste0(seq, collapse = "")
  return(seq)
}
