---
title: "R Regex"
author: "Nicholas Viau"
date: "July 18, 2017"
output:
  html_document:
    css: alone.css
    toc: TRUE
    self_contained: no
    keep_md: yes
---





# Regular Expressions

Regular expressions are powerful tools for feature generation in datasets that have textual information.

Use `str_view` and `str_view_all` to explore regular expressions. These functions take a character vector and a regular expression and show you how they match.


## Meta Characters

If you need to search a string for any of these characters, you can use the option `fixed=TRUE`.

`grepl("^", gender, fixed = TRUE)`

## Anchors

Regular expressions will match any part of the string. You may want to anchor the regular expression so that it will match from the start or end of the string.

* `^` matches the start of the string.
* `$` matches the end of the string.

Thus, using the caret (`^`) and the dollar sign (`$`), we will match only an entire string.

If you set `multiline = TRUE` you can use `^` and `$` to match the start and end of each line, rather than the start and end of the complete string.

## Alternative Patterns

You can use alternation to pick between one or more alternative patterns. For example, `abc|d..f` will match either "abc" or "deaf". 

If this gets confusing, you can just use paratheses to make it clear what you want:


```r
str_view(c("grey", "gray"), "gr(e|a)y")
```

<!--html_preserve--><div id="htmlwidget-9848ed0939176d1bda41" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-9848ed0939176d1bda41">{"x":{"html":"<ul>\n  <li><span class='match'>grey<\/span><\/li>\n  <li><span class='match'>gray<\/span><\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

Sources:

* http://r4ds.had.co.nz/strings.html#character-classes-and-alternatives

## Looking Back and Ahead

One problem you are likely to encounter when working with text are spacing mistakes between words and punctuation. This is a problem because it may prevent tokenizing of relevant terms. For instance "Hi there.What is your name?" would result in the word "there.what". The following regex finds a period between letters but does actually select the letter themselves.


```r
x <- "Hi there.What's your name?"

# Look ahead
str_view(x, '\\.(?=[[:alpha:]])')
```

<!--html_preserve--><div id="htmlwidget-6d3d151e116a8215e0b2" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-6d3d151e116a8215e0b2">{"x":{"html":"<ul>\n  <li>Hi there<span class='match'>.<\/span>What's your name?<\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

```r
# Look behind
str_view(x, '(?<=[[:alpha:]])\\.')
```

<!--html_preserve--><div id="htmlwidget-ba42cc8c7b3eff7d143f" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-ba42cc8c7b3eff7d143f">{"x":{"html":"<ul>\n  <li>Hi there<span class='match'>.<\/span>What's your name?<\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

```r
# Look between
str_view(x, '(?<=[[:alpha:]])\\.(?=[[:alpha:]])')
```

<!--html_preserve--><div id="htmlwidget-64a89f3c487fe63db22e" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-64a89f3c487fe63db22e">{"x":{"html":"<ul>\n  <li>Hi there<span class='match'>.<\/span>What's your name?<\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

```r
# Find and replace...
gsub('\\.(?=[[:alpha:]])', '. ', perl = TRUE, x)
```

```
## [1] "Hi there. What's your name?"
```

### Between Two Elements


```r
url <- "https://github.com/felixhaass/aiddata/tree/master/R/"

str_replace(url, "https://github.com/.*[^ /.*/$]", "HELLO")
```

```
## [1] "HELLO/"
```

This comes in handy when we want to split a string based on certain values but keep them.


```r
# Split 
strsplit(x, '(?<=there)\\.', perl = TRUE)
```

```
## [[1]]
## [1] "Hi there"          "What's your name?"
```

Now consider this in the context of feature generation.



## Repetition


```r
x <- "1888 is the longest year in Roman numerals: MDCCCLXXXVIII"
str_view(x, "CC?")
```

<!--html_preserve--><div id="htmlwidget-a370c0667a7863f00259" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-a370c0667a7863f00259">{"x":{"html":"<ul>\n  <li>1888 is the longest year in Roman numerals: MD<span class='match'>CC<\/span>CLXXXVIII<\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

You can specify the number of matches precisely:

`{n}` exactly n
`{n,}` n or more
`{,m}` at most m
`{n,m}` between n and m


