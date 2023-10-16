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

# Logische Operatoren 

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Logische_Operatoren.Rmd download=Logische_Operatoren.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Logische_Operatoren.Rmd download=Logische_Operatoren.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>



## Aufgabe 1

Erstelle ein Objekt `x` mit dem Wert $5000$ und ein Objekt `y` mit dem Wert $8^4$. Prüfe, ob $x > y$. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

x <- 5000
y <- 8^4
x > y

```


<!-- loesung: ende-->


## Aufgabe 2

Erstelle einen Vektor `z` mit den Werten $0.5, 0.75, 0.25, 1, 1.25, 1.5$. Prüfe, welche Werte kleiner oder gleich eins ($<= 1$) sind. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

z <- c(0.5, 0.75, 0.25, 1, 1.25, 1.5)
z <= 1

```


<!-- loesung: ende-->


## Aufgabe 3

Erstelle einen Vektor `v` mit den Werten $5,3,4,5,5,7,2$. Ändere den zweiten Wert in eine $5$. Speichere alle Werte mit einer $5$ aus dem Vektor `v` in einem neuen Vektor `w`.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

v <- c(5,3,4,5,5,7,2)
v[2] <- 5
w <- v[v == 5]

```


<!-- loesung: ende-->
