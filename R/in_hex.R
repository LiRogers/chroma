#' Fast casting of colors into HEX strings
#'
#' Convert colors, including named ones as defined in the function \code{\link[grDevices]{colors}}, into their hex representation. This function is mostly used internally by chroma.
#'
#' @template param_x_rcolors
#'
#' @template return_hex_colors
#' @seealso \code{\link{hex}} for the same functionality offered in a more standard and more versatile way (albeit slower).
#'
#' @export
#'
#' @examples
#' in_hex("pink")
#' in_hex(c("pink", "#348A31", "darkblue"))
#' in_hex(c("pink", NA))
#' show_col(in_hex(colors()))
in_hex <- function(x) {
  out <- grDevices::rgb(t(grDevices::col2rgb(x)), maxColorValue=255)
  # reinsert NAs (which are transformed into white by the previous command)
  out <- na_insert(out, from=x)
  return(out)
}
