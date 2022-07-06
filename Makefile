run:
	docker run -d -p 82:4300 --env-file ./config/.env --rm --name fancyname logsapp:env4200 
stop:
	docker stop fancyname