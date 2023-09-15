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



Schreibe eine Funktion "multi", die 2 "Zutaten" (x und y) braucht. Diese Funktion multipliziert die beiden Zutaten, speichert das Produkt in einer Variable "p" und gibt es wieder zurück. Wende dann diese Funktion den Werten x = 3 & y = 4 und x = -1 & y = 10 an. 

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


Schreibe eine Funktion "quadrat", die eine Zutat braucht und von der die Quadratzahl berechnet wird. Das Ergebnis wird als Variable "t" gespeichert und zurückgegeben. Probiere die Funktion aus! 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

quadrat <- function(x) {
  t <- x^2
  return(t)
}

# Funktion ausprobieren
quadrat(2)
quadrat(10)

```


<!-- loesung: ende-->


Schreibe eine Funktion "durchschnitt", die einen Vektor "x" als die Zutat braucht. Diese Funktion soll die Werte dieses Vektors mithilfe der Funktion sum() aufsummieren und durch die Anzahl der Werte bzw. Vektorlänge mithilfe der length() Funktion teilen. Du kannst die Produkte beliebig nennen, wobei das Endprodukt zurückgegeben wird. Probiere die Funktion aus! Fällt dir etwas auf? 


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


