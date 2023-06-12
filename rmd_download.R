# Dieses R-Script entfernt automatisch alle R Chunks mit dem Label "Loesung", sodass die Aufgaben ohne Lösungen 
# heruntergeladen werden können.

library(stringr)

# Damit die Code Chunks, die zur Lösung gehören erkannt werden, müssen diese mit einem html-Kommentar gekennzeichnet werden.
# Die Kommentar sollten forgendermaßen aussehen: 

# <!-- loesung: start-->
# Code Chunk
# <!-- loesung: ende-->

#' loesung_entf
#' 
#' Entferne Lösungen, falls vorhanden
#' @param file_name name of the Rmd file
#' @param x text (Datei)
#' @return x

loesung_entf <- function(file_name, x){
  for(i in 1:length(x)){
      if(grepl("<!-- *loesung: *start-->", x[i]) & 
         !grepl("`<!-- *loesung: *start-->`", x[i]) # ignore code-examples
         ){
        start <- i
        # suche Ende
        for(j in i:length(x)){
          if(grepl("<!-- *loesung: *ende-->", x[j])){
            end <- j
            # 
            if(length(end)==0){
              stop("Folgende Lösung wurde nicht mit \"<!-- loesung: ende-->\" beendet:\n",
                   "\tFile: ",
                   file_name, "\n",
                   "\tZeile ",
                   start)
            } else {
              start_2 <- str_detect(x[(start+1):end], "<!-- *loesung: *start-->")
              if(any(start_2)){
                stop("Folgende Lösung wurde nicht mit \"<!-- loesung: ende-->\" beendet:\n",
                     "\tFile: ",
                     file_name, "\n",
                     "\tZeile ",
                     start)
              } else {
                
                x <- x[-c(start:end)]
              }
            break
            }
          }
       }
     }
  }
  return(x)
}

#' rmd_for_download

rmd_for_download <- function(file_name,
                     source_folder,
                     target_folder) {
  # Einlesen der Rmd Datei
  save_as <- paste0(target_folder, "/", file_name)
  dat <- file(paste0(source_folder, "/", file_name))
  x <- readLines(dat) # jede Zeile im Dokument wird zu einem Element im Vektor
  close(dat)
  
  x <- loesung_entf(file_name = file_name, x = x)
  
  cat(x, file = save_as, sep = "\n")
}

translate_files <- function(source_folder, 
                            target_folder){
  datei_namen <- list.files(path = source_folder, 
                            pattern = ".Rmd$",
                            full.names = FALSE)
  
  lapply(datei_namen, 
         rmd_for_download, 
         source_folder = source_folder,
         target_folder = target_folder)
}


translate_files(source_folder = "Aufgaben_rmd", 
                target_folder = "Rmd_ohne_Loesungen")
