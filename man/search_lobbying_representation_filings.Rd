% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search_lobbying_representation_filings.R
\name{search_lobbying_representation_filings}
\alias{search_lobbying_representation_filings}
\title{Search Lobbying Representation filings}
\usage{
search_lobbying_representation_filings(query, myAPI_Key)
}
\arguments{
\item{query}{keyword or phrase}

\item{myAPI_Key}{use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.}
}
\value{
List of returned JSON from endpoint that retrieves
}
\description{
To get the 20 most recent lobbying representation filings for a given search term, use the following function. HTTP Request: GEThttps://api.propublica.org/congress/v1/lobbying/search.json?query={query}
}
\examples{
\dontrun{
search_lobbying_representation_filings('Facebook')
}
}
