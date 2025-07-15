# python lib for required packages not available on the system
# install e.g. using:
#    pip3 install numpy scipy rpy2 matplotlib sinfo pandas --target ./pythonlib/ --upgrade
#                 or:
#    module load Miniconda3/4.10.3
#    conda create --prefix /tungstenfs/groups/gbioinfo/stadler/documents/teaching/adv_singlecell_2022/day1_python_and_R/pythonenv python=3.9 numpy scipy rpy2 matplotlib sinfo pandas jupyter jupyterlab --channel conda-forge
#    conda activate /tungstenfs/groups/gbioinfo/stadler/documents/teaching/adv_singlecell_2022/day1_python_and_R/pythonenv
#    Rscript /tungstenfs/groups/gbioinfo/stadler/documents/teaching/adv_singlecell_2022/day1_python_and_R/R_requirements.R

system("pip3 install numpy scipy rpy2 matplotlib sinfo pandas --target ./pythonlib/ --upgrade")

library(reticulate)
py_config()
py_available()


