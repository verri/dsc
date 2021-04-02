all:
	hugo
	rsync -avzhe 'ssh -p 2222' --delete public/ verri@dominios.ita.br:public_html/dsc/
