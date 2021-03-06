#' Get Committee Info
#' HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/committees/{fec-id}
#'
#' @param FEC_ID The FEC-assigned 9-character ID of a committee.
#' @param cycle The election cycle
#' @param myAPI_Key To use the Campaign Finance API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves ca specific FEC committee for a given campaign cycle from the campaign-finance API from ProPublica. 
#' @export
#'
#' @examples
#' \dontrun{
#' get_committee('C00553560', 2016)
#' }
get_committee <- function(FEC_ID, cycle=2018, myAPI_Key){
  API = 'campaign-finance'
  if(!validate_cycle(cycle))
    stop("Incorrect cycle")
  if(is.character(FEC_ID)){
    query <- sprintf("%s/committees/%s.json", cycle,FEC_ID)
    pp_query(query, API, myAPI_Key = myAPI_Key)
  } else {stop("FEC_ID has to be character")}
}

