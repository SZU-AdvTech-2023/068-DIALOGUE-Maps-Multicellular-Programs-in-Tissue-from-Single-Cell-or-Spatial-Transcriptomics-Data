install.packages("Seurat")
library(Seurat)
# 例如，假设你的txt文件包含细胞名称在第一列，基因表达值从第二列开始
data <- read.table("D:\\05.HP\\Infect_HP_P_01.txt\\Infect_HP_P_01.txt", header = TRUE, row.names = 1)
# 创建一个空的Seurat对象
seurat_obj <- CreateSeuratObject(counts = data)
# 进行一些预处理，例如，归一化和标准化数据
seurat_obj <- NormalizeData(seurat_obj)
seurat_obj <- ScaleData(seurat_obj)
# 使用Seurat的聚类和降维函数对数据进行分析。,例如，运行聚类和UMAP
seurat_obj <- FindNeighbors(seurat_obj)
seurat_obj <- FindClusters(seurat_obj)
seurat_obj <- RunUMAP(seurat_obj) #可能运行不出来但是不影响
# 使用Seurat的可视化函数和分析工具对结果进行可视化和进一步分析，例如，绘制UMAP图和基因表达热图
DimPlot(seurat_obj)
FeaturePlot(seurat_obj, features = c("gene1", "gene2"))
# 将Seurat对象保存到文件中
saveRDS(seurat_obj, file = "D:\\05.HP\\Infect_HP_P_01.rds")

