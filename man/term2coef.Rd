% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/term2coef.R
\name{term2coef}
\alias{term2coef}
\title{Extract the coefficient names of terms of a model.}
\usage{
term2coef(model, term, as.list = FALSE)
}
\arguments{
\item{model}{a model object.}

\item{term}{a character vector of term labels.}

\item{as.list}{logical. Should the result be returned as a list?}
}
\value{
either a character vector (if \code{as.list = FALSE})
  or a list with character vectors (otherwise) with one
  list element for each element in \code{term}.
}
\description{
The function returns the labels of the coefficients of the model.
Note: The terms are not identical to the coefficients.
}
\details{
\code{model} is an object returned by a model fitting
  function (e.g., \code{\link{lm}}, \code{\link{aov}}).

  The character string passed to \code{term} must not include the
  intercept (\code{"(Intercept)"}).
  All non-intercept labels in any order are allowed.
}
\examples{
require(utils)

data(iris)
fit <- lm(Sepal.Length ~ poly(Sepal.Width, 3), data = iris)
summary(fit)
term2coef(fit, "poly(Sepal.Width, 3)")

data(warpbreaks)
fit2 <- lm(breaks ~ wool * tension, data = warpbreaks)
summary(fit2)
term2coef(fit2, c("wool", "tension"))
term2coef(fit2, c("wool", "tension"), as.list = TRUE)
term2coef(fit2, c("wool:tension"))
}
\seealso{
\code{\link{coef2term}} for the inverse function.
}

