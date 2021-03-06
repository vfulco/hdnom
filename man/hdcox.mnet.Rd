% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01-hdnom-models.R
\name{hdcox.mnet}
\alias{hdcox.mnet}
\title{Mnet Model Selection for High-Dimensional Cox Models}
\usage{
hdcox.mnet(x, y, nfolds = 5L, gammas = c(1.01, 1.7, 3, 100),
  alphas = seq(0.05, 0.95, 0.05), eps = 1e-04, max.iter = 10000L,
  seed = 1001, trace = FALSE, parallel = FALSE)
}
\arguments{
\item{x}{Data matrix.}

\item{y}{Response matrix made by \code{\link[survival]{Surv}}.}

\item{nfolds}{Fold numbers of cross-validation.}

\item{gammas}{Gammas to tune in \code{\link[ncvreg]{cv.ncvsurv}}.}

\item{alphas}{Alphas to tune in \code{\link[ncvreg]{cv.ncvsurv}}.}

\item{eps}{Convergence threshhold.}

\item{max.iter}{Maximum number of iterations.}

\item{seed}{A random seed for cross-validation fold division.}

\item{trace}{Output the cross-validation parameter tuning
progress or not. Default is \code{FALSE}.}

\item{parallel}{Logical. Enable parallel parameter tuning or not,
default is {FALSE}. To enable parallel tuning, load the
\code{doParallel} package and run \code{registerDoParallel()}
with the number of CPU cores before calling this function.}
}
\description{
Automatic Mnet model selection for high-dimensional
Cox models, evaluated by penalized partial-likelihood.
}
\examples{
library("survival")
library("rms")

# Load imputed SMART data; only use the first 120 samples
data("smart")
x = as.matrix(smart[, -c(1, 2)])[1:120, ]
time = smart$TEVENT[1:120]
event = smart$EVENT[1:120]
y = Surv(time, event)

# Fit Cox model with Mnet penalty
fit = hdcox.mnet(x, y, nfolds = 3,
                 gammas = 3, alphas = c(0.3, 0.8),
                 max.iter = 15000, seed = 1010)

# Prepare data for hdnom.nomogram
x.df = as.data.frame(x)
dd = datadist(x.df)
options(datadist = "dd")

# Generate hdnom.nomogram objects and plot nomogram
nom = hdnom.nomogram(fit$mnet_model, model.type = "mnet",
                     x, time, event, x.df, pred.at = 365 * 2,
                     funlabel = "2-Year Overall Survival Probability")

plot(nom)
}

