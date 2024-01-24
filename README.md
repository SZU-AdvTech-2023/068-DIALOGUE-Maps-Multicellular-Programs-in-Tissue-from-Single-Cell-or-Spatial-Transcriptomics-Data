DIALOGUE是一种降维方法，它利用跨细胞类型的关联来识别多细胞程序（MCPs）并将细胞转录组作为其环境的函数进行映射。给定单细胞数据，它结合了惩罚矩阵分解和多层建模，以识别可推广的MCPs，并检查它们与特定感兴趣的表型的关联。
指南：
安装DIALOGUE可以使用devtools::install_github(repo = "https://github.com/livnatje/DIALOGUE")或者直接下载其R包并使用devtools::install("DIALOGUE")。

输入包括不同细胞类型的单细胞转录组数据，通常还包括更紧凑的表示（例如主成分）。输出将是跨不同细胞类型共调控基因的多细胞程序（MCPs），它们在细胞中的表达以及与特定感兴趣的表型的关联。每个MCP由多个细胞类型特异性基因子集组成。

对于特定的细胞间“相互作用”，可以运行成对的版本，使用两个感兴趣的细胞类型的数据作为输入。DIALOGUE还可以识别跨多个细胞类型的MCPs

要求：
R (tested in R version 3.4.0).
R libraries: lme4, lmerTest, PMA, plyr, matrixStats, psych, stringi, RColorBrewer, unikn, reshape2, ggplot2, grid, beanplot, parallel
引用链接：
Jerby-Arnon & Regev. DIALOGUE maps multicellular programs in tissue from single-cell or spatial transcriptomics data. Nature Biotechnology 2022.
文件路径：
/mnt/sda/Pan_disease/geneid_correction/home/zangyupeng/05.ExtendDisk/01.kangnana/02.project/02.project/geneid_correction/preproceesing_concat_geneid/
