function dockershhere
	docker run --rm -it --entrypoint=/bin/sh -v $PWD:/host -w /host $argv
end
