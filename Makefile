.PHONY: setup requirements python lint

inventory.yml:
	@cp example.inventory.yml inventory.yml
	@printf "\x1B[01;93m✔ inventory.yml file created\n\x1B[0m"

requirements:
	@ansible-galaxy install -r requirements.yml
	@printf "\x1B[01;93m✔ Galaxy collections installed\n\x1B[0m"

setup: inventory.yml requirements
	@printf "\x1B[01;93m✔ Setup complete\n\x1B[0m"

python:
	@pip install -r requirements.txt
	@printf "\x1B[01;93m✔ Python requirements installed\n\x1B[0m"

# ansible-lint:
# workon linux
# pip3 install -r requirements.txt
lint:
	@ansible-lint --offline
