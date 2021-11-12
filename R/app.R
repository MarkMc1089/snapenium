#' Open browser to URL
#'
#' @param url URL to open
#'
#' @return RemoteDriver client
#' @export
#'
#' @examples
#' driver <- open_browser("http://google.co.uk")
#' close_browser(driver)
Open_browser <- function(url = "") {
  rD <- RSelenium::rsDriver(port = netstat::free_port(), browser = "chrome", verbose = FALSE)
  driver <- rD[["client"]]
  driver$navigate(url)
  driver
}

#' Close browser associated with RemoteDriver client
#'
#' @param driver
#'
#' @return
#' @export
#'
#' @examples
#' driver <- open_browser("http://google.co.uk")
#' close_browser(driver)
close_browser <- function(driver) {
  driver$close()
  rm(driver)
}

