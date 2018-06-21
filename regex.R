library(stringr)
library(magrittr)

library(tidyverse)

x <- "1888 is the longest year in Roman numerals: MDCCCLXXXVIII"

X %>% filter(grepl("CC", x))

str_view(x, "CC?")

x <- "Hi there.what's your name?"

gsub('\\.(?=[[:alpha:]])', '. ', perl = TRUE, x)

gsub('(?<=there)\\.', '. ', perl = TRUE, x)

# Split 
strsplit(x, '(?<=there)\\.', perl = TRUE)



# Look ahead
str_view(x, '\\.(?=[[:alpha:]])')

# Look behind
str_view(x, '(?<=[[:alpha:]])\\.')

# Look between
str_view(x, '(?<=[[:alpha:]])\\.(?=[[:alpha:]])')

grep('\\.(?=[[:alpha:]])', x, perl = TRUE, value = TRUE)

str_extract_all(x, '\\.(?=[[:alpha:]])')

gsub('\\.(?=[[:alpha:]])', ' ', perl = TRUE, x)
gsub('\\.(?=[[:alpha:]])', '. ', perl = TRUE, x)
gsub('\\.(?=\\w)', ' ', perl = TRUE, x)
gsub('\\.([^\\w])', ' ', perl = TRUE, x)
gsub('\\.[^\\w]', ' ', perl = TRUE, x)


stringsim('MARTHA','MATHRA',method='jw', p=0.2)

stringsim('MARTHA','HELLO MARTHA',method='jw', p=0.1)

stringdist("ABC","abc")


x <- "I will not buy this record, it is scratched"
y <- "My hovercraft is full of eels"
z <- c("this", "is", "a", "dead","parrot")
qgrams(A = x, B = y, C = z,q=7)

x <- c('hello', 'world', 'world')
sapply(x,qgrams, q=5)

# ------------

x <- "Completion Date: 2014 Square Footage: 340,000 LEED Core + Shell Gold Certification"
strsplit(x, '(?<=Completion Date:)|(?<=\\d\\d\\d\\d)|(?<=LEED)|(?<=Square Footage:)|(?<=\\d\\d\\d\\s)', perl = TRUE)
