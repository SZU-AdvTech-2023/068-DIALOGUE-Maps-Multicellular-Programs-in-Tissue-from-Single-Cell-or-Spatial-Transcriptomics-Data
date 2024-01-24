import anndata
adata = anndata.read_h5ad('/mnt/sda/Pan_disease/geneid_correction/home/zangyupeng/05.ExtendDisk/01.kangnana/02.project/02.project/geneid_correction/preproceesing_concat_geneid/immune_all_annotated.h5ad')

print(adata)
adata.obs['type']
subset = adata[adata.obs['type'] == 'HBV']
print(subset)



存数据
touch test.h5ad
import h5py

# 指定文件名
file_name = 'your_file.h5ad'

# 创建一个空的 h5py 文件
with h5py.File(file_name, 'w') as file:
    # 可以在这里添加数据或者后续写入数据
    # 例如，创建一个数据集并写入一些示例数据
    dataset = file.create_dataset('example_data', data=subset)
到这里服务器一直在运行。。。。。