#' Get Statement Subjects
#'
#'To get lists of subjects used to categorize congressional statements, use the following function. hese subjects are not automatically assigned but are manually curated by ProPublica, although they are based on legislative subjects produced by the Library of Congress. HTTP Request: GET https://api.propublica.org/congress/v1/statements/subjects.json
#'
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves all of the subjects that have been used at least once.
#' @export
#'
#' @examples
#' \dontrun{
#' get_statement_subjects()
#' }
get_statement_subjects <- function(myAPI_Key){
  API = 'congress'
  query <- "statements/subjects.json"
  pp_query(query, API, myAPI_Key = myAPI_Key)
}