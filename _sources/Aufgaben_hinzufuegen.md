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


```{code-cell} r
:tags: [remove-cell]
knitr::opts_chunk$set(echo = TRUE)
```

# Aufgaben hinzufügen

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Aufgaben_hinzufuegen.Rmd download=Aufgaben_hinzufuegen.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Aufgaben_hinzufuegen.Rmd download=Aufgaben_hinzufuegen.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>


Aufgaben der RTraining-Plattform sind in RMarkdown geschrieben und werden 
automatisch vom Skript [rmd2myst.R](https://github.com/Methods-Berlin/RTraining/blob/main/rmd2myst.R)
in myst-Markdown übersetzt. myst-Markdown ist die von JupyterBook unterstützte
Markdown Version. Neue Aufgaben werden hinzugefügt, indem diese als Rmd-Dateien
im Ordern Aufgaben_rmd gespeichert werden. Zusätzlich muss der Name der Datei 
(z.B. bei "neue_Aufgabe.Rmd" ist der Name "neue_Aufgabe") im Dokument _toc.yml
hinzugefügt werden. Der Name der Datei darf keine Umlaute enthalten, z.B. statt "Einführung in R", muss
die Datei "Einfuerung in R" bennant werden. 

Wenn die Aufgabe R-Pakete nutzt, muss zusätzlich überprüft werden, ob dieses 
bereits installiert wird. Alle bisher installierten Pakete werden im Dokument
[environment.yml](https://github.com/Methods-Berlin/RTraining/blob/main/environment.yml)
aufgefüht. Hier steht beispielsweise:
```
dependencies:
  - ...
  - r-tidyverse
```
Es wird also das gesamte tidyverse installiert. Wenn wir das Paket `psych` hinzufügen
wollen, dann müssen wir erst schauen, ob es dieses für Anaconda gibt. Hierfür 
gehen wir auf [anaconda.org](https://anaconda.org/) und suchen nach `r-psych`.
Wichtig: R-Pakte fangen auf Anaconda immer mit `r-` an! [r-psych](https://anaconda.org/search?q=type%3Aconda+r-psych)
existiert auf Anaconda und wir können es daher einfach hinzufügen, indem
wir es in [environment.yml](https://github.com/Methods-Berlin/RTraining/blob/main/environment.yml) 
ergänzen:
```
dependencies:
  - ...
  - r-tidyverse
  - r-psych
```
Das Paket wird nun bei nächsten Erstellen der Webseite installiert und kann mit 
`library(psych)` aufgerufen werden.

Die automatische Übersetzung unterstützt zur Zeit leider nicht alle Funktionen
von RMarkdown. Das betrifft insbesondere die tags, die in R Code-Blöcken genutzt
werden können (z.B. `eval = FALSE`). Außerdem können nicht alle html-tags (z.B.
`aside` oder `details`) vollumfänglich genutzt werden.

Im Folgenden werden die unterstützten Optionen demonstriert. Der Quelltext
ist in [GitHub](https://github.com/Methods-Berlin/RTraining/tree/main/Aufgaben_rmd/Aufgaben_hinzufuegen.Rmd)
hinterlegt.

## Code-Blöcke

Die folgenden Code-Blöcke werden unterstützt:

### Code-Block ohne tags:

```{code-cell} r
# einfacher code-Block
print(2)
```

### Code-Block mit eval = FALSE

In Rmarkdown-Style:
``` r
# nicht ausgeführter Code
print(3)
```

In quarto-Style:
``` r
# nicht ausgeführter Code
print(3)
```

### Code-Block mit echo = FALSE

In Rmarkdown-Style:
```{code-cell} r
:tags: [remove-input]
# versteckter input, angezeigter output
print(3)
```

In quarto-Style:
```{code-cell} r
:tags: [remove-input]
# versteckter input, angezeigter output
print(3)
```

### Code-Block mit include = FALSE

In Rmarkdown-Style:
```{code-cell} r
:tags: [remove-cell]
# versteckter input, versteckter output
print(3)
```

In quarto-Style:
```{code-cell} r
:tags: [remove-cell]
# versteckter input, versteckter output
print(3)
```

## Details

Details nur mit Text:

<details>
Details mit Text
</details>

Details nur mit code:



```{code-cell} r
:tags: [hide-cell]

# details mit code-Block
print(2)
```



Wichtig: Text und Code darf in `details` nicht kombiniert werden!

### Details - code-Block mit eval = FALSE

In Rmarkdown-Style:
<details>
<pre>
<code>
# nicht ausgeführter Code
print(3)
</code>
</pre>
</details>

In quarto-Style:
<details>
<pre>
<code>
print(3)
</code>
</pre>
</details>

### Details - code-Block mit echo = FALSE

In Rmarkdown-Style:


```{code-cell} r
:tags: [remove-input]
:tags: [hide-cell]

# nicht ausgeführter Code
print(3)
```



In quarto-Style:


```{code-cell} r
:tags: [remove-input]
:tags: [hide-cell]

# nicht ausgeführter Code
print(3)
```




## Aufgaben - Inhalt 

Die Aufgaben beziehen sich auf die Inhalte der R-Lernplattform und werden entsprechend unterteilt und 
benannt, z.B. "Einführung in R". Es gibt keine explizite Anzahl an Aufgaben, die für jeden Abschnitt erstellt werden, sondern 
es wird sich an den Inhalt orientiert. Pro Themenbereich werden 1-2 Aufgaben erstellt mit dem Ziel, das Wissen, das in dem 
Abschnitt vermittelt wird, weitestgehend abzufragen. Die Aufgaben können auch mehrere Themenbereiche gleichzeitig abfragen 
und können (bzw. sollen) in Ihrer Schwierigkeit variieren. 

Jede Aufgabe besteht aus drei Teilen: 1) Themenbereich, 2) Aufgabe in schriftlicher Form und 3) Lösung als code-Block. 
1) Der Themenbereich dient als die Unterschrift, z.B. "Objekt, Logische Operationen" und wird mit 2 oder mehr "#" prefixiert.
 Nur die Überschrift bzw. der Name des Aufgabenabschnitts (z.B. "Einführung in R") wird mit einem einzelnen "#" prefixiert. 
2) Die Aufgaben werden per "du" geschrieben. Die Aufgaben werden nicht nummeriert. 
3) Der Anfang und das Ende der Lösung wird mit `<!-- loesung: start-->` bzw. `<!-- loesung: ende-->` markiert. Z.B.:  

`<!-- loesung: start-->`


```{code-cell} r
:tags: [hide-cell]

x <- 5000
y <- 8^4
y <= x
```


`<!-- loesung: ende-->`

Die Tags `<!-- loesung: start-->` bzw. `<!-- loesung: ende-->` müssen immer in einer eigenen Zeile stehen. Folgendes
ist nicht erlaubt: 

"Berechne 123*456 in R. `<!-- loesung: start-->` `123*456` `<!-- loesung: ende-->`".

Korrekt wäre:

"Berechne 123*456 in R. 
  
`<!-- loesung: start-->`

`123*456`

`<!-- loesung: ende-->`".

 
 ## Checkliste 
  
 Diese Checkliste kann zur Selbstüberprüfung verwendet werden: 
  
 - R Übungsaufgaben erstellen
 - Lösungen mit "<!-- loesung: start> Meine Lösung steht hier <!-- loesung: ende-->" markieren
 - Header level überprüfen: Nur die erste Überschrift darf auf Level 1 sein (# Erste Überschrift) alle anderen
   Unterschriften müssen auf höherem Level sein (## Unterschrift) 
 - Dokumenten-Name überprüfen: Nur "Standard"-Buchstaben verwenden (kein ßäöü)
 - Dokument auf GitHub hochladen
 - Dokument zu _toc.yml hinzufügen
 - Überprüfen, ob alle benötigten Pakete bereits im [environment.yml] installiert sind. Wenn nicht dann hinzufügen. 
 - Pull request erstellen

  
 
  
