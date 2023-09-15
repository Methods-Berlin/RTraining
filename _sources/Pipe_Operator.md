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

# Pipe-Operator

<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/Pipe_Operator.Rmd download=Pipe_Operator.Rmd>RMarkdown-Datei mit Lösungen herunterladen</a>


<a href=https://raw.githubusercontent.com/Methods-Berlin/RTraining/Rmd_ohne_Loesung/Rmd_ohne_Loesungen/Pipe_Operator.Rmd download=Pipe_Operator.Rmd>RMarkdown-Datei ohne Lösungen herunterladen</a>


Schreibe den folgenden Code mithilfe des Pipe-Operators um: 

```{code-cell} r
numbers <- c(-1, -2, -3, -4, -5)
numbers_positive <- abs(numbers)
numbers_sum <- sum(numbers_positive)
print(numbers_sum)

```


```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

numbers_sum <- c(-1, -2, -3, -4, -5) |> 
  abs() |> 
  sum()

print(numbers_sum)
  
```


<!-- loesung: ende-->



Erstelle mithilfe des Pipe-Operators einen Vektor mit Werten: 1.201, 1.243, 1.264, 1.156; und runde sie auf 2 Nachkommastellen. Speichere das Endprodukt unter "numbers_round".

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

numbers_round <- c(1.201, 1.243, 1.264, 1.156) |> 
  round(2)

print(numbers_round)

```


<!-- loesung: ende-->



Erstelle mithilfe des Pipe-Operators einen Vektor mit Werten 2,3,6,7; berechne den Mittelwert und ziehe die Quadratwurzel aus dem Mittelwert. Speichere das Endprodukt unter "score".

```{code-cell} r
# Hier kannst du deine Lösung ausprobieren.


```

<!-- loesung: start-->


```{code-cell} r
:tags: [hide-cell]

score <- c(2,3,6,7) |> 
  mean() |> 
  sqrt()  
  

print(score)

```


<!-- loesung: ende-->
