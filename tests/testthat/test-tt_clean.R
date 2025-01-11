test_that("tt_clean creates the expected file", {
  proj_dir <- withr::local_tempdir()
  full_submission_path <- fs::path(proj_dir, "tt_submission")
  usethis::local_project(proj_dir, force = TRUE, quiet = TRUE)
  expect_true(tt_clean(open = FALSE))
  file_path <- fs::path(full_submission_path, "cleaning.R")
  expect_snapshot_file(file_path)
})
