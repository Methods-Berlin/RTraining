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

# Datentypen

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Datentypen.Rmd download=Datentypen.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Datentypen.Rmd download=Datentypen.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>



## Aufgabe 1

Schreibe $74,678$ in R.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

74.678

```


<!-- loesung: ende-->


Könnte auch das Komma als Trennzeichen verwendet werden?

<!-- loesung: start-->



Nein, R verwendet nur den Punkt als Trennzeichen und gibt bei einem Komma eine Fehlermeldung aus. 

```{code-cell} r
:tags: [hide-cell]

74,678

```


<!-- loesung: ende-->


## Aufgabe 2

Speichere die Nummer $4560$ einmal als Zahl(numeric) und einmal als Text (character). Benenne die Objekte `nummer1` und `nummer2`.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

nummer1 <- 4560
nummer2 <- "4560"

```


<!-- loesung: ende-->


## Aufgabe 3

Stell dir vor, du hast einen Hund, der Baloo heißt, 10 kg wiegt und gerne spielt. Du möchtest diese drei Eigenschaften in R schreiben und unter verschiedenen Objekten speichern. Wie könntest du das machen? 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

name <- "Baloo"
kg <- 10
spiel <- TRUE

```


<!-- loesung: ende-->


Finde mit Hilfe der Funktion class() heraus, welchen Datentyp Variablen `name` und `spiel` haben. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

class(name)  # character
class(kg)    # numeric
class(spiel) # logical

```


<!-- loesung: ende-->


## Aufgabe 4

Erstelle einen Faktor `farbe`, der drei verschiedene Farbalternativen enthält: blau, rot und grün. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```


<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

farbe <- factor(levels = c("blau", "rot", "grün"))

```


<!-- loesung: ende-->
