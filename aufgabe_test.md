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

Wir können aber auch selbst Funktionen schreiben, um Abläufe zu automatisieren, die wir oft benutzen. 

```{code-cell} r 
neue_funktion <- function(x,y){
    x+y}

neue_funktion(2,3)
```

Jetzt wollen wir eine Funktionen schreiben, die Fahrenheit in Celsius umrechnet.

```{code-cell} r interactive
f_to_c <- 
```

