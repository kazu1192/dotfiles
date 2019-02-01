init: ## Initial deploy dotfiles
	ln -vsf ${PWD}/.bashrc ${HOME}/.bashrc
	ln -vsf ${PWD}/.bash_profile ${HOME}/.bash_profile
	ln -vsf ${PWD}/.zshrc ${HOME}/.zshrc
	ln -vsf ${PWD}/.zlogin ${HOME}/.zlogin
	ln -vsf ${PWD}/.bin ${HOME}/.bin
	ln -vsf ${PWD}/.config ${HOME}/.config
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc
	ln -vsf ${PWD}/.vim ${HOME}/.vim
	ln -vsf ${PWD}/.gitconfig ${HOME}/.gitconfig

install: ## Install Arch Linux packages
	# TODO

st: ## Init simple-terminal
	# TODO

dwm: ## Init dwm
	# TODO
