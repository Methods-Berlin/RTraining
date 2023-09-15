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



Schreibe 74,678 in R.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

74.678

```


<!-- loesung: ende-->


Könnte man auch das Komma als Trennzeichen benutzen? 

<!-- loesung: start-->



Nein, R verwendet ausschließlich den Punkt als Trennzeichen und gibt beim Komma eine Fehlermeldung. 
```{code-cell} r
:tags: [hide-cell]

74,678

```


<!-- loesung: ende-->



Speichere die Nummer 4560 einmal als Zahl und einmal als Text. Benne das Objekt "nummer". 


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

nummer <- 4560
nummer <- "4560"

```


<!-- loesung: ende-->


Stell dir vor, du hast einen Hund, der Baloo heißt, 10 Kg wiegt und gern spielt. Du möchtest diese 3 Merkmale in R schreiben und unter verschiedenen Objekten speichern. Wie könntest du das machen? 

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


Erstelle einen Faktor "farben" mit drei verschiedenen Farbalternativen: blau, rot und grün. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```


<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

farben <- factor(levels = c("blau", "rot", "grün"))

```


<!-- loesung: ende-->
