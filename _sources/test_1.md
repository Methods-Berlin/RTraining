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


# Testdokument

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/test_1.Rmd download=test_1.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Rmd_ohne_Loesungen/test_1.Rmd download=test_1.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>


## Including Plots

You can also embed plots, for example:

```{code-cell} r
plot(pressure)
```

## Thema

- Liste
- Liste
- Liste

Gleichung: $e^{i\pi} = -1$

1. abc
2. def
3. ghi


```{code-cell} r
2+4
```


```{code-cell} r
data <- cars[1:4, ]
knitr::kable(data, caption = "Tabelle")
```

<details>
Dies ist ein versteckter Textbaustein.
</details> 

### Unterthema 

- Liste
- Liste

Gleichung: $e^{i\pi} = -1$

1. abc
2. def
3. ghi

#### Unterunterthema

- Liste
- Liste

Gleichung: $e^{i\pi} = -1$

1. abc
2. def
3. ghi

## Zweites Thema



```{code-cell} r
:tags: [hide-cell]

7*3
```



```{code-cell} r
:tags: [remove-input]
dat <- data.frame("Spalte 1" = c(1,2,3,4), "Spalte 2" = c(5,6,7,8))
plot(dat)
```

``` r
17+34
```
## Erstes Thema

``` r

plot(c(1,2,3,4))
```


## Zweites Thema

<details>
<pre>
<code>
dat <- data.frame("Spalte 1" = c(4,3,2,1), "Spalte 2" = c(5,6,7,8))
plot(dat)
</code>
</pre>
</details> 

```{code-cell} r
:tags: [remove-cell]
dat <- data.frame("Spalte 1" = c(1,2,3,4), "Spalte 2" = c(5,6,7,8))
plot(dat)
```


