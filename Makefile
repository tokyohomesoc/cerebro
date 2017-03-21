.SILENT :
.PHONY : cerebro

cerebro:
	docker build -t tokyohomesoc/cerebro:test 0.6.1/
	docker images
    docker history tokyohomesoc/cerebro:test