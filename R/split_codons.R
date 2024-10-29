#' Split of a Sequence into Codons
#'
#' @param sequence A string representing a nucleotide sequence - e.g. DNA or RNA.
#' @param start An integer specifying the start position in the sequence - default is 1, meaning the function will start splitting from first position.
#'
#' @return Returns a vector of codons (length of 3) extracted from the sequence.
#' @export
#'
#' @examples
#' # Splitting a DNA sequence starting from the default first position
#' split_codons("ATGCGTACG")
#'
split_codons <- function(sequence, start = 1){
  seq_len <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_len, by = 3))
  return(codons)
}
