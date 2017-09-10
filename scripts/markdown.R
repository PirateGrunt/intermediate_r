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

## ----cache = F, echo = FALSE---------------------------------------------
knitr::knit_hooks$set(source = function(x, options){
  if (!is.null(options$verbatim) && options$verbatim){
    opts = gsub(",\\s*verbatim\\s*=\\s*TRUE\\s*", "", options$params.src)
    bef = sprintf('\n\n    ```{r %s}\n', opts, "\n")
    stringr::str_c(
      bef, 
      knitr:::indent_block(paste(x, collapse = '\n'), "    "), 
      "\n    ```\n"
    )
  } else {
    stringr::str_c("\n\n```", tolower(options$engine), "\n", 
      paste(x, collapse = '\n'), "\n```\n\n"
    )
  }
})

## ----echo = TRUE, verbatim = TRUE----------------------------------------
library(ggplot2)
library(ggplot2movies)
data(movies)
m <- ggplot(movies, aes(x = rating)) + geom_density()
m

## ----eval=FALSE, echo = TRUE, verbatin = TRUE----------------------------
## opts_knit$set(upload.fun = WrapWordpressUpload, base.url = NULL)
## 
## WrapWordpressUpload = function(file) {
##   result = RWordpress::uploadFile(file)
##   result$url
## }
## 
## options(WordPressLogin = c(PirateGrunt = "myPassword")
##         , WordPressURL = "http://PirateGrunt.wordpress.com/xmlrpc.php")
## 
## RWordpress::knit2wp("MyCoolPost.Rmd"
##                     , title = "Catchy title"
##                     , publish = FALSE
##                     , shortcode = TRUE
##                     , categories = c("R"))

## ------------------------------------------------------------------------
data(Master, package = "Lahman")
Master <- head(Master[, 1:5], 5)

## ----echo = TRUE, results = 'asis'---------------------------------------
library(xtable)
print(xtable(Master), type = 'html')

## ----echo=TRUE, results = 'asis'-----------------------------------------
knitr::kable(Master)

## ----results = 'asis', echo=TRUE-----------------------------------------
pander::pandoc.table(Master)

## ------------------------------------------------------------------------
DT::datatable(Master)

## ----eval=FALSE----------------------------------------------------------
## devtools::install_github("rstudio/rticles")
## devtools::install_github("jjallaire/revealjs")

