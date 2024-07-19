# software_module_farm
build a software tree on a NFS sever for shared host use, eg in HPC cluster

LBNL LRC cluster and UC Berkeley savio cluster  has SMF that was largely build by a series of scripts that essentially did ./configure && make install .

I have attempted to build some tools using containers, which are peppered all over the places in multiple repos.  Then I learned bioconda has lot of readily usable containers.

Here, this repo tries to pull together all such myriad container-based programs, which can work as regular binaries after doing eg module load abricate


A newer attempt to SMF is to use Spack, but that seems to have its challenges as well (EasyBuild wasn't exactly easy).  Most of the SMF will move to spack-based install, but python isn't handled, so next attempt here is to have a python container.


# modules

tcl/tk or lua modules can read the same config file?

they are saved under

os/modfiles/SW/ver as series of files


the actual binary will be pulled and stored in 

os/modules/SW/ver/ 


# OS dependency

Most of the softwrae were build when the cluster was running Scientific Linux 7 (RHEL 7 equivalent).
But most if not all are container based, they are intended to be used via singularity (apptainer), thus host OS version should not matter.



# Available softwre


- abricate
    - 1.0.1        [bioconda]
    - 1.0.1-jgrg   [custom container with db for JGRG]
- phyltool
    - u20.04 has: 
  - NCLconverter
  - art
  - beast2-mcmc
  - clearcut
  - clustalo
  - clustalw
  - clustalx
  - examl
  - figtree
  - iqtree
  - mafft
  - mb
  - metaphlan2
  - muscle
  - njplot
  - phast
  - phyml
  - prokka
  - raxmlHPC
  - roary
  - run_gubbins
  - seaview
  - snp-sites
  - squizz
  - sumtrees
  - tree-puzzle


ezclermont:
0.7.0

integron_finder:
2.0.2

mlst:
2.19.0

paup:
4.0a

prokka:
1.14.5

snippy:
4.6.0

unicycler:
0.5.0

To be readded to this repo tree:

- beast
    - 2.4.7        [local build by Nicolas?]
    - 2.6.4        [versions: beagle, noOCL]

For consideration :

- python ?
- R/Rstudio ?        [with pacman, from r4eta or trim back from atlas]
- 

- perf_tools
    - idrac
    - ... 

- satoolbag
