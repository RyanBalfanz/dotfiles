link-sublime:
	# SUBLIME_USER_SETTINGS=$(~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings)
	ln -s ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ./Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

link-slate:
	ln -s `pwd`/slate.js ~/.slate.js