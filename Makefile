build:
	docker build -t citeproc .

run:
	docker run -it -p 8082:8085 --detach citeproc
