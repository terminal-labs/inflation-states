APPNAME = inflation

help:
	@echo "usage: make [command]"

download_python_environment_manager:
	@if test ! -d ".tmp/bash-environment-manager-master";then \
                sudo su -m $(SUDO_USER) -c "mkdir -p .tmp"; \
                sudo su -m $(SUDO_USER) -c "cd .tmp; wget https://github.com/terminal-labs/bash-environment-manager/archive/master.zip"; \
                sudo su -m $(SUDO_USER) -c "cd .tmp; unzip master.zip"; \
        fi

linux: download_python_environment_manager
	@sudo bash .tmp/bash-environment-manager-master/makefile_resources/scripts_dpe/create.sh $(APPNAME) $(SUDO_USER) linux

vagrant: download_python_environment_manager
	@sudo bash .tmp/bash-environment-manager-master/makefile_resources/scripts_dpe/build.sh $(APPNAME) $(SUDO_USER) vagrant
