% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_electronic_filing_form_types.R
\name{get_electronic_filing_form_types}
\alias{get_electronic_filing_form_types}
\title{Get Electronic Filing Form Types}
\usage{
get_electronic_filing_form_types(cycle = 2018, myAPI_Key)
}
\arguments{
\item{cycle}{The election cycle}

\item{myAPI_Key}{use the Campaign Finance API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.}
}
\value{
List of returned JSON from endpoint that retrieves a list of available form types for FEC electronic filings.
}
\description{
HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/filings/types
}
\examples{
\dontrun{
get_electronic_filing_form_types(2016)
}
}
