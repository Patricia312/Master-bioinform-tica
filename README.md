<h1 align="center">
  <a name="UNIR" href="https://www.unir.net/salud/master-bioinformatica/"><img src="https://i.pinimg.com/originals/70/a4/60/70a4603d354a9671ec8d0d484d710571.jpg" alt="UNIR" width="160"></a>
  <br>
  Identificación de biomarcadores predictivos de respuesta a la inmunoterapia en microbiota intestinal en pacientes con cáncer colorrectal
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

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Hipótesis

La composición y funcionalidad de la microbiota intestinal difiere significativamente entre pacientes con cáncer colorrectal que responden a la inmunoterapia y aquellos que no, y estas diferencias pueden ser utilizadas para identificar biomarcadores microbianos predictivos de la respuesta al tratamiento.

- **Objetivo general:**
  + Identificar biomarcadores microbianos predictivos de la respuesta a la inmunoterapia en pacientes con cáncer colorrectal, a través del análisis metagenómico de la microbiota intestinal.

- **Objetivos específicos:**
  + Caracterizar la composición de la microbiota intestinal de pacientes con CRC usando datos de secuenciación 16S rRNA y QIIME2.
  + Analizar la expresión génica diferencial en tejido tumoral vs. normal usando datos de RNA-seq y herramientas de R (DESeq2, edgeR).
  + Identificar correlaciones entre perfiles microbianos específicos y la expresión de genes inmunológicos (por ejemplo, IL-6, IFN-γ, PD-L1) como base para la búsqueda de biomarcadores predictivos de respuesta a inmunoterapia en cáncer colorrectal
  + Validar in silico posibles rutas metabólicas y redes de interacción relacionadas con los analitos inmunológicos implicados en la respuesta a inmunoterapia(KEGG,STRING ,MetaboAnalyst, Cytoscape)

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Metodología

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
   - Identificar genes inmunológicos( IL-6, IFN-γ, PD-L1).
   - Visualizar resultados con gráficos de volcán y mapas de calor.

4. Correlación entre microbiota y expresión génica inmunológica
   - Extraer abundancias relativas de bacterias específicas obtenidas con QIIME2.
   - Extraer niveles de expresión de genes inmunológicos significativos.
   - Realizar análisis de correlación (Pearson o Spearman) entre abundancias microbianas y expresión génica usando R.
   - Identificar asociaciones estadísticamente significativas que puedan sugerir biomarcadores predictivos.

5. Análisis in silico de rutas metabólicas y redes de interacción
   - Usar base de datos( KEGG) para mapear genes y microorganismos a rutas metabólicas implicadas en la inmunidad y respuesta a inmunoterapia.
   - Construir redes de interacción proteína-proteína con STRING usando los genes inmunológicos identificados.
   - Analizar metabolitos y rutas metabólicas relevantes con MetaboAnalyst.
   - Visualizar redes e interacciones con Cytoscape, resaltando conexiones entre biomarcadores microbianos y rutas inmunológicas.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Resultados

Interpretar los resultados para identificar posibles biomarcadores microbianos que predicen la respuesta a inmunoterapia.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Ayuda

:dna:	Cualquier duda es bienvenida y puede ser aportada en [Issues](https://github.com/Patricia312/Master-bioinform-tica/issues)! :dna:	

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Autores

* <a href="https://github.com/guillemares"><img src="https://avatars.githubusercontent.com/u/144935605?v=4" title="guillemares" width="25" height="25"></a> **Guillem Arasa**
* <a href="https://github.com/Patricia312"><img src="https://avatars.githubusercontent.com/u/211718519?v=4" title="Patricia312" width="25" height="25"></a> **Patricia Sánchez**
* <a href="https://github.com/"><img src="" title="Julio" width="25" height="25"></a> **Julio César Henríquez**
* <a href="https://github.com/"><img src="" title="Raul" width="25" height="25"></a> **Raúl Caballero**
* <a href="https://github.com/"><img src="" title="Reyes" width="25" height="25"></a> **María Reyes Mora** 

Holaaaaaa :)

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Historial de Versiones

Este repositorio se encuentra en la versión 0.1.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.

## Licencia

Este repositorio se encuentra bajo la licencia MIT.

> [!NOTE]
> Esta sección se encuentra actualmente en desarrollo y puede sufrir cambios.
