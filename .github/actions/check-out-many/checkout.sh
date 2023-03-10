while read -r repo;
do
   echo "Checking out ertrzyiks/$repo";
   git clone https://github.com:ertrzyiks/$repo.git --depth 1 ${TARGET_FOLDER}/$repo
done
