## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(TNRS)

# Primero, tomaremos un conjunto de datos como ejemplo, esta tiene
# dos columnas: número de fila (ID) y nombre científico (taxon).

fulldata <- tnrs_testfile

head(fulldata, n = 20)

# Tenga en cuenta que en el ejemplo los nombres científicos se
# presentan bajo diferentes formatos, que a veces incluyen:
# Solo nombre científico
# Solo género
# Familia y género
# Familia, nombre científico y autor

# La función a utilizar es `TNRS()`:

results <- TNRS(taxonomic_names = fulldata)

# Inspección de los resultados

head(results, 10)

# El resultado es un data.frame que incluye la información referente
# a cada uno de los nombres ingresados, la valoración de la coincidencia
# (similitud del nombre ingresado y el nombre coincidente), el nombre
# coincidente, el estado del nombre coincidente y el nombre aceptado.

## -----------------------------------------------------------------------------
metadata <- TNRS_metadata()

# Si desea conocer la información de la versión TNRS que utilizas (por
# ejemplo, para añadir la referencia en una publicación):

metadata$version

# Para conocer cuales son las fuentes que se utilizan en TNRS:

metadata$sources

# Para obtener la información de las referencias bibliográficas y
# añadirla  a un gestor de referencias (por ejemplo, Paperpile,
# Zotero):

# writeLines(text = metadata$citations$citation)

