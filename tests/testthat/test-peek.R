context("Test the peek function.")

# test_that(
#   "pview() correctly calls `View()` on an R object and then returns it.",
#   {
#     test_dataframe <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))
#     expect_equal(
#       pview(test_dataframe),
#       {View(test_dataframe); test_dataframe}
#     )
#   }
# )

test_that(
  "pprint() correctly prints an R object and then returns it.",
  {
    test_dataframe <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))
    expect_equal(
      pprint(test_dataframe),
      {print(test_dataframe); test_dataframe}
    )
  }
)
