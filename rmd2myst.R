# Dieses R-Script übersetzt automatisch alle Rmd Dateien aus dem Ordner Aufgaben_rmd in Markdown Dateien, 
# die für die Website verwendet werden können.

#' rmd2myst
#' @param file_name Name der Rmd Datei. Diese muss sich im aktuellen working directory befinden
#' @param myst_yaml optional: YAML header für die myst - Datei
#' @return erstellt eine .md Datei im myst - Syle
rmd2myst <- function(file_name, myst_yaml = NULL) {
  # Einlesen der Rmd Datei
  save_as <- gsub("\\.Rmd", ".md", x)
  dat <- file(x)
  x <- readLines(dat)
  close(dat)
  
  # Leere Zeilen zu Beginn der Datei entfernen, falls die Datei nicht
  # mit dem yaml header beginnt.
  for(i in 1:length(x))
    if(x[i] != "") break;
  x <- x[i:length(x)]
  
  # yaml entfernen
  if (grepl("---", x[1])) {
    yaml_end <- grep("---", x)[2]
    x <- x[(yaml_end + 1L):length(x)]
  }
  
  # Neuer YAML Header. Wir definieren hier den neuen Standard header,
  # falls keiner übergeben wurde
  if(is.null(myst_yaml))
    myst_yaml <- 
"
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
"
 x <- c(myst_yaml,
        x)

  # Ersetzen der code-chunks
  
  x <- gsub(pattern = "```\\{ *r[ \\sa-zA-Z0-9\\_]*\\}",
            replacement = "```\\{code-cell\\} r", 
            x = x)
  
  # Überprüfen, ob alle code-chunks ersetzt wurden:
  if(any(grepl(pattern = "```\\{[\\s]*r", x = x))){
    stop("Die folgenden code-chunk konnte nicht automatisch übersetzt werden: \n",
         paste0(x[grepl(pattern = "```\\{[\\s]*r", x = x)], collapse = "\n")
         )
  }
 
  cat(x, file = save_as, sep = "\n")
}



rmd2myst("Aufgaben_rmd/test.Rmd")

