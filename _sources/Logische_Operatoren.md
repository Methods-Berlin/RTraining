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



Erstelle ein Objekt "x" mit dem Wert 5000 und ein Objekt "y" mit dem Wert 8 hoch 4 (d.h. 8^4). Überprüfe, ob "x" großer als "y" ist. 

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


Erstelle einen Vektor "z" mit den Werten 0.5, 0.75, 0.25, 1, 1.25, 1.5. Überprüfe, welche Werte kleiner oder gleich 1 sind. 

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


Erstelle einen Vektor "v" mit den Werten 5,3,4,5,5,7,2. Ändere den zweiten Wert auf 5. Speichere alle Werte mit einer 5 aus dem Vektor "v" in einen neuen Vektor "w".

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
