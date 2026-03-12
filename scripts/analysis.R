# RNA-Seq Differential Gene Expression Analysis
# Dataset: GSE122709

library(DESeq2)
library(ggplot2)

# Load count matrix
counts <- read.csv("counts_matrix.csv", row.names = 1)

# Load metadata
metadata <- read.csv("metadata.csv")

# Create DESeq dataset
dds <- DESeqDataSetFromMatrix(
  countData = counts,
  colData = metadata,
  design = ~ condition
)

# Run analysis
dds <- DESeq(dds)

# Extract results
res <- results(dds)

# Save DEG table
write.csv(res, "../results/DEG_results.csv")

# Volcano plot
res$logp <- -log10(res$pvalue)

ggplot(res, aes(x = log2FoldChange, y = logp)) +
  geom_point(alpha = 0.6) +
  theme_minimal()

ggsave("../results/volcano_plot.png")
