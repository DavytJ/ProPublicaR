#' Get Recently Added Independent Expenditure-Only Committees.
#'
#' HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/committees/superpacs
#' 
#' @param cycle The election cycle
#' @param myAPI_Key  use the Campaign Finance API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return  List of returned JSON from endpoint that retrieves the 20 most recently added FEC independent expenditure-only committees, known as “super PACs”.
#' @export
#'
#' @examples
#' \dontrun{
#' get_recently_added_independent_expenditure_committees(2016)
#' }
get_recently_added_independent_expenditure_committees <- function(cycle=2018, myAPI_Key){
  API = 'campaign-finance'
  if(!validate_cycle(cycle))
    stop("Incorrect cycle")
  if(cycle < 2009){
    stop("Incorrect cycle: independent expenditures are from 2009–present")}
  query <- sprintf("%s/committees/superpacs.json", cycle)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}
