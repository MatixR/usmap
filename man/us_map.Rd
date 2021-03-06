% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/usmap.R
\name{us_map}
\alias{us_map}
\title{Retrieve US map data}
\usage{
us_map(regions = c("states", "state", "counties", "county"), include = c())
}
\arguments{
\item{regions}{The region breakdown for the map, can be one of
(\code{"states"}, \code{"state"}, \code{"counties"}, \code{"county"}).
The default is \code{"states"}.}

\item{include}{The regions to include in the output data frame. If \code{regions} is
\code{"states"}/\code{"state"}, the value can be either a state name, abbreviation or FIPS code.
For counties, the FIPS must be provided as there can be multiple counties with the
same name.}
}
\value{
A data frame of US map coordinates divided by the desired \code{regions}.
}
\description{
Retrieve US map data
}
\examples{
str(us_map())

df <- us_map(regions = "counties")
west_coast <- us_map(include = c("CA", "OR", "WA"))
}
