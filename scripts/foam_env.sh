foam_env () {
    profile=$1

    if [ -f ${profile}/share/OpenFOAM-*/etc/bashrc ]; then
      echo "Loading FOAM environment"
      source ${profile}/share/OpenFOAM-*/etc/bashrc

      if [[ "$(snappyHexMesh -help)" =~ "org" ]]; then
        echo "+ OpenFOAM-org"
	FOAM_DISTR=org
      elif [[ "$(snappyHexMesh -help)" =~ "com" ]]; then
        echo "+ OpenFOAM-com"
	FOAM_DISTR=com
      else
        echo "+ Unknown FOAM distribution"
      fi

      export FOAM_RUN=${HOME}/DATA/OpenFOAM/${FOAM_DISTR}/${WM_PROJECT_VERSION}
      mkdir ${FOAM_RUN}
    fi
}
