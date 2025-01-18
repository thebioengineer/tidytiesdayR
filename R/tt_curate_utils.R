#' Set up a directory for dataset curation
#'
#' @inheritParams usethis::use_template
#' @inheritParams shared-params
#'
#' @returns The resolved path (invisibly).
#' @keywords internal
prep_tt_curate <- function(path = "tt_submission", ignore = FALSE) {
  rlang::check_installed("usethis", "to use curation templates.")
  rlang::check_installed("fs", "to use curation templates.")
  path <- usethis::proj_path(path)
  fs::dir_create(path)
  if (ignore) {
    usethis::use_build_ignore(path)
  }
  invisible(path)
}
