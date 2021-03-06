% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/parallelExport.R
\name{parallelExport}
\alias{parallelExport}
\title{Export R objects for parallelization.}
\usage{
parallelExport(..., objnames, master = TRUE, level = NA_character_,
  show.info = NA)
}
\arguments{
\item{...}{[\code{character}]\cr
Names of objects to export.}

\item{objnames}{[\code{character(1)}]\cr
Names of objects to export.
Alternative way to pass arguments.}

\item{master}{[\code{logical(1)}]\cr
Really export to package environment on master for local and multicore mode?
If you do not do this your objects might not get exported for the mapping function call.
Only disable when you are really sure.
Default is \code{TRUE}.}

\item{level}{[\code{character(1)}]\cr
If a (non-missing) level is specified in \code{\link{parallelStart}},
the function only exports if the level specified here matches.
See \code{\link{parallelMap}}.
Useful if this function is used in a package.
Default is \code{NA}.}

\item{show.info}{[\code{logical(1)}]\cr
Verbose output on console?
Can be used to override setting from options / \code{\link{parallelStart}}.
Default is NA which means no overriding.}
}
\value{
Nothing.
}
\description{
Makes sure that the objects are exported to slave process so that they can be used in a job
function which is later run with \code{\link{parallelMap}}.
}

