#' Get Cosponsors for a Specific Bill
#'
#' HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/bills/{bill-id}/cosponsors.json. Use this request type to get Library of Congress-assigned subjects about a particular bill. 
#'
#' @param bill_id a bill slug, for example hr4881 - these can be found in the recent bill response.
#' @param congress 105-115@param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return  List of returned JSON from endpoint that retrieves information about the cosponsors of a particular bill
#' 
#' @export
#'
#' @examples
#' \dontrun{
#' get_cosponsors_specific_bill(114, 'hr4249')
#' }
get_cosponsors_specific_bill <- function(congress, bill_id, myAPI_Key){
  API = 'congress'
  if(!congress %in% 105:115){
    stop("Congress has to be 105-115")
  }
  if(is.character(bill_id)){
    query <- sprintf("%s/bills/%s/cosponsors.json", congress, bill_id)
    pp_query(query, API, myAPI_Key = myAPI_Key)
  } else {stop("bill_id has to be character")}
}
