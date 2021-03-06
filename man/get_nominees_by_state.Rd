% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_nominees_by_state.R
\name{get_nominees_by_state}
\alias{get_nominees_by_state}
\title{Get Nominees by State}
\usage{
get_nominees_by_state(congress, state, myAPI_Key)
}
\arguments{
\item{congress}{107-115}

\item{state}{Two-letter state abbreviation}

\item{myAPI_Key}{use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.}
}
\value{
List of returned JSON from endpoint that retrieves
}
\description{
To get a list of presidential civilian nominations of individuals from a specific state, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/nominees/state/{state}.json
}
\examples{
\dontrun{
get_nominees_by_state(115, 'VA')
}
}
