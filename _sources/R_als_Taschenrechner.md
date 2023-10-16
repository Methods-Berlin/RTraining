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

# R als Taschenrechner 

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/R_als_Taschenrechner.Rmd download=R_als_Taschenrechner.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/R_als_Taschenrechner.Rmd download=R_als_Taschenrechner.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>



## Aufgabe 1

Berechne die folgende Gleichung in R:  $(17/4 * 8)^2 - 52$. Speichere das Ergebnis als `A`.


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

A <- (17/4) * 8
A^2 - 52

```


<!-- loesung: ende-->


## Aufgabe 2

Berechne die folgende Gleichung in R: $(3.5 - 5.67) / (76.26 * 7.8) * 2.3$. Speichere das Ergebnis als `B`. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

B <- ((3.5 - 5.67) / (76.26 * 7.8)) * 2.3

```


<!-- loesung: ende-->


## Aufgabe 3

Berechne die folgendes in R: $3.3^4$. Speichere das Ergebnis als `C` und berechne die folgenden Gleichungen mit den bisher gespeicherten Objekten: 

* $A + B + C$ 
* $A/B + C$
* $A * B * C$

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

C <- 3.3 ^ 4

A + B + C 
A/B + C
A * B * C
  
```


<!-- loesung: ende-->
