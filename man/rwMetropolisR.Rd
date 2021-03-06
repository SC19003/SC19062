% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rwMetropolisR.R
\name{rwMetropolisR}
\alias{rwMetropolisR}
\title{A random walk Metropolis sampler using R}
\usage{
rwMetropolisR(sigma, x0, N)
}
\arguments{
\item{sigma}{the sd}

\item{x0}{the initial value}

\item{N}{the number of samples}
}
\value{
a random sample of size \code{n}
}
\description{
A random walk Metropolis sampler using R
}
\examples{
\dontrun{
N <- 2000
sigma <- c(.05, .5, 2, 16)
set.seed(1234)
x0 <- 25
rw1 <- rwMetropolisR(sigma[1], x0, N)
rw2 <- rwMetropolisR(sigma[2], x0, N)
rw3 <- rwMetropolisR(sigma[3], x0, N)
rw4 <- rwMetropolisR(sigma[4], x0, N)
rw <- cbind(rw1$x, rw2$x, rw3$x, rw4$x)
print(c(rw1$k, rw2$k, rw3$k, rw4$k))
print(c(1-rw1$k/N,1-rw2$k/N,1-rw3$k/N,1-rw4$k/N))
}
}
