# Tests for function avg_daily_return

df = data.frame('Date'=c('2022-01-15', '2022-01-16', '2022-01-17', '2022-01-18'),
                'Price'=c(1.5, 2.5, 3.5, 4.5))

test_that("avg_daily_return outputs the correct value", {
  expect_equal(avg_daily_return(df$Price), 1)
})

test_that("avg_daily_return raises error for the wrong input type", {
  expect_error(avg_daily_return("Price"), "Input must be double")
})

test_that("the output of avg_daily_return is in correct type", {
  expect_is(avg_daily_return(df$Price), 'numeric')
})

