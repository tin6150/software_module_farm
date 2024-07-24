

There are many phylogenetics tool in this singularity container.
They are just essentially binaries from ubuntu 20.04 apt install

example usage:

#--singularity exec /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/prokka/1.14.5/prokka.sif \
singularity exec /global/software/rocky-8.x86_64/manual/modules/apps/bio/phylotool/u20.04/prokka \
  prokka --outdir PROKKA  --prefix $ORG-{} --centre _pilon --compliant --force {}.fasta

#--singularity exec /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/phylotool/u20.04/phylotool.sif \
singularity exec /global/software/rocky-8.x86_64/manual/modules/apps/bio/phylotool/u20.04/phylotool.sif \
  roary -e -n -mafft -p $Thread *.gff

singularity exec /global/software/rocky-8.x86_64/manual/modules/apps/bio/phylotool/u20.04/phylotool.sif \
    snp-sites -p  -o animal.phy  core_gene_alignment.aln

singularity exec /global/software/rocky-8.x86_64/manual/modules/apps/bio/phylotool/u20.04/phylotool.sif \
    raxmlHPC-PTHREADS-AVX  -s animal.phy           -n animal.tre           -m GTRCAT -f a -x 123 -N autoMRE -p 456  -T $Thread


Contact Tin@Berkeley if you have questions/suggestions.
