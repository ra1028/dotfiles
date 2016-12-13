# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to make opened Markdown files always be soft wrapped:
#
# path = require 'path'
#
# atom.workspaceView.eachEditorView (editorView) ->
#   editor = editorView.getEditor()
#   if path.extname(editor.getPath()) is '.md'
#     editor.setSoftWrapped(true)

# go settings

childProcess = require('child_process')

shellOutput = childProcess.execFileSync(process.env.SHELL, ['-i', '-c', 'echo $PATH']).toString().trim().split('\n')
process.env.PATH = shellOutput[shellOutput.length - 1]

goroot = atom.config.get("core.Path.GOROOT")
if goroot
  process.env.PATH = ["#{goroot}", process.env.PATH].join(":")
  atom.packages.config.set("go-plus.goInstallation", goroot)

gopath = atom.config.get('core.Path.GOPATH')
if gopath
  process.env.PATH = ["#{gopath}", process.env.PATH].join(":")
  atom.packages.config.set("go-plus.goPath", gopath)
  atom.packages.config.set("linter-golinter.executablePath", "#{gopath}/golint")

# ruby settings

rubypath = atom.config.get("core.Path.RUBYPATH")
if rubypath
  process.env.PATH = ["#{rubypath}", process.env.PATH].join(":")
  atom.packages.config.set("linter-ruby.rubyExecutablePath", "#{rubypath}/ruby")
