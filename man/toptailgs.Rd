% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/toptail.R
\name{toptailgs}
\alias{toptailgs}
\title{Clip the first and last n metres of SpatialLines}
\usage{
toptailgs(l, toptail_dist, tail_dist = NULL)
}
\arguments{
\item{l}{A SpatialLines object}

\item{toptail_dist}{The distance (in metres) to top the line by.
Can be either a single value or a vector of the same length as the
SpatialLines object. If tail_dist is missing, is used as the tail distance.}

\item{tail_dist}{The distance (in metres) to tail the line by. Can be
either a single value or a vector of the same length as the SpatialLines
object.}
}
\description{
Takes lines and removes the start and end point, to a distance determined
by the user. Uses the geosphere::distHaversine function and requires
coordinates in WGS84 (lng/lat).
}
\examples{
data("routes_fast")
rf <- routes_fast[2:3, ]
r_toptail <- toptailgs(rf, toptail_dist = 300)
plot(rf, lwd = 3)
plot(r_toptail, col = "red", add = TRUE)
plot(cents, add = TRUE)
}
\seealso{
Other lines: \code{\link{angle_diff}},
  \code{\link{geo_toptail}}, \code{\link{is_linepoint}},
  \code{\link{line2df}}, \code{\link{line_bearing}},
  \code{\link{line_match}}, \code{\link{line_midpoint}},
  \code{\link{line_sample}}, \code{\link{line_segment}},
  \code{\link{line_via}}, \code{\link{mats2line}},
  \code{\link{n_sample_length}}, \code{\link{n_vertices}},
  \code{\link{onewaygeo}}, \code{\link{onewayid}},
  \code{\link{points2line}}, \code{\link{toptail_buff}},
  \code{\link{update_line_geometry}}
}
\concept{lines}
