% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_wavelength.R
\docType{data}
\name{visible}
\alias{visible}
\title{Correspondence table between wavelengths of visible light and sRGB colors}
\format{A data.frame with 77 rows and 2 variables:
\describe{
  \item{wl}{the wavelength, in nm.}
  \item{color}{the hex code of the corresponding color.}
}}
\source{
\url{https://en.wikipedia.org/wiki/Visible_spectrum#/media/File:Linear_visible_spectrum.svg}
}
\usage{
visible
}
\description{
Correspondence table between wavelengths of visible light and sRGB colors
}
\details{
As explained by the author, David Eccles: "Colour ranges were taken from 'CRC Handbook of Fundamental Spectroscopic Correlation Charts' (see \url{https://en.wikipedia.org/wiki/Visible_spectrum}). Spectral XYZ locus coordinates were found at \url{http://www.cie.co.at/main/freepubs.html}. Every 10nm, the spectral locus point was used as the initial point in a search for a matching sRGB colour (assuming "Dim" viewing condition). The search was carried out by a binary search along a line in JCh space between the spectral point, and a point with 0.3 * brightness (J), 0 chroma (C), and the same hue (h) as the spectral point. The search finished when a point was found that was in sRGB space. The CAT02 matrix was modified as suggested in Brill(2008) \url{https://doi.org/10.1002/col.20432} to reduce yellow-blue problems by replacing the bottom row (0.0030, 0.0136, 0.9834) with (0,0,1). An iterative smoothing was carried out to eliminate the largest jumps in chroma (greater than 5\% change). Code used to generate the colour gradient can be found at \url{http://www.gringene.org/code/spectrum.r}."
}
\seealso{
\code{\link{wavelength}} which uses the table to convert any wavelength value to an R color.
}
\keyword{datasets}
