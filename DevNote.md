
inside each program dir

run,

eg
noarch/modules/abricate/1.0.1/Install.sh

actually,  all this should be scripted to pull all container at once?
get as close to "single button" install as possible.

pre-populate with container download script in a standard way, then a script that does:
Install_all.sh 
  find . -name build.sh -exec {} \;


but each program still have addtional customization 


input arguments:
have some settings.env file that store detination dir?
and whether to do cp or mv ?

( mv for the container image file, since it is not part of the git repo, 
but cp for the files that are in the fs tree of this repo, so that git doesnt complain of moved files? )

copy/move resulting .sift to the SMF


Historically, some container image file (SIF) is just renamed as the program itself or has a link, eg:

(TBD, beast2 ?)
(beast2 -> beast.somever.SIF ?) 


more recently, a shell script matching the program name is used to call the program, eg:

noarch/modules/abricate/1.0.1/abricate

this make it slightly easier for user to call it, 
or when the container has multiple tools that need to be exposed.

(see eg phylotools)
