#' Get a Specific Bill: to get details about a particular bill, including actions taken and votes
#'
#'Use this request type to get details on bills that may be considered by the House or Senate in the near future,
#'based on scheduled published or announced by congressional leadership.
#'
#'The responses include a legislative_day attribute which is the earliest the bills could be considered,
#'and a range attribute that indicates whether the bill information comes from a weekly schedule or a daily one.
#'Combine the two for the best sense of when a bill might come up for consideration. For Senate bills,
#'the response includes a context attribute reproducing the sentence that includes mention of the bill.
#'These responses omit bills that have not yet been assigned a bill number or introduced, and additional bills
#'may be considered at any time.
#'
#' @param bill_id a bill slug, for example hr4881 - these can be found in the recent bill response.
#' @param congress 105-115
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' get_a_bill(115, 'hr21')
get_a_bill <- function(congress, bill_id, myAPI_Key){
  API = 'congress'
  #HTTP Request
  #GET https://api.propublica.org/congress/v1/{congress}/bills/{bill-id}.json
  if (missing(myAPI_Key)) {
    myAPI_Key <- config::get('ProPublica')[[API]] #config::get('ProPublica')[[1]]
  }
  if(is.null(myAPI_Key))
    stop("API key not found. \nHint: This should be in config.yml in your working directory or higher.")
  query <- sprintf("%s/bills/%s.json", congress, bill_id)
  pp_query(query, API)
}
