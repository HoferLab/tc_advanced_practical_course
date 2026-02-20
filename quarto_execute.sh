module purge 
module load miniconda/tci-collection-v1   

# if conda env is not already created, create it
if [ ! -d $HOME/.conda/envs/quarto_env ]; then
    conda env create -f environment.yml
fi

source activate quarto_env

quarto render
