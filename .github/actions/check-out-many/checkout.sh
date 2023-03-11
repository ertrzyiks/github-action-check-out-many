die() { echo "$*" 1>&2 ; exit 1; }

while read -r repo;
do
   if [ ! -z "${repo}" ]; then
    # Trim whitespaces
    repo=`echo $repo | sed 's/ *$//g'`

    echo "Checking out ertrzyiks/$repo";
    git clone https://github.com/ertrzyiks/$repo.git --depth 1 ${TARGET_FOLDER}/$repo || die "Unable to check out $repo repo"
  fi;
done
