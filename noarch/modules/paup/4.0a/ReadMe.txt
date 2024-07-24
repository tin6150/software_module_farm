
paup runs the singularity containerized version of paup.  it seems that in this version, running threads = number of cores of machine somehow takes very long time.  paup may not be scaling well.  use 1 fewer core for things like 
lset nthreads= (1 less core)

works fine.

(at least as tested on n0060.savio4)

alternatively, 
the binary paup4a168_ubuntu64 is from ubuntu and works in savio
preliminary test with such binary is that nthreds=(actual num of core on machine) is ok, no strange slowdown.

tin@berkeley.edu
2022.1204



~~~~

# need to fetch sif files first, then cretae links as:
ln -s paup4.sif paup
ln -s paup4a168_ubuntu64 paup_ubuntu_link

# ie no shell wrapper script used with this program, running the SIF file directly invoke paup and runs fine
