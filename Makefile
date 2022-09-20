all:
	hugo
	rsync -avzhe 'ssh -p 2222' --delete public/ wmiec@dominios02.ita.br:/var/www/comp.ita.br/html/dsc/
