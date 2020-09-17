#' @export
worksheet = function() {
  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "worksheets")
  }

  css = pkg_resource("/assets/styles.min.css")
  footer = pkg_resource("/assets/footer.html")

  # call the base html_document function
  rmarkdown::html_document(
    toc = FALSE,
    theme = "default", css = css,
    highlight = "tango",
    includes = rmarkdown::includes(after_body = footer)
  )
}
