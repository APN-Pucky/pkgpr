#!/bin/bash

MESSAGE=""
BRANCH="master"
FILES=""
ORG="gentoo"
REPO="gentoo"
ACC=""
URL="github.com"
FILES=()

# from https://stackoverflow.com/a/14203146
while [[ $# -gt 0 ]]; do
  case $1 in
    -a|--account)
      ACC="$2"
      shift # past argument
      shift # past value
      ;;
    -u|--url)
      URL="$2"
      shift # past argument
      shift # past value
      ;;
    -r|--repo)
      REPO="$2"
      shift # past argument
      shift # past value
      ;;
    -c|--copy)
      COPY="$2"
      shift # past argument
      shift # past value
      ;;
    -o|--org)
        ORG="$2"
        shift # past argument
        shift # past value
        ;;
    # any amount of files
    -f|--files)
      FILES="$2"
      shift # past argument
      shift # past value
      ;;
    # message
    -m|--message)
      MESSAGE="$2"
      shift # past argument
      shift # past value
      ;;
    # branch
    -b|--branch)
      BRANCH="$2"
      shift # past argument
      shift # past value
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      FILES+=("$1") # save positional arg
      shift # past argument
      ;;
  esac
done

if [ -z "${ACC}" ]; then
    echo "No account specified"
    exit 1
fi

OPWD=${PWD}
echo "Adding files: ${FILES[@]}"

pushd $(mktemp -d)
# if COPY copy from that dir instead of clone fresh
if [ -n "${COPY}" ]; then
    echo "Copying from ${COPY}"
    cp -r ${COPY} .
    echo "Copied"
else
    git clone --depth 1 git@${URL}:${ORG}/${REPO}.git -b ${BRANCH}
fi

cd ${REPO}
git checkout ${BRANCH}
NB=pkgpr_${BRANCH}_$(date +%s)
git checkout -b ${NB}

for file in ${FILES[@]}; do
    dfile=${file}
    cp -r ${OPWD}/${file} ${dfile}
    git add ${dfile}
done
pkgdev commit -m "${MESSAGE}"
git remote add pkgpr_${ACC} git@${URL}:${ACC}/${REPO}.git
git push -u pkgpr_${ACC} ${NB} -o merge_request.create -o merge_request.target_project=${ORG}/${REPO} -o merge_request.target=${BRANCH} -o merge_request.remove_source_branch -o merge_request.description="PR created by [pkgpr](https://github.com/APN-Pucky/pkgpr)."

cat - 

popd