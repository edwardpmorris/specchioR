#' Create a SPECCIO server client
#'
#' Initialise the SPECCHIO Java client and connect to a predefined server. The
#' returned client object can now be queried.
#'
#' @param server.id Integer representing the server id
#' @param speccio.path The path to the SPECCHIO client, see `getSpecchioPath`
#'
#' @return A connection to the defined SPECCHIO server that can be queried
#' @export
#'
#' @examples
#' # Set the specchio client path (adjust this for your system)
#' require(specchioR)
#' setSpecchioPath("/home/edward/SPECCHIO")
#' sp.client <- createClient()
createClient <- function(server.id = 1, speccio.path=getSpecchioPath()){
  # Initiate java machine with specchio client
  res <- rJava::.jinit()
  if(res==0) print("Java VM started ok")
  if(res==-1) print("Java VM did not start")
  if(res==1) print("Java VM started but did not load class or parameters")

  # Define class path
  rJava::.jaddClassPath(path=paste0(speccio.path,"/specchio-client.jar"))

  # Get server details
  specchio_cf <- rJava::J("ch/specchio/client/SPECCHIOClientFactory")$getInstance()
  descList <- specchio_cf$getAllServerDescriptors()

  # Java indice starts at 0
  desc <- descList$get(as.integer(server.id -1))

  # Return specchio client
  return(specchio_cf$createClient(desc))
}
