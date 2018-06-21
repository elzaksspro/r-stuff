library(dplyr)
library(tidyr)
library(purrr)

library(tidyverse)

# Create some basic data.
df <- tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)

map_dbl(df, mean)



# Multiple arguments...

mu <- list(5, 10, -3)
sigma <- list(1, 5, 10)

map2(mu, sigma, rnorm, n = 5) %>% str()


n <- list(1, 3, 5)
args1 <- list(n, mu, sigma)

args1 %>%
  pmap(rnorm)


args2 <- list(mean = mu, sd = sigma, n = n)
args2 %>% 
  pmap(rnorm) %>% 
  str()

args2 %>% 
  pmap(rnorm)


# Test

nick <- function(x, y) {
 viau <- x / y
}

nick(1, 2)

var1 <- list(20, 40, 65)
var2 <- list(200, 150, 130)
args <- list(var1, var2)

map2(var1, var2, nick)

map2_df(var1, var2, nick)

map2_df(dat$var1, dat$var2, nick)

dat <- tibble(name = c("x", "y", "z"), var1 = c(20, 40, 65), var2 = c(200, 150, 130))

map2(dat, nick)

dat %>% map2(nick)

map_dbl(df, mean)

# Blog post
# https://amber.rbind.io/blog/2018/03/26/purrr_iterations/

# Define the values you'd like to loop over

# Example
myFunction <- function(arg1){
  col <- arg1 * 2
  x <- tibble(col = col)
}

values <- c(1, 3, 5, 7, 9)

# Use purrr::map_df
df <- map_dfr(values, myFunction)


myFunction <- function(arg1, arg2, arg3){
  col <- arg1 / arg2
  x <- tibble(name = arg3, col = col)
}

argList <- list(dat$var1, dat$var2, dat$name)

pmap_df(argList, myFunction)



mtcars %>% 
  split(.$cyl) %>% 
  map(function(df) lm(mpg ~ wt, data = df))

test <- mtcars %>% 
  group_by(cyl) %>% 
  nest() %>% 
  mutate(mod_obj   = map(data, ~lm(mpg ~ wt, data = .x)),
         summaries = map(mod_obj, broom::glance)) %>%
  select(cyl, summaries) %>% 
  unnest(summaries)


test %>% unnest()



mtcars %>% 
  split(.$cyl) %>% 
  map(~lm(mpg ~ wt, data = .)) %>% 
  map(~broom::glance(.)) %>% 
  reduce(bind_rows)