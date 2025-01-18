test_that("prep_tt_curate creates the directory", {
  proj_dir <- withr::local_tempdir()
  full_submission_path <- fs::path(proj_dir, "tt_submission")
  usethis::local_project(proj_dir, force = TRUE, quiet = TRUE)
  test_result <- prep_tt_curate()

  # On CI, the beginnings of the paths are sometimes different versions of the
  # same thing. Just check the important bits.
  test_result <- stringr::str_extract(
    test_result,
    "Rtmp.+"
  )
  full_submission_path <- stringr::str_extract(
    full_submission_path,
    "Rtmp.+"
  )
  expect_identical(test_result, full_submission_path)
})

test_that("prep_tt_curate works with ignore", {
  proj_dir <- withr::local_tempdir()
  full_submission_path <- fs::path(proj_dir, "tt_submission")
  usethis::local_project(proj_dir, force = TRUE, quiet = TRUE)
  test_result <- prep_tt_curate(ignore = TRUE)
  ignore_path <- fs::path(proj_dir, ".Rbuildignore")
  expect_true(fs::file_exists(ignore_path))
  ignore_contents <- readLines(ignore_path)
  expect_true(grepl(full_submission_path, ignore_contents))
})
