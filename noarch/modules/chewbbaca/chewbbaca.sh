ApptainerImg=./python-chewbbaca.SIF 
singularity  exec $ApptainerImg /usr/local/bin/chewbbaca $*


#singularity  exec /global/software/rocky-8.x86_64/manual/modules/apps/bio/bioabricate/1.0.1/abricate.sif /usr/local/bin/abricate $*
#singularity  exec /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/abricate/1.0.1/abricate.sif /usr/local/bin/abricate $*
#singularity exec                /global/software/vector/sl-7.x86_64/modules/abricate/1.0.1/abricate.sif /usr/local/bin/abricate $*
