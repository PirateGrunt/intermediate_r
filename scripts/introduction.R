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

## ----results='asis'------------------------------------------------------
tblAgenda = tribble(
  ~Start, ~End, ~What, ~`How Long`
  , "9:00", "9:15", "Introductions", "15 min"
  , "9:15", "10:15", "More fun with functions", "1 hour"
  , "10:15", "10:30", "Packages 1 - getting started", "15 min"
  , "10:30", "11:00", "AM break", "30 min"
  , "11:00", "12:30", "Packages 2 - here we go", "90 min"
  , "12:30", "1:30", "Lunch", "1 hour"
  , "1:30", "2:15", "Get started with git", "45 min"
  , "2:15", "3:00", "Markdown", "45 min"
  , "3:00", "3:30", "PM break", "30 min"
  , "3:30", "4:15", "Shiny", "45 min"
  , "4:15", "5:00", "Padding", "45 min"
)
tblAgenda %>% kable()

