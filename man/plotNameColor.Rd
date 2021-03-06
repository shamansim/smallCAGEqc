% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plotNameColor.R
\name{plotNameColor}
\alias{plotNameColor}
\title{plotNameColor}
\usage{
plotNameColor(X, Y, GROUP, LABELS, LegendPos = "topleft")
}
\arguments{
\item{X}{Coordinates on the horizontal axis.}

\item{Y}{Coordinates on the vertical axis.}

\item{GROUP}{Factors indicating now to group the cells.}

\item{LABELS}{Labels to plot.}
}
\description{
XY plot of colored labels
}
\details{
Labels typically represent sample names, for instance 96-well-plate
coordinates.  Colors group the samples according to quality controls,
experimental design, etc.

Currently the plot colors are hardocded.  Dark green, cyan and yellow
are used because the light versions are hard to see on a screen.
}

