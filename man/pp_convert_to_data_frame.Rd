% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pp_convert_to_data_frame.R
\name{pp_convert_to_data_frame}
\alias{pp_convert_to_data_frame}
\title{Convert a ProPublica API result a Data Frame}
\usage{
pp_convert_to_data_frame(what, which_part = c("result", "summary", "meta"))
}
\arguments{
\item{what}{Return value from one of the get_ functions.}

\item{which_part}{Which part are we converting. Defaults to 'results', but 'summary' and 'meta' may be useful in some cases.}
}
\value{
a data.frame
}
\description{
The function attempts to convert the result of a ProPublica API call to
a data.frame. If the result of the API call contains various parts, the
which_part parameter can be used to specify for which of these the conversion
is required. Typically the 'payload' resides in the 'results' field, which is the default, but
occasionally the summary and meta fields might be of interest.
}
\details{
The function also replaces . (dot) with _ (underscore) in column names for
compatibility with database inserts (e.g. DBI::dbWriteTable)
}
\examples{
\dontrun{
tmp <- get_candidates_in_race('MI','house',11)
pp_convert_to_data_frame(tmp)
pp_convert_to_data_frame(tmp,'summary')

}
}
