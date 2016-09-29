#' Get list of SPECCIO servers
#'
#' @return A list with details of SPECCIO servers
#' @export
#'
#' @examples
#' srvs <- getServers()
getServers <- function(speccio.path=getSpecchioPath()){
  servers <- read.csv(paste0(speccio.path, "/db_config.txt"), header = F, as.is = T, comment.char = "#")
  names(servers) <- c("protocol", "server", "port", "path", "user_name", "password", "data_source")
  return(servers)
}
