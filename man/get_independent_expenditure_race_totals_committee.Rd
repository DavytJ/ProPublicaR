% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/get_independent_expenditure_race_totals_committee.R
\name{get_independent_expenditure_race_totals_committee}
\alias{get_independent_expenditure_race_totals_committee}
\title{Get Independent Expenditure Office Totals}
\usage{
get_independent_expenditure_race_totals_committee(cycle, FEC_ID, myAPI_Key)
}
\arguments{
\item{cycle}{The election cycle}

\item{FEC_ID}{The FEC-assigned 9-character ID of a committee}

\item{myAPI_Key}{use the Campaign Finance API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.}
}
\value{
ist of returned JSON from endpoint that retrieves the total amounts of money that a given committee has spent on individual races (consisting of a state, office and district) during a cycle.
}
\description{
HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/committees/{fec-id}/independent_expenditures/races
}
\examples{
\dontrun{
get_independent_expenditure_race_totals_committee(2016, 'C00490375')
}
}
