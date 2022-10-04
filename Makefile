all:
	hugo
	rsync -avzhe 'ssh -p 2222' public/ wmiec@dominios02.ita.br:/var/www/comp.ita.br/html/dsc/
