for folder in `find . -type d -maxdepth 1 -mindepth 1 -not -path '*/\.*'`; do
    if [[ $folder != "./Package" ]]; then
        cd $folder/src;
        for pkg in `find . -type d -maxdepth 1 -mindepth 1 -not -path '*/\.*'`; do
            echo "sync with $folder/$pkg";
            cd $pkg;
            git pull;
            cd ../;
        done
        cd ../../;
    else
        for d in */; do
	        echo "sync with gitfarm for $d";
	        cd $d;
	        git pull;
	        cd ../;
        done
    fi
done
