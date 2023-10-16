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


# Fehler 

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Fehler.Rmd download=Fehler.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Fehler.Rmd download=Fehler.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>



## Aufgabe 1

Welcher Fehler tritt im folgenden Code auf? Korrigiere ihn und führe den Code aus. 

```{code-cell} r
library(ggplot)

```


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

library(ggplot2)

```


<!-- loesung: ende-->



## Aufgabe 2

Welcher Fehler tritt im folgenden Code auf? Korrigiere ihn und führe den Code aus. 

```{code-cell} r
x <- 10
y <- "5"
result <- x + y

```


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

x <- 10
y <- 5  # y wurde als Text gespeichert und Berechnungen können nicht auf Text angewendet werden

# alternativ kann Text (character) auch in eine Zahl (numeric) umgewandelt werden: 
y <- as.numeric(y) 

result <- x + y

```


<!-- loesung: ende-->


## Aufgabe 3

Welcher Fehler tritt im folgenden Code auf? Korrigiere ihn und führe den Code aus. 

```{code-cell} r
vek <- c(10, 20, 30, 40, 50)
vec[4,2]

```


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

vec <- c(10, 20, 30, 40, 50)
vec[c(4,2)] 

```


<!-- loesung: ende-->
