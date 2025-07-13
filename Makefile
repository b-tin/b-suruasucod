PROJECT = "btin blog project"

all: clean install run

switch: ;@echo "Switching to ${PROJECT}....."; \
	cd blog; nvm use v18.20.8

run : ;@echo "Starting ${PROJECT}....."; \
	cd blog; npm run start

install: ;@echo "Installing ${PROJECT}....."; \
	cd blog; npm install

clean: ;@echo "Cleaning up ${PROJECT}....."; \
	cd blog; rm -rf node_modulesw