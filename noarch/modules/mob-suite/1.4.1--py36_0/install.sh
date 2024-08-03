
#!/bin/sh

# https://github.com/phac-nml/mob-suite?tab=readme-ov-file#singularity-image

latest_version=$(curl -H "Authorization: Bearer X" -X GET "https://quay.io/api/v1/repository/biocontainers/mob_suite/tag/" | jq .tags[].name | head -1 | sed -e 's|\"||g')

# need jq , some jquery tool?  json tool?

echo $latest_version 
# 1.4.1--py36_0 # 2024.0729

singularity pull mob_suite.sif docker://quay.io/biocontainers/mob_suite:${latest_version}


# need `makeblastdb`, seems to be avail from blast+ (ie newer blast pkg has this cmd)
apt install ncbi-blast+

# no db install yet.

#XX DB_DIR=/global/home/users/tin/gs/dataCache    # savio tmp
INSTALL_BASEDIR=/global/scratch/users/tin/cacheDir/mob_suite

cd $INSTALL_BASEDIR
mkdir databases
./mob_suite.sif
touch /etc/resolv.conf
# container has no /etc/resolv.conf thus can't bind mount that...  thus seeding it
# WARNING: Skipping mount /var/lib/apptainer/mnt/session/etc/resolv.conf [files]: /etc/resolv.conf doesn't exist in container


#mob_init  # failed, complain RO dir, wants to write to
# /usr/local/lib/python3.6/site-packages/mob_suite/databases/data.zip

#nope# singularity exec --bind $PWD:/mnt/mob_recon $INSTALL_BASEDIR/mob_suite.sif mob_init 
#try:  singularity exec --bind $PWD:/mnt/          $INSTALL_BASEDIR/mob_suite.sif mob_init 


singularity exec --bind /etc/resolv.conf --bind ./databases:/usr/local/lib/python3.6/site-packages/mob_suite/databases/ $INSTALL_BASEDIR/mob_suite.sif mob_init 

# downloading...   crapped with some strange error (bad code? shouldn't be...)   try docker process instead, more writable container, though ephemeral...


#///

# local install  eg wsl
export PATH=$HOME/.local/bin:$PATH

