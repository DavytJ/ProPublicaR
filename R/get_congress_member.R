#' Get a Specific Member
#' 
#' To get biographical and Congressional role information for a particular member of Congress. HTTP Request: GET https://api.propublica.org/congress/v1/members/{member-id}.json
#'
#' @param member_id The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves biographical and Congressional role information for a particular member of Congress
#' @export
#'
#' @examples
#' \dontrun{
#' get_congress_member('K000388')
#' }
get_congress_member <- function(member_id, myAPI_Key){
  API = 'congress'
  if(is.character(member_id)){
   query <- sprintf("members/%s.json", member_id)
   pp_query(query, API, myAPI_Key = myAPI_Key)
  }else{stop("The member_id has to be character")}
}
