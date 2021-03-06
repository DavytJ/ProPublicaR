#' Get Independent Expenditure Office Totals
#'
#' HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/independent_expenditures/race_totals/{office}
#' 
#' @param cycle The election cycle
#' @param office one of house, senate or president
#' @param myAPI_Key  use the Campaign Finance API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves he amount of money spent in independent expenditures for a given office (either House, Senate or President).
#' 
#' @export
#'
#' @examples
#' \dontrun{
#' get_independent_expenditure_office_totals(2016, 'president')
#' get_independent_expenditure_office_totals(2016, 'house')
#' get_independent_expenditure_office_totals(2016, 'senate')
#' }
get_independent_expenditure_office_totals<- function(cycle=2018, office = c('house', 'senate', 'president'), myAPI_Key){
  API = 'campaign-finance'
  if(!validate_cycle(cycle)){
    stop("Incorrect cycle")
  }
  if(cycle < 2009){
    stop("Incorrect cycle: independent expenditures are from 2009–present")}
  if(!office%in%c('house','senate', 'president'))
    stop("Incorrect office. Should be \'house\', \'president\' or \'senate\', lowercase.")
  query <- sprintf("%s/independent_expenditures/race_totals/%s.json", cycle, office)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}
