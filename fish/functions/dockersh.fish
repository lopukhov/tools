function dockersh
	sudo docker run --rm -it --entrypoint=/bin/sh $argv
end
