.PHONY: run test clean prepare

tag = jupyter/minimal-notebook
exec_root = $(shell pwd)

jupyter:
	docker run \
	  -it --rm \
	  -p 8888:8888 \
	  -v "${exec_root}":/home/jovyan \
	  ${tag}