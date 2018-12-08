# peek

`peek` is a tiny R package with just one function — `peek()` — which is for viewing the state of a chain of piped commands without otherwise altering the chain's behavior.

## Installation

``` r
devtools::install_github("davidklaing/peek")
```

## Example

Say you've written a long chain of piped commands, like the one below:

``` r
library(tidyverse)

mtcars %>% 
  filter(carb != 8) %>% 
  select(carb, mpg, cyl, hp, drat) %>% 
  group_by(carb) %>% 
  summarise(min_mpg = min(mpg)) %>%
  mutate(min_mpg_100 = min_mpg*100)
```

To invoke Rstudio's data viewer and see what's being passed from `summarise()` to `mutate()` without changing anything about your chain's behavior, insert `pview() %>%` after `summarise()`, like so:

``` r
library(peek)

mtcars %>% 
  filter(carb != 8) %>% 
  select(carb, mpg, cyl, hp, drat) %>% 
  group_by(carb) %>% 
  summarise(min_mpg = min(mpg)) %>%
  peek() %>%
  mutate(min_mpg_100 = min_mpg*100)
```

By default, `peek()` will call RStudio's `View()` function, which opens a new window and allows you to explore the object.

If you would rather `print()` the object than `View()` it, use `pprint()`.
