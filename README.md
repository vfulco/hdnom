# hdnom  <a href="https://hdnom.org"><img src="https://nanx.me/images/project-hdnom.png" align="right" alt="logo" height="180" width="180" /></a>

[![Build Status](https://travis-ci.org/road2stat/hdnom.svg?branch=master)](https://travis-ci.org/road2stat/hdnom)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/road2stat/hdnom?branch=master&svg=true)](https://ci.appveyor.com/project/road2stat/hdnom)
[![CRAN Version](https://www.r-pkg.org/badges/version/hdnom)](https://cran.r-project.org/package=hdnom)
[![Downloads from the RStudio CRAN mirror](https://cranlogs.r-pkg.org/badges/hdnom)](https://cranlogs.r-pkg.org/badges/hdnom)

`hdnom` creates nomogram visualizations for penalized Cox regression models, with the support of reproducible survival model building, validation, calibration, and comparison for high-dimensional data.

## Paper Citation

Formatted citation for [the preprint](http://dx.doi.org/10.1101/065524):

Nan Xiao, Qing-Song Xu, and Miao-Zhu Li. "hdnom: Building Nomograms for Penalized Cox Models with High-Dimensional Survival Data." bioRxiv (2016): 065524; doi: http://dx.doi.org/10.1101/065524

BibTeX entry:

```
@article {hdnompreprint2016,
	author = {Xiao, Nan and Xu, Qing-Song and Li, Miao-Zhu},
	title = {hdnom: Building Nomograms for Penalized Cox Models with High-Dimensional Survival Data},
	year = {2016},
	doi = {10.1101/065524},
	publisher = {Cold Spring Harbor Labs Journals},
	URL = {http://biorxiv.org/content/early/2016/08/23/065524},
	eprint = {http://biorxiv.org/content/early/2016/08/23/065524.full.pdf},
	journal = {bioRxiv}
}
```

## Installation

To download and install `hdnom` from CRAN:

```r
install.packages("hdnom")
```

Or try the development version on GitHub:

```r
# install.packages("devtools")
devtools::install_github("road2stat/hdnom")
```

Browse [the vignettes](https://hdnom.org/articles/) to start.

## Gallery

### Nomogram Visualization / Kaplan-Meier Plot with Number at Risk Table

<img src="https://hdnom.org/img/hdnom-nomogram.png" width="49%" alt="nomogram">
<img src="https://hdnom.org/img/hdnom-kmplot.png" width="49%" alt="kmplot">

### Model Validation / Model Calibration

<img src="https://hdnom.org/img/hdnom-validate.png" width="47%" alt="validation">
<img src="https://hdnom.org/img/hdnom-calibrate.png" width="47%" alt="calibration">

### Model Comparison via Validation / Calibration

<img src="https://hdnom.org/img/hdnom-compare-validate.png" width="49%" alt="compare-validation">
<img src="https://hdnom.org/img/hdnom-compare-calibrate.png" width="49%" alt="compare-calibration">

## Links

* hdnom project: [https://hdnom.org](https://hdnom.org)
* hdnom web application: [http://hdnom.io](http://hdnom.io)
* hdnom appmaker: [https://hdnom.org/appmaker](https://hdnom.org/appmaker)
* CRAN: [https://cran.r-project.org/package=hdnom](https://cran.r-project.org/package=hdnom)
* GitHub: [https://github.com/road2stat/hdnom](https://github.com/road2stat/hdnom)
