# tt_find_dataset_files errors informatively for extra files

    Code
      tt_find_dataset_files(test_path("fixtures", "tt_submission_extra"))
    Condition
      Error in `tt_find_dataset_files()`:
      ! `path` should only contain submission files.
      x Extra files: fixtures/tt_submission_extra/extra.R

# tt_find_dataset_files errors informatively for missing files

    Code
      tt_find_dataset_files(test_path("fixtures", "tt_submission_missing"))
    Condition
      Error in `tt_find_expected_files()`:
      ! All expected files must exist in `path`.
      x Missing files: 'fixtures/tt_submission_missing/cleaning.R'

# tt_find_dataset_files errors informatively for missing images

    Code
      tt_find_dataset_files(test_path("fixtures", "tt_submission_missing_image1"))
    Condition
      Error in `tt_find_images()`:
      ! All images in meta.yaml must exist in `path`.
      x Missing images: 'fixtures/tt_submission_missing_image1/states_population.png'

---

    Code
      tt_find_dataset_files(test_path("fixtures", "tt_submission_missing_image2"))
    Condition
      Error in `tt_find_images()`:
      ! No images found in meta.yaml

# tt_find_dataset_files errors informatively for missing dictionary

    Code
      tt_find_dataset_files(test_path("fixtures", "tt_submission_missing_md"))
    Condition
      Error in `tt_find_dictionaries()`:
      ! All datasets must have an associated md file in `path`.
      x Missing dictionaries: 'fixtures/tt_submission_missing_md/states.md'

