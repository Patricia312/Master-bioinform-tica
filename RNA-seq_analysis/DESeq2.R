# Cargar librerías necesarias
library(DESeq2)

# Importar datos de cuenta (matriz de expresión)
counts <- read.csv("DESeq2_results.csv", row.names = 1)

# Crear objeto DESeq2
dds <- DESeqDataSetFromMatrix(countData = counts, colData = ..., design = ~ condition)

# Ejecutar análisis diferencial
dds <- DESeq(dds)

# Obtener resultados
res <- results(dds)
