#' Get Recent Personal Explanation Votes by a Specific Member by Category
#'
#' Lawmakers, mostly in the House but also in the Senate, can make personal explanations for missed or mistaken votes in the Congressional Record. To get recent personal explanations by a specific member that are parsed to individual votes and have an additional category attribute describing the general reason for the absence or incorrect vote, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/members/{member_id}/explanations/{congress}/votes.json
#'
#' @param member_id	The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.
#' @param congress 110-115
#' @param category options: voted-incorrectly (	Voted yes or no by mistake),	official-business (Away on official congressional business),	ambiguous (No reason given),	travel-difficulties (	Travel delays and issues),	personal (Personal or family reason),	claims-voted (Vote made but not recorded),	medical (	Medical issue for lawmaker, not family),	weather,	memorial,	misunderstanding,	leave-of-absence,	prior-commitment,	election-related,	military-service,	other
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recent personal explanations by a specific member in the specified Congress, and supports paginated requests using multiples of 20. 
#' @export
#'
#' @examples
#' \dontrun{
#' get_recent_personal_explanations_votes_specific_member_by_category('S001193', 115, 'personal')
#' }
get_recent_personal_explanations_votes_specific_member_by_category <- function(member_id, congress, category, myAPI_Key){
  API = 'congress'
  if(!congress %in% 110:115){
    stop("Incorrect congress, should be 110-115")
  }
  if(!category %in% c('voted-incorrectly',	'official-business',	'ambiguous',	'travel-difficulties',	"personal",	"claims-voted",	'medical',	'weather',	'memorial',	'misunderstanding',	'leave-of-absence',	'prior-commitment',	'election-related',	'military-service',	'other')){
    stop("Incorrect category, should be 101-115 \'voted-incorrectly\', \'official-business\', \'ambiguous\', \'travel-difficulties\', \'personal\', \'claims-voted\', \'medical\', \'weather\', \'memorial\', \'misunderstanding\', \'leave-of-absence\', \'prior-commitment\', \'election-related\', \'military-service\' or \'other\'")
  }
  if(!is.character(member_id)){
    stop("member_id has to be character")
  } else {
    query <- sprintf("members/%s/explanations/%s/votes/%s.json", member_id, congress, category)
    pp_query(query, API, myAPI_Key = myAPI_Key)}
}