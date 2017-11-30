#!/bin/bash

set -eu

source ../../common-functions.sh

echo ""
echo "${info} *** Running '[fully qualified main class]' from within the module package in the '[...*]' folder (running 'org.astro.World' from within the module package in the '[...*]' folder) *** ${normal}"
echo 
java --module-path mlib \
     --module com.greetings

# * folder where all the jars have been created
# ** module name is enough

echo ""
echo "${info} *** Running '[fully qualified main class]' from within the module package in the '[...**]' folder (running 'org.astro.World' from within the module package in the '[...**]' folder) *** ${normal}"
echo
java --module-path mods \
     --module com.greetings/com.greetings.Main

# * folder where all the modules have been compiled
# ** fully qualified main class name with module name

# See ../01_Greetings/run.sh for explanations to above commands
# ...
