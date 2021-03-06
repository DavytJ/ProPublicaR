% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/get_recent_official_communications_by_category.R
\name{get_recent_official_communications_by_category}
\alias{get_recent_official_communications_by_category}
\title{Get Recent Official Communications by Category}
\usage{
get_recent_official_communications_by_category(congress, category, myAPI_Key)
}
\arguments{
\item{congress}{114-115 for House, 96-115 for Senate}

\item{category}{ec, pm, pom}

\item{myAPI_Key}{use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.}
}
\value{
List of returned JSON from endpoint that retrieves the 20 most recent results for the specified type: ec (Executive Communication), pm (Presidential Message) or pom (Petition or Memorial).
}
\description{
To get lists of official communications to Congress from the president, executive branch agencies and state legislatures to congressional committees, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/communications/category/{category}.json
}
\examples{
\dontrun{
get_recent_official_communications_by_category(115, 'pm')
}
}
