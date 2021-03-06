#' Get Recent Official Communications
#'
#' To get lists of official communications to Congress from the president, executive branch agencies and state legislatures to congressional committees, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/communications.json
#'
#' @param congress 114-115 for House, 96-115 for Senate
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recent official communications to Congress from the president, executive branch agencies and state legislatures to congressional committees. The data covers communications to the House of Representatives since 2015, and communications to the Senate since 1979.
#' @export
#'
#' @examples
#' \dontrun{
#' get_recent_official_communications(115)
#' }
get_recent_official_communications <- function(congress, myAPI_Key){
  API = 'congress'
  if(!congress %in% 96:115){
    stop("Incorrect congress, should be 110-115 for House or 96-115 for Senate")
  }
  query <- sprintf("%s/communications.json", congress)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}