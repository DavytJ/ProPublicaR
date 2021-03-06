#' Get a Specific Nomination
#'
#' To get details about a particular presidential civilian nomination,, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/nominees/{nominee-id}.json
#'
#' @param congress 107-115
#' @param nominee_id alphanumeric ID beginning with PN - for example, PN675
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves 
#' @export
#'
#' @examples
#' \dontrun{
#' get_specific_nominations(115, 'PN40')
#' }
get_specific_nominations <- function(congress, nominee_id, myAPI_Key){
  API = 'congress'
  control <- 107:115
  if(!congress %in% 107:115){
    stop("Incorrect congress, posible options are: ", control[1], ", ", control[2], ", ", control[3], " until ", control[9] )
  }
  query <- sprintf("%s/nominees/%s.json", congress, nominee_id)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}