#' Get Votes by Date
#'
#' HTTP Requests: GET https://api.propublica.org/congress/v1/{chamber}/votes/{year}/{month}.json 
#'
#' @param chamber house or senate
#' @param year 	YYYY format
#' @param month  MM format
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves all votes for one or both chambers in a particular month
#' s
#' @export
#'
#' @examples
#' \dontrun{
#' get_votes_by_date('house', 2018, '09')
#' }
get_votes_by_date <- function(chamber = c('house', 'senate'), year, month, myAPI_Key){
  API = 'congress'
  if(!chamber%in%c('house','senate'))
    stop("Incorrect Chamber. Should be \'house\' or \'senate\', lowercase.")
  if(nchar(year)!=4){
    stop("Year should be four-digit year")  
  }
  query <- sprintf("%s/votes/%s/%s.json", chamber, year, month)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}
