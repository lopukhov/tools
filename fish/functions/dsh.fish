function dsh
	if test $argv[1] = "here"
		set args (echo $argv | sed -e 's/^here //g')
		docker run --rm -it --entrypoint=/bin/sh -v $PWD:/host -w /host $args
	else
		docker run --rm -it --entrypoint=/bin/sh $argv
	end
end
function hola 
end