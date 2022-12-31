# CAD TOOL DEPENDENCIES
This Repo is dedicated for all Newcomers and Students to IC development
who has dependency issues with Cadence or Synopsys or Mentor tools on newer versions of 
Red Hat Enterprise Linux , RHEL8 and RHEL9, these scripts aims to install most of needed
packages for the CAD tools .
Cadence officially doesn't support RHEL 8 or 9 but still some things(ykr) can be fixed anyway.

RHEL 8:
Enter in bash shell

      ./cad-setup-el8.sh 

as user and give root passwords as it promts or execute as root

RHEL 9:
Enter in bash shell
      
      ./cad-setup-el9.sh 

as user and give root passwords as it promts or execute as root
and it will install most needed things .


Some Additional Help TIPS:

if you get errors like these :



      version `CXXABI_1.3.8' not found (required by /lib64/libGLU.so.1)
      version `CXXABI_1.3.9' not found (required by /lib64/libGLU.so.1)


Kindly do not look at the ceiling fan or listen to sad songs, 
in the same shell type 

      echo $0

it will show your shell envionment 
if it says 

      bash

type this:

      export QT_DEBUG_PLUGINS=1

if it says 
      
      csh
      
type this:


      setenv QT_DEBUG_PLUGINS 1
      
      
if using any other shell , you already know what i mean.
then look at the path of file that is offending, it must be in cad tool install directory rename it 
to .bak or remove as you like to and if anymore thing is missing or old just search the binary name space your distro name on your search 
engine to know which package provides it and install.

on latest versions of cadence IC or ICADVM if you need performance metrics
there should be an error of gdb not found 
this is tricky because the easiest way to fix it is 
set the gdb environment variable to xcellium gdb executable path

another way of fixing it can be done via 
setting PYTHON_HOME variable to ic_or_icadvm_inst_dir/tools/python/64bit
this method breaks gdb outside the IC or ICADVM so only can be used for temporary metrics

third way is symlinking gdb in cad tools path or user accesible path and point the gdb 
environment variable to that executable path

      To Whom it Helps , with love Anish









