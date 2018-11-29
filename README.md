#Data Science Notebook - Core

Jupyter Notebook inside a Docker container with R 3.5.1 and Python 3.6.6.

The notebook server is built on Ubuntu Bionic (18.04LTS) and contains the following base R and Python packages.

R=3.5.1 | Python=3.6.6
-|-
dplyr | jupyter
tidyr | pandas
lubridate | matplotlib
stringr | scipy
ggplot2 |numpy
reshape2 |	cutadapt

Python=2.7.0
numpy
wheel
macs2
edd
cython
pysam=0.11.2.2


IRKernel is installed and configured.

Installed programs: fastqc, trim_galore, bowtie2, samtools, UCSC genome utilities (for bedGraphToBigWig)

To run the notebook server use the following command.

```
docker run -d -p 8888:8888-v "${PWD}":"/data" --name ds_notebookserver \
    ds_notebook_server:latest  /bin/bash -c "jupyter notebook --ip 0.0.0.0 --no-browser \
    --allow-root --NotebookApp.token='' --notebook-dir='/data'"
```
Open your browser to localhost:8888 to view the notebook.

Bash scripts are provided to start and stop the notebook server.

```
./run_dsnotebook.sh
./stop_dsnotebook.sh
```
