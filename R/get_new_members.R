#' Get New Members
#' 
#' To get a list of the most recent new members of the current Congress. #HTTP Request: GET https://api.propublica.org/congress/v1/members/new.json
#'
#' @param  myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves a list of the most recent new members of the current Congress
#' @export
#'
#' @examples
#' \dontrun{
#' get_new_members()
#' }
get_new_members <- function(myAPI_Key){
  API = 'congress'
  query <- sprintf("members/new.json")
  pp_query(query, API, myAPI_Key = myAPI_Key)
}
