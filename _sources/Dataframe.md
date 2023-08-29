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


Erstelle eine Matrix "scores" mit den Werten 2, 3, 2, 3, 4, 5, 4, 3, 5, 2, 3, 3 mit 3 Spalten und 4 Zeilen. Die Werten sollen zeilenweise eingetragen werden. Wandle die Matrix dann in ein Dataframe "data". Bennene die Spalten: "Item 1", "Item 2", "Item 3". Greife die Werte der ersten Spalte ("Item 1") heraus. 

```{code-cell} r
scores <- matrix(c( 2, 3, 2, 3, 4, 5, 4, 3, 5, 2, 3, 3), nrow = 4, ncol = 3, byrow = TRUE)
data <- data.frame(scores)
colnames(data) <- c("Item 1", "Item 2", "Item 3")
data[ , 1]

```


Du führst eine Studie zur Persönlichkeit durch und möchtest bei 4 Personen Extraversion und Verträglichkeit mithilfe eines Fragebogens erfassen. Schließlich bekommst du die Mittelwerte der jeweiligen Skala für jeden Teilnehmer. Die Mittelwerte für Extraversion für die 4 Teilnehmer sind: 3.0, 2.5, 3.0, 3.5 und die Mittelwerte der Verträglichkeit sind: 4.0, 3.5, 4.5, 3.0. Erstelle einen Datensatz "Persönlichkeit" mit 3 Spalten: "Teilnehmer", "E" (Extraversion) und "V" (Verträglichkeit). Greife den Wert für Verträglichkeit des 2. Teilnehmers heraus.    

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
