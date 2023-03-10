while read -r repo;
do
   echo "Checking out $repo";
   git clone git@github.com:$repo.git --depth 1
done
