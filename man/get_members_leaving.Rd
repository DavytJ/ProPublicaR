% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_members_leaving.R
\name{get_members_leaving}
\alias{get_members_leaving}
\title{Get Members Leaving Office}
\usage{
get_members_leaving(congress, chamber, myAPI_Key)
}
\arguments{
\item{congress}{111-115}

\item{chamber}{house or senate}

\item{myAPI_Key}{use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.}
}
\value{
List of returned JSON from endpoint that retrieves a list of members who have left the Senate or House
}
\description{
To get a list of members who have left the Senate or House or have announced plans to do so. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/{chamber}/members/leaving.json
}
\examples{
\dontrun{
get_members_leaving(115, 'house')
}
}
