#' Get Recent Personal Explanation Votes by Category
#'
#' Lawmakers, mostly in the House but also in the Senate, can make personal explanations for missed or mistaken votes in the Congressional Record. Unlike the “Recent Personal Explanations” response, this response contains explanations parsed to individual votes and have an additional category attribute describing the general reason for the absence or incorrect vote. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/explanations/votes/{category}.json
#'
#' @param congress 101-115
#' @param category options: voted-incorrectly (	Voted yes or no by mistake),	official-business (Away on official congressional business),	ambiguous (No reason given),	travel-difficulties (	Travel delays and issues),	personal (Personal or family reason),	claims-voted (Vote made but not recorded),	medical (	Medical issue for lawmaker, not family),	weather,	memorial,	misunderstanding,	leave-of-absence,	prior-commitment,	election-related,	military-service,	other
#' @param myAPI_Key  use the congress API, you must sign up for an API key. The API key must be included in all API requests to the server, set as a header.
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recent personal explanation votes filtered by a category in the specified Congress.
#' @export
#'
#' @examples
#' \dontrun{
#' get_recent_personal_explanations_votes_by_category(115, 'voted-incorrectly')
#' }
get_recent_personal_explanations_votes_by_category <- function(congress, category, myAPI_Key){
  API = 'congress'
  if(!congress %in% 101:115){
    stop("Incorrect congress, should be 101-115")
  }
  if(!category %in% c('voted-incorrectly',	'official-business',	'ambiguous',	'travel-difficulties',	"personal",	"claims-voted",	'medical',	'weather',	'memorial',	'misunderstanding',	'leave-of-absence',	'prior-commitment',	'election-related',	'military-service',	'other')){
    stop("Incorrect category, should be 101-115 \'voted-incorrectly\', \'official-business\', \'ambiguous\', \'travel-difficulties\', \'personal\', \'claims-voted\', \'medical\', \'weather\', \'memorial\', \'misunderstanding\', \'leave-of-absence\', \'prior-commitment\', \'election-related\', \'military-service\' or \'other\'")
  }
  query <- sprintf("%s/explanations/votes/%s.json", congress, category)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}
