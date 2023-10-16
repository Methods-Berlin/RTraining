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

# Matrizen 

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Matrizen.Rmd download=Matrizen.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Matrizen.Rmd download=Matrizen.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>



## Aufgabe 1

Erstelle eine Matrix `m_1` mit den Werten $4, 7, 9, 2$. Die Matrix soll zwei Zeilen und zwei Spalten enthalten und die Werte sollen zeilenweise eingetragen werden. Lass dir die Werte erster Zeile ausgeben.


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

m_1 <- matrix(data = c(4, 7, 9, 2), nrow = 2, ncol = 2, byrow = TRUE)

m_1[1, ]

```


<!-- loesung: ende-->


## Aufgabe 2

Erstelle eine Matrix `m_2` mit den Werten $7, 3, 0, 5, 6$. Die Matrix soll zwei Zeilen und zwei Spalten enthalten und die Werte sollen spaltenweise eingetragen werden. Lass dir die Werte der zweiten Spalte ausgeben.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

m_2 <- matrix(data = c(7, 3, 0, 5), nrow = 2, ncol = 2, byrow = FALSE)

m_2[ , 2]

```


<!-- loesung: ende-->


## Aufgabe 3

Erstelle eine Matrix `m_3` mit den Werten $6, 1, 1, 9, 11, 15$. Die Matrix soll drei Zeilen und drei Spalten enthalten und die Werte sollen spaltenweise eingetragen werden. Lass dir den Wert der dritten Zeile und zweiten Spalte ausgeben. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

m_3 <- matrix(data = c(6, 1, 1, 9, 11, 15), nrow = 3, ncol = 2, byrow = FALSE)

m_3[3, 2]

```


<!-- loesung: ende-->

