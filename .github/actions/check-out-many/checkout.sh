while read -r repo;
do
   if [ -z "${repo}" ]; then
    echo "Checking out ertrzyiks/$repo";
    git clone https://github.com:ertrzyiks/$repo.git --depth 1 ${TARGET_FOLDER}/$repo
  fi;
done
