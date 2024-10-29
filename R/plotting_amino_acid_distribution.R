#' Plotting amino acids distribution
#'
#' @param amino_acid_sequence Sequence of a protein
#'
#' @return Plot of amino acids distribution
#' @export
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
plotting_amino_acid_distribution <- function(amino_acid_sequence){
  unique_amino_acids <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_acids"]] <- rownames(counts)

  p <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acids, y = Counts, fill = Amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(p)
}
