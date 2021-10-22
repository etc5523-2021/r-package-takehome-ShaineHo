test_that("If the error occurs when the color input is not in the list", {
  expect_error(scale_colour_YlGrBl_seq_c(color ='red'))
})
