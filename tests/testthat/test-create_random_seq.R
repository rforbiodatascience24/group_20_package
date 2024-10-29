test_that("sequence length is rigth", {
  expect_equal(nchar(create_random_seq(10)),10)
})
