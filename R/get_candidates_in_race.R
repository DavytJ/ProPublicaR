#' Get Candidates in Race
#'
#' @param state State abbreviation
#' @param chamber hourse or senate
#' @param district house district
#' @param cycle The election cycle in question, e.g. 2018
#' @param return_value should results be retrieved, or query string returned.
#' @param myAPI_Key To use the Campaign Finance API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header
#'
#' @return The result of the API call (list), unless \code{return_value=query} (mostly for debugging), in which case the query string is returned.
#' @export
#'
#' @examples
#' \dontrun{
#' get_candidates_in_race('MI', 'house', 11)
#' }
get_candidates_in_race <- function(state, chamber, district, cycle=2018, return_value=c('results','query'), myAPI_Key){
  API = 'campaign-finance'
  if(!validate_state(state))
    stop("Incorrect state")
  if(!validate_cycle(cycle))
    stop("Incorrect cycle")
  if(!validate_district(district))
    stop("Incorret district")
  if(!chamber%in%c('house','senate'))
    stop("Incorrect Chamber. Should be \'house\' or \'senate\', (lowercase).")
  if(state%in%c('AK','MT','ND','SD','VT','WY')&chamber=='house'){
    # These are the at-large districts
    candidatesURL <- sprintf('%s/races/%s/%s.json',
                             cycle,state,chamber)
  } else{
    candidatesURL <- sprintf('%s/races/%s/%s/%s.json',
                             cycle,state,chamber,district)

  }
  if(return_value[1]=='query')
    return(candidatesURL)
  tmp <- pp_query(candidatesURL, API, myAPI_Key = myAPI_Key)
  class(tmp) <- c(class(tmp),'pp_candidate_list')
  tmp
}
