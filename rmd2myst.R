# Dieses R-Script übersetzt automatisch alle Rmd Dateien aus dem Ordner Aufgaben_rmd in Markdown Dateien, 
# die für die Website verwendet werden können.

library(stringr)

#' file_in_toc
#' 
#' Überprüft, ob jede Rmd - Datei auch in toc vorkommt. Wenn nicht, dann
#' wird eine Datei (rmd_not_in_toc.md) erstellt, in der alle Rmd - Dateien,
#' die nicht im toc sind, aufgeführt werden. Diese kann dann für das Erstellen
#' eines issues verwendet werden.
#' 
#' @param Rmd_file_names Namen der Rmd-Dateien
#' @param toc_file_name Name der toc-datei
#' @return nichts
file_in_toc <- function(Rmd_file_names, toc_file_name = "_toc.yml"){
  
  # .Rmd entfernen
  Rmd_file_names <- gsub(x = Rmd_file_names, 
                         pattern = ".Rmd",
                         replacement = "")
  
  # Einlesen der toc Datei
  toc <- file(toc_file_name)
  toc_lines <- paste0(readLines(toc), collapse = "\n")
  close(toc)
  
  issue_file <- c()
  
  for(Rmd_file_name in Rmd_file_names){
    if(!grepl(Rmd_file_name, toc_lines)){
      issue_file <- c(issue_file, 
                      paste0("- [ ] ", Rmd_file_name))
    }
  }
  
  if(length(issue_file) != 0){
    issue_file <- paste0(
      "---
title: Fehlende RMarkdown-Dateien in _toc.yml
---
The following Rmarkdown-files have not been found in _toc.yml:\n\n",
        paste0(issue_file, collapse = "\n")
      )
    write_file <- file("rmd_not_in_toc.md")
    writeLines(text = issue_file, con = write_file)
    close(write_file)
  }
}

#' replace_tags 
#' 
#' Ersetzt rmd und quarto tags (z.B. eval = FALSE) mit den passenden myst - tags. Siehe
#' https://jupyterbook.org/en/stable/reference/cheatsheet.html#tags
#' 
#' @param tag z.B. eval
#' @param value z.B. "FALSE"
#' @return string mit passendem myst tag
replace_tags <- function(tag, value){
  
  # damit wir FALSE und false, etc nicht separat behandeln müssen: 
  tag <- tolower(tag)
  value <- tolower(value)
  
  # Zuordnung:
  if(tag == "echo"){
    if(value == "false")
      return(":tags: [remove-input]")
    return("")  
  }
  if(tag == "eval"){
    if(value == "false")
      return(":tags: [NO-EVAL]")
    return("")
  }
  
  if(tag == "include"){
    if(value == "false")
      return(":tags: [remove-cell]")
    return("")
  }
  
  stop("tag", tag, "nicht gefunden.")
  
}

#' replace_details
#' 
#' ersetzt <details> - Blöcke, wenn diese Code enthalten
#' @param x text
#' @return x
replace_details <- function(x){
  for(i in 1:length(x)){
    if(grepl("<details>", x[i])){
      start <- i
      # suche Ende
      for(j in i:length(x)){
        if(grepl("</details>", x[j])){
          end <- j
          
          # check, ob code enthalten ist:
          code <- grepl("```", x = x[start:end])
          if(any(code)){
            if(sum(code) < 2)
              stop("Konnte für folgenden code - Block kein Ende finden:",
                   x[start:end])
            if(sum(code) > 2)
              stop("Folgender details-Block enthält mehrere Code-Blöcke.",
                   "Aktuell ist nur ein code-Block erlaubt.:",
                   x[start:end])
            code_start <- start + which(code)[1] - 1
            code_end <- start + which(code)[2] - 1
            cutoff <- c()
            # check, ob eval=false in details 
            if(any(grepl("``` r", x = x[start:end]))){
              x[code_start] <- paste0("<pre>\n<code>")
              x[code_end] <- paste0("</code>\n</pre>")
            }else{
            if(code_start > start+1)
              cutoff <- c(cutoff, x[(start+1):code_start])
            if(code_end < end-1)
              cutoff <- c(cutoff, x[code_end:(end-1)])
            if(length(cutoff) > 0)
              warning("Die folgenden Text-Blöcke werden entfernt, da",
                      "<details> aktuell nur code oder text, aber nicht beides ",
                      "enthalten darf:",
                      cutoff)
            # details ersetzen
            x[start] <- "\n"
            x[end] <- "\n"
            # tag einfügen
            x[code_start] <- paste0(x[code_start], "\n:tags: [hide-cell]\n")
            }
          }
          break
        }
      }
    }
  }
  return(x)
}

#' replace_code
#' 
#' Ersetzt rmd code-Blöcke durch myst code-Blöcke. Einige der Tags werden automatisch
#' übersetzt
#' @param x text
#' @return x 
replace_code <- function(x){
  for(i in 1:length(x)){
    if(grepl(pattern = "```\\{ *r", x = x[i])){
      # code starts
      # check tags
      tags_rmd <- x[i] |>
        stringr::str_extract_all(pattern = '[a-zA-Z]+[0-9 ]*=[ ]*[\\"0-9a-zA-Z]+') |>
        unlist() |>
        gsub(pattern = " ", replacement = "")
      if(length(tags_rmd) > 0)
        tags_rmd <- stringr::str_split_fixed(tags_rmd, pattern = "=", n = 2)
      
      # search for end:
      tags_qmd <- c()
      empty_lines <- c()
      
      for(j in (i+1):length(x)){
        if(grepl(pattern = "```", x = x[j]))
          break # code ends
        
        # check for qmd-tags. These start with #| and use tag: value
        if(grepl(pattern = "#\\Q|\\E", x = x[j])){ # check for #|
          tag <- x[j] |>
            # extract tag: value 
            stringr::str_extract(pattern = '[a-zA-Z]+[0-9 ]*:[ ]*[\\"0-9a-zA-Z]+') |>
            unlist() |>
            gsub(pattern = " ", replacement = "")
          if(length(tag) > 0)
            tags_qmd <- rbind(tags_qmd,
                              stringr::str_split_fixed(tag, pattern = ":", n = 2)
            )
          # store empty line
          empty_lines <- cbind(empty_lines, j)
        }
      }
      
      tags <- rbind(tags_rmd, tags_qmd)
      
      if(length(tags) > 0){
        
        tags_myst <- apply(tags, 1, function(x) replace_tags(tag = x[1], value = x[2]))
        
      } else {
        
        tags_myst <- c()
        
      }
      
      if(any(tags_myst == ":tags: [NO-EVAL]")){
        
        # replace code start:
        x[i] <- "``` r"
        
      } else {
        
        # replace code start and add tags:
        x[i] <- paste0(
          c("```{code-cell} r",
            tags_myst)
          , 
          collapse = "\n")
      }
    }
  }
  x <- x[-empty_lines]
  return(x)
}

#' add_download_button
#' 
#' Fügt einen download-link hinzu (aktuell noch kein Button)
#' @param file_name_rmd z.B. Uebung.Rmd
#' @param x text
#' @return x
add_download_button <- function(file_name_rmd, x){
  
  location <- paste0("https://raw.githubusercontent.com/Methods-Berlin/RTraining/main/Aufgaben_rmd/", 
                     file_name_rmd)
  
  link <- paste0("<a href=",location," download=",file_name_rmd,">RMarkdown-Datei herunterladen</a>")
  
  for(i in 1:length(x)){
    
    if(grepl("# ", x[i])){
      x[i] <- paste0(x[i], "\n\n", link, "\n")
      break
    }
    
  }
  
  return(x)
}

#' rmd2myst
#' @param file_name Name der Rmd Datei. Diese muss sich im aktuellen working directory befinden
#' @param source_folder wo ist die rmd - Datei gespeichert?
#' @param target_folder wo soll die Datei gespeichert werden?
#' @param myst_yaml optional: YAML header für die myst - Datei
#' @return erstellt eine .md Datei im myst - Style
rmd2myst <- function(file_name,
                     source_folder,
                     target_folder,
                     myst_yaml = NULL) {
  # Einlesen der Rmd Datei
  save_as <- paste0(target_folder, "/", gsub("\\.Rmd", ".md", file_name))
  dat <- file(paste0(source_folder, "/", file_name))
  x <- readLines(dat) # jede Zeile im Dokument wird zu einem Element im Vektor
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
    "---
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
  
  # Download-Button hinzufügen
  x <- add_download_button(file_name_rmd = file_name, 
                           x = x)
  
  # Ersetzen der code-chunks
  
  x <- replace_code(x = x)
  
  # ersetzen der details
  x <- replace_details(x = x)
  
  # Überprüfen, ob alle code-chunks ersetzt wurden:
  if(any(grepl(pattern = "```\\{[\\s]*r", x = x))){
    stop("Die folgenden code-chunk konnte nicht automatisch übersetzt werden: \n",
         paste0(x[grepl(pattern = "```\\{[\\s]*r", x = x)], collapse = "\n")
    )
  }
  
  cat(x, file = save_as, sep = "\n")
}

translate_files <- function(source_folder = "Aufgaben_rmd", 
                            target_folder = "."){
  datei_namen <- list.files(path = source_folder, 
                            pattern = ".Rmd$",
                            full.names = FALSE)
  
  file_in_toc(Rmd_file_names = datei_namen, 
              toc_file_name = "_toc.yml")
  
  lapply(datei_namen, 
         rmd2myst, 
         source_folder = source_folder,
         target_folder = target_folder)
}


translate_files(source_folder = "Aufgaben_rmd", 
                target_folder = ".")
