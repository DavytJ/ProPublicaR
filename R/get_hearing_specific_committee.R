#' Get Hearings for a Specific Committee
#'
#' To get a list of 20 upcoming Senate or House committee meetings, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/{chamber}/committees/{committee-id}/hearings.json
#'
#' @param congress 114-115
#' @param chamber house or senate
#' @param committee_id Optional committee abbreviation, for example HSAG. Use the full committees response to find abbreviations.
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recent hearings and supports pagination.
#' @export
#'
#' @examples
#' \dontrun{
#' get_hearing_specific_committee(115, 'house', 'HSRU')
#' get_hearing_specific_committee(115, 'house', lists_of_committees(115, "senate")$results[[1]]$committees[[1]]$id)
#' }
get_hearing_specific_committee <- function(congress, chamber, committee_id, myAPI_Key){
  API = 'congress'
  if(!congress %in% 114:115){
    stop("Incorrect congress, should be 110 until 115")
  }
  if(!chamber %in% c('house', 'senate')){
    stop("Incorrect chamber. Should be \'senate\' or \'house'\ , lowercase")
  }
  if(!is.character(committee_id)){
    stop("committee_id has to be character")
  } else {
    query <- sprintf("%s/%s/committees/%s/hearings.json", congress, chamber, committee_id)
    pp_query(query, API, myAPI_Key = myAPI_Key)
    }
}