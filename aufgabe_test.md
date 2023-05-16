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

<aside>
  testing aside
</aside>


<details>
    <summary>Testing Details</summary>
    Some details details
</details>

```{dropdown} Testing Dropdown
Some dropdown details
```

````{dropdown} Testing Dropdown with code
```{code-cell} r
neue_funktion <- function(x,y){
    x+y}

neue_funktion(2,3)
```
````

Wir können aber auch selbst Funktionen schreiben, um Abläufe zu automatisieren, die wir oft benutzen........

```{code-block} r 
neue_funktion <- function(x,y){
    x+y}

neue_funktion(2,3)
```

Jetzt wollen wir eine Funktionen schreiben, die Fahrenheit in Celsius umrechnet.

`````{tab-set}
````{tab-item}
```{code-block} Übung
f_to_c <- 
```
````

````{tab-item}
```{code-block} Lösung
f_to_c <- my_function(){}
```
````
`````
