ATOMHOME = $$HOME/.atom

install: python-lint hydrogen ctags
	$(ATOMHOME)/bin/apm-install $(ATOMHOME)/atomfile

python-lint: pip
	sudo pip install hacking flake8-import-order flake8-pep257

hydrogen: pip
	sudo apt-get -y install libzmq3-dev
	sudo pip install ipython

pip:
	sudo apt-get -y install python-pip

ctags:
	sudo apt-get -y install exuberant-ctags
