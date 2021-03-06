% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_studies.R
\name{get_studies_all}
\alias{get_studies_all}
\title{Get all GWAS Catalog studies}
\usage{
get_studies_all(verbose = FALSE, warnings = TRUE, page_size = 20L)
}
\arguments{
\item{verbose}{Whether the function should be
verbose about the different queries or not.}

\item{warnings}{Whether to print warnings.}

\item{page_size}{An integer scalar indicating the
\href{https://www.ebi.ac.uk/gwas/rest/docs/api#_paging_resources}{page}
value to be used in the JSON requests, can be between \code{1} and
\code{1000}.}
}
\value{
A \linkS4class{studies} object.
}
\description{
Gets all studies. Beware this can take several minutes!
}
\keyword{internal}
