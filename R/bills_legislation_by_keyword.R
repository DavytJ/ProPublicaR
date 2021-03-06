#' Search Bills: to search the title and full text of legislation by keyword to get the 20 most recent bills
#'
#' Use this request to search the title and full text of legislation by keyword to get the 20 most recent bills.
#' Searches cover House and Senate bills from the 113th Congress through the current Congress (115th).
#' If multiple words are given (e.g. query = health care) the search is treated as multiple keywords using the OR operator.
#' Quoting the words (e.g. query = "health care") makes it a phrase search.
#' Search results can be sorted by date (the default) or by relevance, and in ascending or descending order.
#'
#' @param query_keyword keyword or phrase to search the title and full text of legislation to get the 20 most recent bills
#' @param sort _score or date (default is date)
#' @param dir sort direction: asc or desc
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header
#'
#' @return a list object with the return values about title and full text of legislation by keyword
#' @export
#'
#' @examples
#' \dontrun{
#' bills_legislation_by_keyword(query_keyword = 'megahertz')}
bills_legislation_by_keyword <- function(query_keyword, sort = c('date', '_score'), dir = c('desc', 'asc'), myAPI_Key){
  API = 'congress'
  #HTTP Request
  #GET https://api.propublica.org/congress/v1/bills/search.json?query={query}
  if (missing(myAPI_Key)) {
    myAPI_Key <- config::get('ProPublica')[[API]] #config::get('ProPublica')[[1]]
  }
  if(is.null(myAPI_Key))
    stop("API key not found. \nHint: This should be in config.yml in your working directory or higher.")
  query <- sprintf("bills/search.json?query=%s", query_keyword)
  pp_query(query, API)
}
