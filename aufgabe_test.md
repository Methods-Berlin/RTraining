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

# Funktionen in R

Im Folgenden wollen wir uns mit Funktionen in R beschäftigen. Wir gucken uns an, wie Funktionen aufgebaut sind und schreiben selbst eine. 

> Funktionen sind (Unter-)Programme, die eine gewisse Funktionalität haben, d.h. eine bestimmte Aufgabe ausführen.

```{dropdown} Testing Dropdown
Some dropdown details
```

```{code-cell} r
:tags: [hide-cell]
neue_funktion <- function(x,y){
    x+y}

neue_funktion(2,3)
```


Wir können aber auch selbst Funktionen schreiben, um Abläufe zu automatisieren, die wir oft benutzen:

```{code-block} r 
neue_funktion <- function(x,y){
    x+y}

neue_funktion(2,3)
```

Jetzt wollen wir eine Funktionen schreiben, die Fahrenheit in Celsius umrechnet.

```{code-block} r
f_to_c <- 
```

```{code-block} r
:tags: [hide-cell]
f_to_c <- my_function(){}
```

