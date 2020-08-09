\name{frename}
\alias{frename}
\alias{setrename}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fast Renaming Objects
}
\description{
A fast substitute for \code{dplyr::rename}. \code{setrename} renames objects by reference. These functions also work with objects other than data frames that have a 'names' attribute.
}
\usage{
frename(x, \dots, cols = NULL)

setrename(x, \dots, cols = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an R object with a 'names' attribute.
}
  \item{\dots}{either tagged vector expressions of the form \code{name = newname}, or a single function applied to all names (of columns/elements selected in \code{cols}).
}
  \item{cols}{If \code{\dots} is a function, select a subset of columns/elements to rename using names, indices, a logical vector or a function applied to the columns if \code{x} is a data frame (i.e. \code{is.numeric}).}
}
\value{
\code{x} renamed.
}
\seealso{
\link[=A3-data-frame-manipulation]{Data Frame Manipulation}, \link[=collapse-documentation]{Collapse Overview}
}
\examples{
## Using tagged expressions
frename(iris, Sepal.Length = SL, Sepal.Width = SW,
              Petal.Length = PW, Petal.Width = PW)
frename(iris, Sepal.Length = "S L", Sepal.Width = "S W",
              Petal.Length = "P W", Petal.Width = "P W")

## Using a function
frename(iris, tolower)
frename(iris, tolower, cols = 1:2)
frename(iris, tolower, cols = is.numeric)

## Renaming by reference
setrename(iris, tolower)
head(iris)
rm(iris)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{ manip }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.