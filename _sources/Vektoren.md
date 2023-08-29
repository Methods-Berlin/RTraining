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

# Vektoren

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Vektoren.Rmd download=Vektoren.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Vektoren.Rmd download=Vektoren.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>



Erstelle einen Vektor "a" mit den Werten 3, 4, 6, 7, 9, 10. Greife den 3. Wert heraus. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

a <- c(3, 4, 6, 7, 10)
a[3]

```


<!-- loesung: ende-->


Erstelle einen Vektor "b" mit den Werten 4.5, 6.5, 8.5, 5.5, 7.5, 3.5. Greife den 2., 4. und 6. Wert heraus. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

b <- c(4.5, 6.5, 8.5, 5.5, 7.5, 3.5)
b[c(2,4,6)]

```


<!-- loesung: ende-->


Erstelle einen Vektor "c" mit den Werten 0, 1, 0, 2, 2. Ändere den 3. Wert zu 1 und den 4. Wert zu NA. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

c <- c(0, 1, 0, 2, 2)
c[3] <- 1
c[4] <- NA

```


<!-- loesung: ende-->


Erstelle einen character Vektor "schüler", der die Namen Luca, Matteo und Emil beinhaltet.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

schüler <- c("Luca", "Matteo", "Emil")

```


<!-- loesung: ende-->
