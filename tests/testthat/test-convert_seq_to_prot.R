test_that("Conversion works", {
  expect_equal(convert_seq_to_prot(c("UUU", "UCU")), "FS")
})
