run:
	docker run -d -p 82:4300 -v mylogs:/app/data --env-file ./config/.env --rm --name fancyname logsapp:env4200 
run-dev:
	docker run -d -p 82:4300 -v myLogs:/app/data -v /app/node_modules -v "/Users/aleksejspiscevs/Projects/Docker/Docker-Samples/logs-app:/app" --env-file ./config/.env --rm --name fancyname logsapp:env4200
stop:
	docker stop fancyname
start:
	docker start fancyname