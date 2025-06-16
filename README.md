<h1 align="center">
  <a name="UNIR" href="https://www.unir.net/salud/master-bioinformatica/"><img src="https://i.pinimg.com/originals/70/a4/60/70a4603d354a9671ec8d0d484d710571.jpg" alt="UNIR" width="160"></a>
  <br>
 Identificación de biomarcadores predictivos de respuesta a inmunoterapia en pacientes con cáncer colorrectal mediante análisis ómico integrativo
</h1>
<h3 align="center"> Introducción a la Programación Científica </h3>
<h4 align="center"> <ins>Máster en Bioinformática<ins> </h4>
<div align="center">

<!-- 
  <h4>
    <a href="https://github.com/Eines-Informatiques-Avancades/Project-II/commits/master"><img src="https://img.shields.io/github/last-commit/Eines-Informatiques-Avancades/Project-II.svg?style=plasticr"/></a>
        <a href="https://github.com/Eines-Informatiques-Avancades/Project-II/commits/master"><img src="https://img.shields.io/github/commit-activity/y/Eines-Informatiques-Avancades/Project-II.svg?style=plasticr"/></a>
  </h4>
-->

</div>
<p><font size="3">

<p align="center">
  <a href="#introducción">Introducción</a> •
  <a href="#hipótesis">Hipótesis</a> •
  <a href="#metodología">Metodología</a> •
  <a href="#resultados">Resultados</a> •
  <a href="#ayuda">Ayuda</a> •
  <a href="#autores">Autores</a> •
  <a href="#historial-de-versiones">Historial de Versiones</a> •
  <a href="#licencia">Licencia</a>
</p>

## Introducción

El cáncer colorrectal (CCR) representa una de las principales causas de mortalidad por cáncer a nivel mundial. La inmunoterapia ha emergido como una opción prometedora en ciertos subgrupos de pacientes, sin embargo, no todos los pacientes responden de igual manera. 
En los últimos años, la evidencia ha mostrado que la composición de la microbiota intestinal puede modular la respuesta inmune del huésped, afectando tanto la progresión del cáncer como la eficacia de terapias como la inmunoterapia.
El análisis de la microbiota a través de tecnologías ómicas (principalmente metagenómica y transcriptómica) permite identificar biomarcadores microbianos asociados a la eficacia del tratamiento.
Un biomarcador predictivo es una señal biológica (como un gen o una proteína) que te ayuda a predecir cómo responderá un paciente a un tratamiento.
Esta propuesta busca desarrollar un pipeline bioinformático básico para identificar dichos biomarcadores.

Considerando la relevancia de la microbiota intestinal en la respuesta inmunitaria antitumoral, esta introducción sienta las bases para explorar la identificación de biomarcadores predictivos de respuesta a la inmunoterapia en la microbiota intestinal en pacientes con cáncer colorrectal.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Hipótesis

La composición y funcionalidad de la microbiota intestinal difiere significativamente entre pacientes con cáncer colorrectal que responden a la inmunoterapia y aquellos que no, y estas diferencias pueden ser utilizadas para identificar biomarcadores microbianos predictivos de la respuesta al tratamiento.

- **Objetivo general:**
  + Desarrollar un pipeline bioinformático capaz de identificar biomarcadores microbianos predictivos de la respuesta a la inmunoterapia en pacientes con cáncer colorrectal, facilitando así la estratificación temprana de pacientes con CCR candidatos a inmunoterapia 

- **Objetivos específicos:**
  + Caracterizar la composición de la microbiota intestinal de pacientes con CRC usando datos de secuenciación 16S rRNA y QIIME2.
  + Analizar la expresión génica diferencial en tejido tumoral vs. normal usando datos de RNA-seq y herramientas de R (DESeq2, edgeR).
  + Identificar correlaciones entre perfiles microbianos específicos y la expresión de genes inmunológicos (por ejemplo, IL-6, IFN-γ, PD-L1), y así establecer una lista preliminar de biomarcadores microbianos con potencial valor predictivo de respuesta a inmunoterapia en cáncer colorrectal
  + Validar *in silico* posibles rutas metabólicas y redes de interacción relacionadas con los analitos inmunológicos implicados en la respuesta a inmunoterapia(KEGG, STRING, MetaboAnalyst, Cytoscape)

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Metodología

Nuestra propuesta integra múltiples disciplinas ómicas, como la metagenómica, transcriptómica y el análisis de redes metabólicas, lo que facilita una evaluación más robusta y significante del potencial predictivo de estos marcadores.   

1. Obtención y preparación de datos
   - Datos de microbiota intestinal:
   - Secuenciación del gen 16S rRNA de muestras fecales o de tejido intestinal de pacientes con CRC. Estos datos pueden ser propios o de bases públicas (TCGA para RNA-seq y PRJNA para microbiota 16S, NCBI SRA).
   - Datos transcriptómicos (RNA-seq):
   - Datos de expresión génica de tejido tumoral y tejido normal de los mismos pacientes.

2. Análisis de la microbiota intestinal usando QIIME2
   - Importar datos crudos de secuenciación 16S en QIIME2.
   - Realizar control de calidad y filtrado de secuencias (por ejemplo, eliminación de secuencias de baja calidad o artefactos).
   - Asignar taxonomía a las secuencias mediante bases de datos como SILVA o Greengenes.
   - Calcular diversidad alfa (riqueza y diversidad dentro de cada muestra) y beta (diferencias entre muestras).
   - Visualizar composición microbiana a nivel de filo, género y especie para cada grupo (tumoral vs. control).

3. Análisis de expresión génica diferencial (RNA-seq) en R
   - Importar datos RNA-seq crudos (cuentas de lecturas por gen) en R.
   - Usar paquete DESeq2  para normalizar datos y realizar análisis diferencial entre tejido tumoral y normal.
   - Identificar genes inmunológicos(IL-6, IFN-γ, PD-L1).
   - Visualizar resultados con gráficos de volcán y mapas de calor.

4. Correlación entre microbiota y expresión génica inmunológica
   - Extraer abundancias relativas de bacterias específicas obtenidas con QIIME2.
   - Extraer niveles de expresión de genes inmunológicos significativos.
   - Realizar análisis de correlación (Pearson o Spearman) entre abundancias microbianas y expresión génica usando R.
   - Identificar asociaciones estadísticamente significativas que puedan sugerir biomarcadores predictivos.

5. Análisis in silico de rutas metabólicas y redes de interacción
   - Usar base de datos(KEGG) para mapear genes y microorganismos a rutas metabólicas implicadas en la inmunidad y respuesta a inmunoterapia.
   - Construir redes de interacción proteína-proteína con STRING usando los genes inmunológicos identificados.
   - Analizar metabolitos y rutas metabólicas relevantes con MetaboAnalyst priorizando aquellos con función inmunorreguladora conocida. 
   - Visualizar redes e interacciones con Cytoscape, resaltando conexiones entre biomarcadores microbianos y rutas inmunológicas.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Resultados

El análisis de la microbiota intestinal reveló diferencias significativas entre los pacientes que respondieron a la inmunoterapia y aquellos que no lo hicieron. En
primer lugar, se observó una mayor diversidad alfa los que respondieron, medida a través de los índices de Shannon y Simpson, lo cual sugiere una comunidad
microbiana más rica y equilibrada en este grupo. Además, el análisis de diversidad beta mediante coordenadas principales (PCoA) mostró una clara separación entre
los grupos, lo que indica diferencias marcadas en la composición microbiana. Por otro lado, a nivel taxonómico, los pacientes respondedores presentaron una mayor abundancia relativa de géneros como Akkermansia muciniphila, Faecalibacterium prausnitzii y Bifidobacterium spp., todos ellos previamente asociados a un perfil inmunológico favorable. En cambio, los no respondedores mostraron un aumento en géneros como Fusobacterium nucleatum y Escherichia/Shigella, relacionados con inflamación y progresión tumoral.

El análisis de expresión diferencial, realizado con DESeq2 sobre datos de RNA-seq, identificó más de 200 genes significativamente alterados entre tejido tumoral y 
tejido sano. Entre los genes inmunológicos destacados se encuentran IL6, PD-L1 (CD274) e IFNG, cuya expresión fue más alta en los respondedores. De manera 
interesante, se encontró una correlación positiva entre la abundancia de Akkermansia y la expresión de IFNG, así como entre Faecalibacterium y PD-L1. Por el 
contrario, Fusobacterium mostró una correlación negativa con la expresión del gen CD8A, marcador de células T citotóxicas.

Finalmente, se llevó a cabo un análisis funcional *in silico* para explorar las posibles rutas metabólicas y de señalización implicadas. Los microorganismos más 
relevantes en los pacientes respondedores estaban asociados a rutas relacionadas con la producción de ácidos grasos de cadena corta, como el butirato, conocidos por 
su efecto antiinflamatorio e inmunomodulador. Las redes de interacción proteína-proteína, generadas con STRING y visualizadas en Cytoscape, destacaron módulos 
centrados en IL6–STAT3 y PD-L1–JAK1, confirmando su relevancia en la respuesta inmunológica. Además, el mapeo funcional en bases como KEGG sugirió que tanto genes 
como microorganismos implicados están relacionados con rutas clave de señalización inmune, como la vía del receptor de células T, NF-κB y apoptosis.

Estos hallazgos permiten proponer un conjunto preliminar de biomarcadores microbianos e inmunológicos que podrían tener valor predictivo en la respuesta a inmunoterapia en pacientes con cáncer colorrectal.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## 📁 Estructura del repositorio
- `RNA-seq_analysis`: scripts en bash, R y notebooks de Jupyter para analizar datos de RNA-seq.
- `correlation_analysis`: análisis de correlación entre microbiota y expresión de genes inmunológicos.
- `taxon_analysis`: análisis taxonómico de microbiota.
  - `scripts`: archivos auxiliares (árbol filogenético, abundancias relativas, metadatos).

## 🔧 Herramientas utilizadas

- QIIME2
- R (DESeq2, edgeR, ggplot2)
- Bash
- Jupyter Notebook
- KEGG
- STRING
- Cytoscape

## ▶️ Cómo ejecutar (ejemplo para RNA-seq_analysis)

```bash
# Clonar el repositorio
git clone https://github.com/tu-usuario/Master-bioinform-tica.git

# Entrar a la carpeta
cd RNA-seq_analysis

# Ejecutar los scripts en orden
bash 01_quality_fasta.sh
bash 02_alignment_star.sh
bash 03_counts_featurecounts.sh
... 
```

## Ayuda

:dna:	Cualquier duda es bienvenida y puede ser aportada en [Issues](https://github.com/Patricia312/Master-bioinform-tica/issues)! :dna:	

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Autores

* <a href="https://github.com/Patricia312"><img src="https://avatars.githubusercontent.com/u/211718519?v=4" title="Patricia312" width="25" height="25"></a> **Patricia Sánchez**
* <a href="https://github.com/Julio462-eng"><img src="https://avatars.githubusercontent.com/u/214000341?v=4" title="Julio" width="25" height="25"></a> **Julio César Henríquez**
* <a href="https://github.com/guillemares"><img src="https://avatars.githubusercontent.com/u/144935605?v=4" title="guillemares" width="25" height="25"></a> **Guillem Arasa**
* <a href="https://github.com/rcaballeromontes/"><img src="https://avatars.githubusercontent.com/rcaballeromontes" title="Raul" width="25" height="25"></a> **Raul Caballero Montes**
* <a href="https://github.com/pekitamora/"><img src="https://avatars.githubusercontent.com/u/129877015?v=4" title="Reyes" width="25" height="25"></a> **María Reyes Mora** 

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Historial de Versiones

Este repositorio se encuentra en la versión 0.2.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Licencia

Este repositorio se encuentra bajo la licencia MIT.

