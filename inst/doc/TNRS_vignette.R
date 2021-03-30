## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(TNRS)

#First, we'll grab an example dataset containing two columns: row number and scientific name.
fulldata <- tnrs_testfile

head(fulldata,n = 20) 

#Note that there are a variety of formats represented here, sometimes including
  # scientific name only
  # genus only
  # family and genus
  # family, scientific name, and author

results <- TNRS(taxonomic_names = fulldata)

# Inspect the results
head(results, 10)

# The output includes information on the name submitted, the match score (how close the match is), the name matched, the status of the matched name, and the accepted name.


## -----------------------------------------------------------------------------

metadata <- TNRS_metadata()

#If you want to see the TNRS version information (e.g. to report in an manuscript):

metadata$version

#To see the sources that are used by the TNRS:

metadata$sources

#To get the citation information to paste into a reference manager (e.g. paperpile, zotero):

 # writeLines(text = metadata$citations$citation)



