# Two tasks
# First use solution/dcc to generate correct output files
# Second do compare with our version dcc output

mkdir -p test;

for file in `find ./samples -iname "*.frag" -o -iname "*.decaf"`; do

	filename=${file##*/};           	# remove path 
	filename=${filename%.*}; 			# remove extension
	correctout="./samples/${filename}.out";
	myout="./test/${filename}.out";     # output file path & name
	
	./solution/dcc < $file > $correctout 2>&1
	./dcc < $file > $myout 2>&1;

	# Do compare
	diff -y $correctout $myout;
done
