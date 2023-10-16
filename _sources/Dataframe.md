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

# Dataframe 

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Dataframe.Rmd download=Dataframe.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Dataframe.Rmd download=Dataframe.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>


## Aufgabe 1

Erstelle eine Matrix `scores` mit den Werten $2, 3, 2, 3, 4, 5, 4, 3, 5, 2, 3, 3$ mit drei Spalten und vier Zeilen. Die Werte sollen zeilenweise eingetragen werden. Dann wandle die Matrix in einen Dataframe `data` um. Benenne die Spalten: `Item 1`, `Item 2`, `Item 3`. Lass dir die Werte der ersten Spalte (`Item 1`) ausgeben. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

scores <- matrix(c( 2, 3, 2, 3, 4, 5, 4, 3, 5, 2, 3, 3), nrow = 4, ncol = 3, byrow = TRUE)
data <- data.frame(scores)
colnames(data) <- c("Item 1", "Item 2", "Item 3")
data[ , 1]

```


<!-- loesung: ende-->


## Aufgabe 2

Nehme in den bestehenden Datensatz eine weitere Variable `consent` mit auf, die beinhaltet, ob die Teilnehmer*innen ihre Einwilligung für die Studienteilnahme gegeben haben. Bis auf die letzte Person haben alle ihre Einwilligung gegeben. Verwende dazu logische Werte (TRUE oder FALSE).


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

consent <- c(TRUE, TRUE, TRUE, FALSE)
data$consent <- consent

```


<!-- loesung: ende-->


## Aufgabe 3

Du führst eine Persönlichkeitsstudie durch und möchtest mit Hilfe eines Fragebogens die Extraversion und Verträglichkeit von vier Personen erfassen. Am Ende erhältst du für jeden Teilnehmer die Mittelwerte der jeweiligen Skala. Die Mittelwerte für Extraversion der vier Personen sind $3.0, 2.5, 3.0, 3.5$ und die Mittelwerte für Verträglichkeit sind: $4.0, 3.5, 4.5, 3.0$. Erstelle einen Datensatz `Persönlichkeit` mit drei Spalten: `Teilnehmer`, `E` (Extraversion) und `V` (Verträglichkeit). Lass dir den Wert für Verträglichkeit des zweiten Teilnehmers ausgeben.  

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

Teilnehmer <- c(1, 2, 3, 4)
E <- c(3.0, 2.5, 3.0, 3.5)
V <- c(4.0, 3.5, 4.5, 3.0)

Persönlichkeit <- data.frame(Teilnehmer, E, V)

Persönlichkeit[2, 3] 

```


<!-- loesung: ende-->
