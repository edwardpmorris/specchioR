#' Launch SPECCIO Java client
#'
#' Given the path to the SPECCIO instalation, launch the client GUI
#'
#' @param speccio.path
#'
#' @return Nothing, side effect is SPECCIO GUI is launched
#' @export
#'
#' @examples
#' speccio.path <- "/home/edward/SPECCHIO/"
#' launchGUI()
launchGUI <- function(speccio.path=getSpecchioPath()) {
  cmd <- paste0("java -jar ", speccio.path, "/specchio-client.jar")
  system(cmd, wait = F)
}
