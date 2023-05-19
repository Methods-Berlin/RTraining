---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.11.5
kernelspec:
  display_name: R
  language: R
  name: ir
---


## Test Dokument 2

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/test_5.Rmd download=test_5.Rmd>RMarkdown-Datei herunterladen</a>


### Erstes Thema

### Zweites Thema



```{code-cell} r
:tags: [hide-cell]

dat <- data.frame("Spalte 1" = c(4,3,2,1), "Spalte 2" = c(5,6,7,8))
plot(dat)
```



```{code-cell} r
:tags: [remove-cell]
dat <- data.frame("Spalte 1" = c(1,2,3,4), "Spalte 2" = c(5,6,7,8))
plot(dat)
```




