#!/bin/bash

#SBATCH -p hpc-bio-mendel
#SBATCH --chdir=/home/alumno26/lab3
#SBATCH -J submit_lab_3
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=4

for fichero in *.fastq; do
  ./file-cut.sh "$fichero" &
done

