# ensure_arg_filled errors informatively

    Code
      ensure_arg_filled("", question = "", arg_name = "myArg")
    Condition
      Error:
      ! `myArg` is required.

# format_image_data errors informatively

    Code
      format_image_data(c("a", "b"), "c")
    Condition
      Error in `format_image_data()`:
      ! Please provide at least one image filename and corresponding alt text.

# format_mastodon errors informatively for weird inputs

    Code
      format_mastodon("jonthegeek")
    Condition
      Error in `format_mastodon()`:
      ! Please provide a valid mastodon username and server.
      i eg, yourname@yourserver.org or https://yourserver.org/@yourname

