% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plotSlimSmear.R
\name{plotSlimSmear}
\alias{plotSlimSmear}
\title{plotSlimSmear}
\usage{
plotSlimSmear(COMP, MAIN, ROUND = 2, PCH = 19, CEX = 1)
}
\arguments{
\item{COMP}{A DGELRT object from edgeR.}

\item{MAIN}{The title of the plot.}

\item{ROUND}{The decimal for the rounding.}

\item{PCH}{The \code{pch} arguments passed to the \code{points} function}

\item{CEX}{The \code{cex} arguments passed to the \code{points} function


Significantly over- and under-represented items are plotted in red and blue
respectively.

Using this function creates data loss.  Try rounding at different decimals and
pick one that do not change the visual appearance of the plot significantly.}
}
\description{
Slimmer plots with a bit of data loss
}
\details{
To reduce the size of SVG or PDF plots, this function rounds the data and
remove the duplicate points at the same coordinates.
}
\examples{
\dontrun{
plotSlimSmear(obj.comp, 'Here is the title')
}
}
\seealso{
\code{\link[edgeR]{plotSmear}}
}

