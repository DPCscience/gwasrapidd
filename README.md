
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gwasrapidd <img src="man/figures/logo.svg" align="right" height=140/>

[![](https://img.shields.io/badge/doi-10.1093/bioinformatics/btz605-blue.svg)](https://doi.org/10.1093/bioinformatics/btz605)
[![](https://img.shields.io/badge/Altmetric-38-yellow.svg)](https://www.altmetric.com/details/64505748)
[![Travis build
status](https://travis-ci.org/ramiromagno/gwasrapidd.svg?branch=master)](https://travis-ci.org/ramiromagno/gwasrapidd)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/ramiromagno/gwasrapidd?branch=master&svg=true)](https://ci.appveyor.com/project/ramiromagno/gwasrapidd)
[![codecov](https://codecov.io/gh/ramiromagno/gwasrapidd/branch/master/graph/badge.svg)](https://codecov.io/gh/ramiromagno/gwasrapidd)
[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![](https://img.shields.io/badge/devel%20version-0.99.8-blue.svg)](https://github.com/ramiromagno/gwasrapidd)

The goal of gwasrapidd is to provide programmatic access to the
[NHGRI-EBI Catalog](https://www.ebi.ac.uk/gwas) of published genome-wide
association studies.

Get started by reading the
[documentation](https://rmagno.eu/gwasrapidd/articles/gwasrapidd.html).

## Installation

You can install the current version of gwasrapidd with:

``` r
# install.packages("remotes")
remotes::install_github("ramiromagno/gwasrapidd")
```

## Cheatsheet

<a href="https://github.com/rstudio/cheatsheets/blob/master/gwasrapidd.pdf"><img src="https://raw.githubusercontent.com/rstudio/cheatsheets/master/pngs/gwasrapidd.png" width="420" height="300"/></a>

## Example

Get the study related to triple-negative breast cancer:

``` r
library(gwasrapidd)
studies <- get_studies(efo_trait = 'triple-negative breast cancer')
studies@studies[1:4]
## # A tibble: 1 x 4
##   study_id  reported_trait        initial_sample_size  replication_sample_…
##   <chr>     <chr>                 <chr>                <chr>               
## 1 GCST0023… Breast cancer (estro… 1,529 European ance… 2,148 European ance…
```

Find associated variants:

``` r
variants <- get_variants(study_id = 'GCST002305')
variants@variants[c('variant_id', 'functional_class')]
## # A tibble: 5 x 2
##   variant_id functional_class   
##   <chr>      <chr>              
## 1 rs4245739  3_prime_UTR_variant
## 2 rs2363956  missense_variant   
## 3 rs10069690 intron_variant     
## 4 rs3757318  intron_variant     
## 5 rs10771399 intergenic_variant
```

## Citing this work

gwasrapidd was published in Bioinformatics in 2019:
<https://doi.org/10.1093/bioinformatics/btz605>.

To generate a citation for this publication from within R:

``` r
citation('gwasrapidd')
## 
## To cite gwasrapidd in publications use:
## 
##   Ramiro Magno, Ana-Teresa Maia, gwasrapidd: an R package to
##   query, download and wrangle GWAS Catalog data, Bioinformatics,
##   btz605, 2 August 2019, Pages 1-2,
##   https://doi.org/10.1093/bioinformatics/btz605
## 
## A BibTeX entry for LaTeX users is
## 
##   @Article{,
##     title = {gwasrapidd: an R package to query, download and wrangle GWAS Catalog data},
##     author = {Ramiro Magno and Ana-Teresa Maia},
##     journal = {Bioinformatics},
##     year = {2019},
##     pages = {1--2},
##     url = {https://doi.org/10.1093/bioinformatics/btz605},
##   }
```

## Contributors

Please note that the gwasrapidd project is released with a [Contributor
Code of Conduct](.github/CODE_OF_CONDUCT.md). By contributing to this
project, you agree to abide by its terms.

## Similar projects

  - Bioconductor R package *gwascat* by Vincent J Carey:
    <https://www.bioconductor.org/packages/release/bioc/html/gwascat.html>
  - Web application *PhenoScanner V2* by Mihir A. Kamat, James R.
    Staley, and others: <http://www.phenoscanner.medschl.cam.ac.uk/>
  - Web application *GWEHS: Genome-Wide Effect sizes and Heritability
    Screener* by Eugenio López-Cortegano and Armando Caballero:
    <http://gwehs.uvigo.es/>

## Acknowledgements

This work would have not been possible without the precious help from
the [GWAS Catalog
team](http://www.ensembl.info/2018/06/28/ten-years-of-the-gwas-catalog-past-present-and-future/),
particularly [Daniel
Suveges](https://www.ebi.ac.uk/about/people/daniel-suveges).

We also thank [Hadley](http://hadley.nz/)’s team for all the brilliant
software that has influenced so profoundly the development of this
package.
