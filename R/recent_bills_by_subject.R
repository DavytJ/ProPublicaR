#' Get Recent Bills by a Specific Subject
#'
#'Use this request type to get the 20 most recently updated bills for a specific legislative subject. Results can include more than one Congress. HTTP Request: GET https://api.propublica.org/congress/v1/bills/subjects/{subject}.json
#'
#' @param subject A slug version of a legislative subject, displayed as url_name in subject responses.
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recently updated bills for a specific legislative subject.
#' @export
#'
#' @examples
#' \dontrun{
#' recent_bills_by_subject('meat')
#' }
recent_bills_by_subject <- function(subject, myAPI_Key){
  API = 'congress'
  if(is.character(subject)){
  query <- sprintf("bills/subjects/%s.json", subject)
  pp_query(query, API, myAPI_Key = myAPI_Key)
  } else {stop("subject has to be character")}
}
