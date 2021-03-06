#' Get Recent Electioneering Communications
#'
#' HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/electioneering_communications
#' 
#' @param cycle The election cycle
#' @param myAPI_Key  use the Campaign Finance API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recent broadcast advertisements that identify one or more federal candidates (and have aired 30 days before a primary election and 60 days before the general election).
#'
#' @export
#'
#' @examples
#' \dontrun{
#' get_recent_electioneering_communications(2016)
#'
#' }
get_recent_electioneering_communications <- function(cycle=2018, myAPI_Key){
  API = 'campaign-finance'
  if(!validate_cycle(cycle)){
    stop("Incorrect cycle")
  }
  query <- sprintf("%s/electioneering_communications.json", cycle)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}
