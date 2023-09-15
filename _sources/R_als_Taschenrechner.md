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



Multipliziere $17/4$ und $8$ und speichere es unter Objekt "A". Quadriere das Objekt und ziehe $52$ ab. 


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


Teile $3.5 - 5.67$ durch $76.76 * 7.8$ und multipliziere alles mit $2.3$. Speichere dies unter "B". 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

B <- ((3.5 - 5.67) / (76.76 * 7.8)) * 2.3
```


<!-- loesung: ende-->


Berechne $3.3^4$ und speichere dies unter "C". Berechne dann folgendes mit den gespeicherten Objekten: 

* A + B + C 
* A/B + C
* A * B * C

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
