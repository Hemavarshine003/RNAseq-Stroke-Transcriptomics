# RNAseq-Transcriptomics
## RNA-Seq Analysis Workflow

The RNA-seq dataset was analyzed using the following pipeline:

1. RNA-seq dataset retrieved from GEO (GSE122709)
2. Raw sequencing reads downloaded from SRA
3. Quality control performed using FastQC
4. Gene count matrix prepared for downstream analysis
5. Differential gene expression analysis performed using DESeq2 in R
6. PCA and volcano plots generated for visualization
7. Significantly upregulated and downregulated genes identified

## Results


## RNA-seq Quality Control

Quality assessment of sequencing reads was performed using FastQC.

### Per Base Sequence Quality
![Per Base Quality](results/fastqc/per_base_quality.png)

### Adapter Content
![Adapter Content](results/fastqc/adapter content.png)

### Sequence Length Distribution
![Sequence Length](results/fastqc/seq_length_distribution.png)

### Sequence Duplication
![Sequence Duplication](results/fastqc/sequence_duplication.png)

## Differential Gene Expression Results

Differential expression analysis was performed to identify genes significantly altered between stroke patients and healthy controls.

### PCA Plot

Principal Component Analysis (PCA) showing clustering of stroke and control samples.

![PCA Plot](results/differential_expression/PCA_Plot.png)

### Volcano Plot

Visualization of significantly upregulated and downregulated genes.

![Volcano_Plot](results/differential_expression/volcano plot.png)

### Heatmap of Differentially Expressed Genes

Heatmap representing the expression patterns of top differentially expressed genes.

![Heatmap](results/differential_expression/Heatmap.png)

### Pathway Enrichment Analysis

Biological pathway enrichment analysis of significantly regulated genes.

![Pathway_Analysis](results/differential_expression/pathway analysis.png)

