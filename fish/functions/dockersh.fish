function dockersh
	docker run --rm -it --entrypoint=/bin/sh $argv
end
