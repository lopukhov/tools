function dbash
	if test $argv[1] = "here"
		set args (echo $argv | sed -e 's/^here //g')
		docker run --rm -it --entrypoint=/bin/bash -v $PWD:/host -w /host $args
	else
		docker run --rm -it --entrypoint=/bin/bash $argv
	end
end
function hola 
end