#create default_syntax.py
#local: C:\Users\[username]\AppData\Roaming\Sublime Text 3\Packages\User
#

import sublime, sublime_plugin

class DefaultSyntaxCommand(sublime_plugin.EventListener):
   def on_new(self, view):
      view.set_syntax_file('Packages/Python/Python.tmLanguage')
