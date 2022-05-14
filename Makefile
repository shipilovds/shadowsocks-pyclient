.PHONY: clean clean-build clean-pyc build install uninstall lint

clean: clean-build clean-pyc

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr *.egg-info/

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

dist: clean
	python3 setup.py sdist bdist_wheel
	python3 -m twine check dist/*

build: dist

install: dist
	sudo pip3 install -U --no-index --find-links=./dist shadowsocks-pyclient

uninstall:
	sudo pip3 uninstall shadowsocks-pyclient -y

lint:
	@flake8 ./ || true
