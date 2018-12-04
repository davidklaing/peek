context("Test the peek function.")

test_that(
  "peek() correctly invokes a spreadsheet style data viewer on a matrix-like R
  object and then returns that object.",
  {
    test_dataframe <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))
    # expect_equal(peek(test_dataframe), test_dataframe)
    expect_equal(
      peek(test_dataframe, view = FALSE, print = FALSE),
      test_dataframe
    )
    expect_equal(
      peek(test_dataframe, view = FALSE, print = TRUE),
      test_dataframe
    )
    # expect_equal(
    #   peek(test_dataframe, view = TRUE, print = TRUE),
    #   test_dataframe
    # )
  }
)
