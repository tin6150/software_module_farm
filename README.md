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
- beast
    - ...
- phyltools
    - ...


- perf_tools
    - idrac
    - ... 
