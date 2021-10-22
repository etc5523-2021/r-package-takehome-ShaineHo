test_that("When n > 5, if there's a warning pop up.", {
  expect_warning(YlGrBl_pal()(n =6))
})
