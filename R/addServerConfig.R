#' Add a server configuration
#'
#' Add a prermanent entry to the SPECCHIO "db_conig.txt". Any field to be
#' left empty should have a value of "". The default test server is defined.
#'
#' @param protocol Https or other protocol
#' @param server The server address
#' @param port The port for communication
#' @param path The path on the server
#' @param user_name Your username give after registration with SPECCHIO
#' @param password Your username give after registration with SPECCHIO
#' @param data_source The database to be accessed; production or test
#' @param speccio.path The path to the SPECCIO client on local system
#'
#' @return Nothing, side effect of appending given server configuration to the
#' SPECCHIO "db_congig.txt"
#' @export
#'
#' @examples
#' #addServerToConfig()
addServerToConfig <- function(protocol="https",
                      server="v473.vanager.de",
                      port="443",
                      path="/specchio_service",
                      user_name="",
                      password="",
                      data_source="jdbc/specchio_test",
                      speccio.path=getSpecchioPath()){
  config.path <- paste0(speccio.path, "/db_config.txt")
  txt <- paste(protocol, server, port, path, user_name, password, data_source, sep=",")
  write(x = txt, file = config.path, append = T)
  print(paste(txt, "written to", config.path))
}
