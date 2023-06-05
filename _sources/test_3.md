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



# Überschrift

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/test_3.Rmd download=test_3.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Rmd_ohne_Loesungen/test_3.Rmd download=test_3.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>


## Erstes Thema

- Liste
- Liste
- Liste

Gleichung: $e^{i\pi} = -1$


```{code-cell} r
dat <- data.frame("Spalte 1" = c(1,2,3,4), "Spalte 2" = c(5,6,7,8))
plot(dat)
```

```{code-cell} r
2+4
```


```{code-cell} r
data <- cars[1:4, ]
knitr::kable(data, caption = "Tabelle")
```
