function dockerbashhere
	sudo docker run --rm -it --entrypoint=/bin/bash -v $PWD:/host -w /host $argv
end
