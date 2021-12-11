#' Save figure
#'
#' @param p plot 
#' @param file_name file name
#' @param width width
#' @param height height
#'
#' @return NULL
#' @export
save_fig <- function(p, file_name, width = NULL, height = NULL) {
  
  if (is.null(width) & is.null(height)) {
    ggsave(file.path(here::here(), glue('fig/{file_name}.png')), p)
  } else {
    ggsave(file.path(here::here(), glue('fig/{file_name}.png')), p, width = width, height = height)
  }
}