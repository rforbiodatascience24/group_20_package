test_that("make RNA seq works", {
  expect_equal(make_RNA_seq("ATGACCTGA"), "AUGACCUGA")
})
