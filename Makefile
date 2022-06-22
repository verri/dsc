all:
	hugo
	rsync -avzhe 'ssh -p 2222' --delete public/ wmiec@dominios.ita.br:site/htdocs/dsc/
