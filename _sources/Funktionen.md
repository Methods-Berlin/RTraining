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

# Funktionen

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Funktionen.Rmd download=Funktionen.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Funktionen.Rmd download=Funktionen.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>



## Aufgabe 1

Schreibe eine Funktion `multi`, die zwei "Zutaten" (x und y) benötigt. Diese Funktion multipliziert die beiden Zutaten, 
speichert das Produkt in einer Variable `p` und gibt es wieder zurück. Wende dann diese Funktion auf die Werte $x = 3,  y = 4$ 
und $x = -1,  y = 10$ an. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

multi <- function(x,y) {
  p <- x * y
  return(p)
}

multi(x = 3, y = 4)
multi(x = -1, y = 10)

```


<!-- loesung: ende-->


## Aufgabe 2

Schreibe eine Funktion `quadrat`, die eine Zutat benötigt und aus der das Quadrat berechnet wird. Das Ergebnis wird in einer Variable `s` gespeichert und zurückgegeben. Probiere die Funktion aus! 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

quadrat <- function(x) {
  s <- x^2
  return(s)
}

# Funktion ausprobieren
quadrat(2)
quadrat(10)

```


<!-- loesung: ende-->


## Aufgabe 3

Schreibe eine Funktion `durchschnitt`, die einen Vektor `x` als Input benötigt. Diese Funktion soll die Werte dieses Vektors mit der Funktion `sum()` addieren und durch die Anzahl der Werte (Vektorlänge) mit der Funktion `length()` dividieren. Du kannst die Produkte beliebig nennen, wobei das Endprodukt zurückgegeben wird. Probiere die Funktion aus! Fällt dir etwas auf? 


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

durchschnitt <- function(x) {
  summe <- sum(x)
  anzahl <- length(x)
  schnitt <- summe / anzahl
  return(schnitt)
}

# Funktion ausprobieren
x <- c(2, 4, 6, 8, 10)
durchschnitt(x) 

# Genau das macht die mean() Funktion! 

```


<!-- loesung: ende-->


