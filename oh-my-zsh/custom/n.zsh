export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

load-node-version() {
  local searchPath=$(pwd)
  local resolvedPath=""
  local versionFile=""
  local nodeVersion=""

  while
    resolvedPath=$(find "$searchPath/.node-version" -maxdepth 1 2>/dev/null)
    [[ -z $resolvedPath ]] && [[ $searchPath != "/" ]]
  do searchPath=$(dirname $searchPath); done

  if [[ -z $resolvedPath ]]; then
    searchPath=$(pwd)
    while
      resolvedPath=$(find "$searchPath/package.json" -maxdepth 1 2>/dev/null)
      [[ -z $resolvedPath ]] && [[ $searchPath != "/" ]]
    do searchPath=$(dirname $searchPath); done
  fi

  if [[ $resolvedPath ]]; then
    if [[ $resolvedPath == *".node-version" ]]; then
      nodeVersion=$(cat $resolvedPath)
    else
      nodeVersion=$(jq -r .engines.node $resolvedPath 2>/dev/null)
    fi
  fi

  if [[ $nodeVersion ]] && [[ $nodeVersion != "null" ]] && [[ $(node --version) != "v$nodeVersion" ]]; then
    n $nodeVersion
  fi
}

add-zsh-hook chpwd load-node-version
load-node-version
