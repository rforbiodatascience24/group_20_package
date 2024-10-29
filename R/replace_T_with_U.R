#' Replace T with U (Transcription)
#'
#' @param DNA_seq String that represents DNA sequence
#'
#' @return Return string that represents RNA sequence
#' @export
#'
#'
make_RNA_seq <- function(DNA_seq){
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}
