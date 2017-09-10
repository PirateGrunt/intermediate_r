## ----echo=FALSE----------------------------------------------------------
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(knitr))
knitr::opts_chunk$set(
    warning=FALSE
  , error=FALSE
  , echo=FALSE
  , message=FALSE
  , fig.height = 4.5
  , fig.pos="t"
  , collapse = TRUE
)
knitr::opts_knit$set(root.dir = normalizePath('../'))

## ------------------------------------------------------------------------
tbl_roxygen <- tribble(
  ~Directive, ~`What It Does`
  , "@title", "Typically the name of your function"
  , "@description", "Short description of the function's purpose"
  , '@param', "One entry for each argument to the function"
  , '@details', "Longer description of the function"
  , '@return', "What value does it return?"
  , '@importFrom', "Does the function need functions from another package?"
  , '@include', "Does this function depend on other files in your package?"
  , '@export', "Should this function be exported?"
  , '@examples', "Examples of how to use your function"

)
tbl_roxygen %>% kable()

## ----eval=FALSE, echo=TRUE-----------------------------------------------
## devtools::use_testthat()
## devtools::use_test("my test")

## ----eval=FALSE----------------------------------------------------------
## context("lognormal")
## 
## test_that("Check inputs", {
##   expect_error(LognormalParams())
##   expect_error(LognormalParams(), "No mean was specified")
##   expect_error(LognormalParams(3), "No CV was specified")
## 
##   # and so on
## 
##   expect_silent(LognormalParams(5, 4))
## 
## })

## ----eval=FALSE----------------------------------------------------------
## my_likelihood <- CalcLikelihood(somedata, mean_range = c(50e3, 150e3), CV_range = c(0.3, 1.8))

