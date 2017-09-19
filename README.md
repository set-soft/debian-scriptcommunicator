# debian-scriptcommunicator
Files to create a Debian package for ScriptCommunicator

# Instructions:

1. Download the sources from https://sourceforge.net/projects/scriptcommunicator/
1. Follow the compilation procedure
1. Create a folder named *compiled* (inside this repo)
1. Copy the following files and directories to *compiled*:
   * ScriptCommunicator
   * ScriptEditor
   * DeleteFolder
   * Manual_ScriptCommunicator.pdf
   * apiFiles/
   * exampleScripts/
   * templates/
1. Run *fakeroot dpkg-buildpackage -uc -b*
