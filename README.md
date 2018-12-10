# peek

`peek` is a tiny R package with just two functions — `pview()` and `pprint()` — which are for viewing the state of a chain of piped commands without otherwise altering the chain's behavior. I use it to help myself debug and refactor my tidyverse code.

## Installation

``` r
devtools::install_github("davidklaing/peek")
```

## Example

Say you've written a long chain of piped commands, like the one below:

``` r
library(dplyr)

mtcars %>% 
  filter(carb != 8) %>% 
  select(carb, mpg, cyl, hp, drat) %>% 
  group_by(carb) %>% 
  summarise(min_mpg = min(mpg)) %>%
  mutate(min_mpg_100 = min_mpg*100)
```

To invoke RStudio's data viewer and see what's being passed from `summarise()` to `mutate()` without changing anything about your chain's behavior, insert `pview() %>%` after the call to `summarise()`, like so:

``` r
library(peek)

mtcars %>% 
  filter(carb != 8) %>% 
  select(carb, mpg, cyl, hp, drat) %>% 
  group_by(carb) %>% 
  summarise(min_mpg = min(mpg)) %>%
  pview() %>%
  mutate(min_mpg_100 = min_mpg*100)
```

If you would rather `print()` the object than `View()` it, use `pprint()`.
