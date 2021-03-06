% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list_members_chamber_congress.R
\name{list_members_chamber_congress}
\alias{list_members_chamber_congress}
\title{To get a list of members of a particular chamber in a particular Congress}
\usage{
list_members_chamber_congress(congress, chamber, myAPI_Key)
}
\arguments{
\item{congress}{102-115 for House, 80-115 for Senate}

\item{chamber}{house or senate}

\item{myAPI_Key}{use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.}
}
\value{
list of members of a particular chamber in a particular Congress
}
\description{
The results include all members who have served in that congress and chamber, including members who are no longer in office. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/{chamber}/members.json
}
\examples{
\dontrun{
list_members_chamber_congress(115, 'senate')
}
}
