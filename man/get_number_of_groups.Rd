% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/attr.R
\name{get_number_of_groups}
\alias{get_number_of_groups}
\title{Return the number of capturing subpatterns}
\usage{
get_number_of_groups(pattern, ...)
}
\arguments{
\item{pattern}{a pre-compiled regular expression or a string}

\item{...}{further arguments passed to \code{\link{re2}}}
}
\value{
a integer
}
\description{
Return the number of capturing subpatterns, or -1 if the
regexp wasn't valid on construction.  The overall match ($0)
does not count: if the regexp is "(a)(b)", returns 2.
}
\examples{
regexp = re2("1")
get_number_of_groups(regexp)

get_number_of_groups(re2("((?P<a>123)(12))"))

# uncaptured groups
get_number_of_groups(re2("(?:(?:(?:(?:(?:.)?){100})*)+)"))
}
