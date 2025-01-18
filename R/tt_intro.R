#' Create and open intro.Rmd
#'
#' When curating a TidyTuesday dataset, you need to introduce the dataset. This
#' function creates a simple `intro.Rmd` file in the specified path, and (if
#' possible) opens it for editing.
#'
#' @inheritParams usethis::use_template
#' @inheritParams shared-params
#'
#' @returns A logical vector indicating whether the file was created or
#'   modified, invisibly.
#' @export
#'
#' @examplesIf interactive()
#'
#'   tt_intro()
tt_intro <- function(path = "tt_submission",
                     open = rlang::is_interactive(),
                     ignore = FALSE) {
  prep_tt_curate(path, ignore = ignore)
  intro_path <- fs::path(path, "intro.Rmd")

  usethis::use_template(
    "intro.Rmd",
    save_as = intro_path,
    ignore = ignore,
    open = open,
    package = "tidytuesdayR"
  )
}
