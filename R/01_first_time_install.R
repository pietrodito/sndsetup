csv_files <- (fs::dir_ls("csv_packages/"))
csv_names <- basename(csv_files)

file.copy(csv_files,
          "~/sasdata1/sasuser/packages_R_externes/")


unpack <- function(name) {
  zip_name <- stringr::str_sub(name, 4, -4) |> paste0(".zip")
  system(glue::glue(
    "base64 -d ~/sasdata1/sasuser/packages_R_externes/{name} > {zip_name}"))
  system(glue::glue(
    "unzip -o {zip_name} -d ~/sasdata1/sasuser/packages_R_externes/"))
  system(glue::glue(
    "rm {zip_name} ~/sasdata1/sasuser/packages_R_externes/{name}"))
}

purrr::walk(csv_names, unpack)


cli::cli_h1("Vous devez maintenant installer les 4 packages.")
cli::cli_alert_warning("sndshare")
cli::cli_alert_warning("sndshell")
cli::cli_alert_warning("sndsmart")
cli::cli_alert_warning("sndstyle")
cli::cli_alert_info("Pour cela ouvrez chaque projet puis CTRL+SHIFT+B")
