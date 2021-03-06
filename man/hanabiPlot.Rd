% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/hanabiPlot.R
\name{hanabiPlot}
\alias{hanabiPlot}
\title{hanabiPlot}
\usage{
hanabiPlot(RAR, S, GROUP, ...)
}
\arguments{
\item{RAR}{A rarefaction table.}

\item{S}{A vector of subsample sizes.}

\item{GROUP}{A vector of factors grouping the samples.}

\item{...}{Further arguments to be passed to the first plot function,
 that plots the empty frame.}
}
\description{
Plot feature discovery curves
}
\details{
Plots the number of features (genes, transcripts, ...) detected for a
given number of counts (reads, unique molecules, ...).  Each library is
sub-sampled by rarefaction at various sample sizes, picked to provide
enough points so that the curves look smooth.  The final point is plotted
as an open circle, hence the name "hanabi", which means fireworks in
Japanese.

The rarefactions take time to do, so this step is done by a separate
function, so that the result is easily cached.
}
\seealso{
vegan
}

