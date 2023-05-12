# Dieses R-Script übersetzt automatisch alle Rmd Dateien aus dem Ordner Aufgaben_rmd in Markdown Dateien, 
# die für die Website verwendet werden können.


rmd2myst <- function(x) {
  save_as <- gsub("\\.Rmd", ".md", x)
  dat <- file(x)
  x <- readLines(dat)
  close(dat) #warum?
  
  # yaml entfernen
  if (grepl("---", x[1])) {
    yaml_end <- grep("---", x)[2]
    x <- x[(yaml_end + 1L):length(x)]
  }
  
  # neuer YAML Header -> Daten werden aus aufgabe_test Datei ausgelesen 
  dat_meta <- readLines(con = "aufgabe_test.md", n = -1L)
  meta_length <- grep("---", dat_meta)[2] - grep("---", dat_meta)[1] + 1L
  metadata <- readLines(con = "aufgabe_test.md", n = meta_length)  # Klammer funktioniert nicht????                                                                                                                     )
  x <- c(metadata, x)
  
  x <- gsub("```\\{r\\}","```\\{code-cell\\} r", x)
 
  cat(x, file = save_as, sep = "\n")
}



rmd2myst("Aufgaben_rmd/test.Rmd")

