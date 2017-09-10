## ----echo=FALSE----------------------------------------------------------
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(knitr))
knitr::opts_chunk$set(
    warning=TRUE
  , error=TRUE
  , echo=TRUE
  , message=FALSE
  , fig.height = 4.5
  , fig.pos="t"
  , collapse = TRUE
)
knitr::opts_knit$set(root.dir = normalizePath('../'))

## ----eval=FALSE----------------------------------------------------------
## some_var <- sqrt(pi) + 5
## some_function <- function(x) {
##   sqrt(x) + 5
## }
## some_function(pi)

## ------------------------------------------------------------------------
layer <- function(loss, attachment, limit, share){
  pmin(limit, pmax(0, loss - attachment))
}

## ------------------------------------------------------------------------
formals(layer)

## ------------------------------------------------------------------------
myFunc <- function(mojo, monkey, banana){
  print(match.call())
}

myFunc(mojo = 1, mo = 2, 3)
myFunc(mo = 2, mojo = 1, 3)
myFunc(mo = 1, mo = 2, 3)
myFunc(1, 2, 3)

## ------------------------------------------------------------------------
myFunc <- function(a, b = 15){
  a + b
}
myFunc(3)

## ------------------------------------------------------------------------
myFunc <- function(mojo, monkey, banana){
  if (missing(banana)) {
    warning("I can't think without bananas")
    banana = monkey + 5
  }
}
myFunc(1, 2, 3)
myFunc(1, 2)

## ------------------------------------------------------------------------
myFunc <- function(mojo, monkey, banana = 3){
  if (missing(banana)) {
    warning("I can't think without bananas")
    print(banana)
  }
}
myFunc(1, 2, 3)
myFunc(1, 2)

## ------------------------------------------------------------------------
myFunc <- function(x, dist = c("lognormal", "gamma")){
  dist = match.arg(dist)
  print(dist)
}
myFunc(1:10, "lo")
myFunc(1:10, "jo")

myOtherFunc <- function(x, dist = c("lognormal", "gamma")){
  print(dist)
}
myOtherFunc(1:10, "lo")
myOtherFunc(1:10, "jo")

## ---- echo=TRUE----------------------------------------------------------
dfData <- data.frame(PolicyYear = 2001:2010, Premium = rnorm(10))
myPlotFunc <- function(dfData, ...){
  plot(dfData$PolicyYear, dfData$Premium, ...)
}

## ----eval=FALSE----------------------------------------------------------
## myPlotFunc(dfData, pch=18)
## myPlotFunc(dfData, pch=23)

## ------------------------------------------------------------------------
formals(myPlotFunc)

## ------------------------------------------------------------------------
myFunc <- function(x){
  if (is.na(x)) return("Value missing")
  
  sum(x)
}

## ------------------------------------------------------------------------
lstMeans <- list(arithmetic = mean, median = median)
nums <- 1:10
lstMeans[['arithmetic']](nums)
which_mean <- 'median'
lstMeans[[which_mean]](nums)
lapply(lstMeans, function(x) x(nums))

## ------------------------------------------------------------------------
my_rnorm <- function(mean, sd){
  function(N){
    rnorm(N, mean, sd)
  }
}
an_rnorm <- my_rnorm(mean = 10, sd = 3)

## ------------------------------------------------------------------------
set.seed(1234)
my_norms <- an_rnorm(100)
set.seed(1234)
base_norms <- rnorm(100, 10, 3)
identical(my_norms, base_norms)

## ------------------------------------------------------------------------
an_rnorm <- my_rnorm(mean = 10, sd = 3)
another_rnorm <- my_rnorm(mean = -30, sd = 100)
ls(environment(an_rnorm))

func_data <- ls(environment(an_rnorm))
lapply(func_data, get, environment(an_rnorm))

as.list(environment(an_rnorm))
as.list(environment(another_rnorm))

## ----eval=FALSE----------------------------------------------------------
## LognormalParams(10e3, 3.0)
## LognormalParams(c(10e3, 20e3), 3.0)
## LognormalParams(c(10e3, 20e3), "three")
## LognormalParams(10e3)
## LognormalParams(CV = 4, 10e3)

## ------------------------------------------------------------------------
LognormalParams <- function(mean, CV){
  
}

## ------------------------------------------------------------------------
`mojo<-` <- function(x, value){
  x <- x + value
} 
gonzo <- 1:10
gonzo
mojo(gonzo) <- 5
gonzo

## ------------------------------------------------------------------------
`mojo<-` <- function(x, position, value){
  x[position] <- x[position] + value
  x
} 
gonzo <- rep(1, 10)
gonzo
mojo(gonzo, 2) <- 5
gonzo
mojo(gonzo, 2:3) <- 5
gonzo

## ------------------------------------------------------------------------
`%l^%` <- function(a, b){
  log(sqrt(a +b))
}
5 %l^% 3
log(sqrt(5+3))

## ------------------------------------------------------------------------
my_str <- "1 + 1"
my_expr <- parse(text = my_str)
my_expr
class(my_expr)

## ------------------------------------------------------------------------
my_other_str <- deparse(my_expr, width = 500)
my_other_str

my_other_str <- as.character(my_expr)
my_other_str
as.character(attr(my_expr, "wholeSrcref"))
my_other_str

## ------------------------------------------------------------------------
eval(parse(text = my_expr))
my_expr <- "1 + 2"
eval(parse(text = my_expr))

