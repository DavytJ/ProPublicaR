% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validate_state.R
\name{validate_state}
\alias{validate_state}
\title{Validate that a abbreviaton is correct}
\usage{
validate_state(us_state)
}
\arguments{
\item{us_state}{}
}
\value{
TRUE if correct FALSE otherwise
}
\description{
Validate that a abbreviaton is correct
}
\examples{
validate_state("MI")#TRUE
validate_state("IM") #FALSE
}
