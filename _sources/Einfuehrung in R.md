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


# Einführung in R

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Einfuehrung in R.Rmd download=Einfuehrung in R.Rmd>RMarkdown-Datei herunterladen</a>


## Objekt, Logische Operationen 

1) Erstellen Sie ein Objekt "x" und weisen Sie den Wert 5000 zu. Erstellen Sie einen Objekt "y" und weisen Sie den Wert 8 hoch 4 zu. Überprüfen Sie, ob der Objekt "y" kleiner oder gleich dem Wert "x" ist. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


x <- 5000
y <- 8^4
y <= x

```



## Vektor, Datentypen, Aritmetische Opertionen  

2) Erstellen Sie einen Vektor "a" mit folgenden Zahlen: 3,4,6,7,25 und einen Vektor "b": 4.5,6.5,8.5,5.5,7.5. Multiplizieren Sie den Vektor "a" und mit dem Vektor "b" und addieren Sie einen Wert 2. Speichern Sie das Produkt unter einem Objekt "a_b". Welches Datentyp wird dieses Objekt beinhalten? Überprüfen Sie es. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


a <- c(3,4,6,7,25)
b <- c(4.5,6.5,8.5,5.5,7.5)
a_b <- a*b+2
str(a_b)

```



## Zahlenfolgen; seq() & rep()

3) Erstellen Sie einen Vektor "vek_1" mit einer Zahlreihe von 5 bis 30 in Fünferschritten und einen Vektor "vek_2" mit einer Zahlenfolge von 2.5 in 6-facher Ausführung. Subtrahieren Sie den "vek_2" vom "vek_1". Wie könnte die resultierende Zahlreihe alternativ erzeugt werden?

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


vek_1 <- seq(5,30,5)
vek_2 <- rep(2.5,6)
vek_1 - vek_2
seq(2.5,27.5,5)

```



## Speziallfall Faktor, Indexieren 

4) In einer Klasse sind folgende Schüler: Anton, Luca, Matteo, Max und Emil. 

a) Erstellen Sie einen  Faktor (speziellen Vektor) "schüler_1" mit den Namen. Die Namen der Schüler sollen in einer alphabetischen auftreten. Wie könnten Sie effizient dieses machen? 
b) Lassen Sie sich den Namen des 4. Schülers ausgeben. 
c) Erstellen Sie nun einen weiteren Faktor "schüler_2" bei dem die Namen in der ursprunglichen Reihenfolge (Anton, Luca, Matteo, Max und Emil) sortiert sind. 
d) Lassen Sie sich die beiden Faktoren ausgeben.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


#a)
schüler_1 <- factor(c("Anton", "Luca", "Matteo", "Max", "Emil"), ordered = TRUE)

#b)
schüler[4]

#c)
schüler_2 <- factor(schüler_1, ordered=TRUE, levels=c("Anton", "Luca", "Matteo", "Max", "Emil"))

#d)
print(schüler_1) #alternativ auch ohne "print()"
print(schüler_2) #alternativ auch ohne "print()"

```



## Matrizen 

5) Erstellen Sie eine Matrix "m_1" mit den 2 Zeilen und 2 Spalten mit den Zahlen 4,7,9,2, die zeilenweise  eingetragen werden. 
a) Lassen Sie sich die 1. Zeile ausgeben. 
b) Lassen Sie sich die 2. Spalte ausgeben.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


m_1 <- matrix(data = c(4,7,9,2), nrow = 2, ncol = 2, byrow = TRUE)

#a) 
m_1[1, ]
#b) 
m_1[ , 2]

```




6) Erstellen Sie eine Matrix "m_2" mit den Zahlen 3 Zeilen und 3 Reihen mit den Zahlen 7,3,0,5,6,1,1,9,11 die spaltenweise eingetragen werden. 
a) Lassen Sie sich den Wert in der 1. Zeile und 3. Spalte ausgeben. 
b) Lassen Sie sich den Wert in der 2. Zeile und 3. Spalte ausgeben.
c) Bennen Sie die Zeilen A1, A2, A3 und die Spalten B1, B2, B3.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


m_2 <- matrix(data = c(7,3,0,5,6,1,1,9,11), nrow = 3, byrow = FALSE)
#a)
m_2[1,3]
#b)
m_2[2,3]
#c)
rownames(m_2) <- c("A1", "A2", "A3")
colnames(m_2) <- c("B1", "B2", "B3")

```



## Liste

7) Erstellen Sie eine Liste für einen Sportwettkampf mit folgenden Objekten: 
a) Sportler: Tim, Alex, Finn, Martin 
b) Start: True, True, True, False
b) Platz: 2,3,1, NA
c) Qualifikation: False, False, True, False

Lassen Sie sich aus der Liste den Objekt "Start" ausgeben.

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


list_wettkampf <- list(Sportler = c("Tim", "Alex", "Finn", "Martin"),
                       Start = c(T,T,T,F),
                       Platz = c(2,3,1,NA),
                       Qualifikation = c(F, F, T,F))

list_wettkampf$Start

```



## Dataframe 

8) Sie führen eine Studie zur Persönlichkeit und möchten bei 4 Personen Extraversion und Verträglichkeit mithilfe eines Fragebogens erfassen. Schließlich bekommen Sie die Mittelwerte der jeweiligen Skala für jeden Teilnehmer. Die Mittelwerte für Extraversion für die 4 Teilnehmer sind: 3.0, 2.5, 3.0, 3.5 und die Mittelwerte der Verträglichkeit sind: 4.0, 3.5, 4.5, 3.0. Erstellen Sie einen Datensatz "Persönlichkeit" mit 3 Spalten: "Teilnehmer", "E" (Extraversion) und "V" (Verträglichkeit). Lassen Sie sich den Wert für Verstäglichkeit des 2. Teilnehmers ausgeben.    

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


Teilnehmer <- c(1,2,3,4)
E <- c(3.0, 2.5, 3.0, 3.5)
V <- c(4.0, 3.5, 4.5, 3.0)

Persönlichkeit <- data.frame(Teilnehmer, E, V)

Persönlichkeit[2,3] 

```




9) Wandeln Sie die Wettkampfsliste aus der vorherigen Aufgabe in einen Datensatz. 

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```



```{code-cell} r
:tags: [hide-cell]


data.frame(list_wettkampf)

```



