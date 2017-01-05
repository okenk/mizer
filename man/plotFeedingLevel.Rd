% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.r
\name{plotFeedingLevel}
\alias{plotFeedingLevel}
\title{Plot the feeding level of each species by size}
\usage{
plotFeedingLevel(object, ...)
}
\arguments{
\item{object}{An object of class \code{MizerSim}.}

\item{time_range}{The time range (either a vector of values, a vector of min
and max time, or a single value) to average the abundances over. Default is
the final time step.}

\item{print_it}{Display the plot, or just return the ggplot2 object}
}
\value{
A ggplot2 object
}
\description{
After running a projection, plot the feeding level of each species by size. 
The feeding level is averaged over the specified time range (a single value
for the time range can be used).
}
\examples{
\dontrun{
data(NS_species_params_gears)
data(inter)
params <- MizerParams(NS_species_params_gears, inter)
sim <- project(params, effort=1, t_max=20, t_save = 2)
plotFeedingLevel(sim)
plotFeedingLevel(sim, time_range = 10:20)
}
}
\seealso{
\code{\link{getFeedingLevel}}
}
