test_that("When wrong augment is put in scale_colour_YlGrBl_d(), if there's an error occurs", {
  expect_error(scale_colour_YlGrBl_d(color = "blue"))
})


test_that("When wrong augment is put in scale_fill_YlGrBl_d(), if there's an error occurs", {
  expect_error(scale_fill_YlGrBl_d(color = "blue"))
})
