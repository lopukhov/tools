function wwwhere
	docker run --rm -it -p $argv[1]:443 -v $PWD:/srv/data www
end
