% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache.R
\name{new_cache}
\alias{new_cache}
\title{Make a new \code{drake} cache. \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#stable}{\figure{lifecycle-stable.svg}{options: alt='[Stable]'}}}{\strong{[Stable]}}}
\usage{
new_cache(
  path = NULL,
  verbose = NULL,
  type = NULL,
  hash_algorithm = NULL,
  short_hash_algo = NULL,
  long_hash_algo = NULL,
  ...,
  console_log_file = NULL
)
}
\arguments{
\item{path}{File path to the cache if the cache
is a file system cache.}

\item{verbose}{Deprecated on 2019-09-11.}

\item{type}{Deprecated argument. Once stood for cache type.
Use \code{storr} to customize your caches instead.}

\item{hash_algorithm}{Name of a hash algorithm to use.
See the \code{algo} argument of the \code{digest} package for your options.}

\item{short_hash_algo}{Deprecated on 2018-12-12.
Use \code{hash_algorithm} instead.}

\item{long_hash_algo}{Deprecated on 2018-12-12.
Use \code{hash_algorithm} instead.}

\item{...}{other arguments to the cache constructor.}

\item{console_log_file}{Deprecated on 2019-09-11.}
}
\value{
A newly created drake cache as a storr object.
}
\description{
Uses the \code{\link[=storr_rds]{storr_rds()}} function
from the \code{storr} package.
}
\examples{
\dontrun{
isolate_example("Quarantine new_cache() side effects.", {
clean(destroy = TRUE) # Should not be necessary.
unlink("not_hidden", recursive = TRUE) # Should not be necessary.
cache1 <- new_cache() # Creates a new hidden '.drake' folder.
cache2 <- new_cache(path = "not_hidden", hash_algorithm = "md5")
clean(destroy = TRUE, cache = cache2)
})
}
}
\seealso{
\code{\link[=make]{make()}}
}
