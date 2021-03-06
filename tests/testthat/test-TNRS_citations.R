context("tnrs citations")


test_that("example works", {
  
  #skip_if_offline(host = "r-project.org")

  
  vcr::use_cassette("gnrs_citations",
                    { citation_info <- TNRS_citations(url = url)})

  
  #test below assume a data dictionary and will be skipped if one isn't returned
  skip_if_not(class(citation_info) == "data.frame")
  expect_gt(object = nrow(citation_info), expected = 2)
  
})
