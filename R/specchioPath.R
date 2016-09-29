# getSpecchioPath()
# setSpecchioPath("~/SPECCHIO")
# getSpecchioPath()

getSpecchioPath <- function(){
  specchio.path <- yaml::yaml.load_file(
    system.file("extdata","specchioR_config.yaml",
                package = "speccioR")
    )
  return(specchio.path)
}

setSpecchioPath <- function(path=""){
  cat(
    yaml::as.yaml(list(specchio.path=path)),
    file= system.file("extdata","specchioR_config.yaml", package = "speccioR"),
    append = F
    )
}
