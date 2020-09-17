#' @export
worksheet = function(theme, highlight= "textmate", toc = FALSE) {
  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "worksheets")
  }

  css = pkg_resource("/assets/styles.min.css")
  footer = pkg_resource("/assets/footer.html")

  # call the base html_document function
  rmarkdown::html_document(
    toc = toc, fig_width = 6.5, fig_height = 4,
    theme = theme, css = css,
    highlight = highlight,
    includes = rmarkdown::includes(after_body = footer)
  )
}
