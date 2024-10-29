#' Converting sequence to protein
#'
#' @param codons Sequence that you want to convert
#'
#' @return Amino Acids sequence
#' @export
convert_seq_to_prot <- function(codons){
  prot <- paste0(codon_table[codons], collapse = "")
  return(prot)
}
