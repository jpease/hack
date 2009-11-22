# Hack

## Overview
The basic purpose is to provide some simple automations based upon common Git workflows

## Credits
* Variation on ReinH's script for managing the git process as documented here: http://reinh.com/blog/2008/08/27/hack-and-and-ship.html

## Usage

  $ hack on [branch]

  Switch branches. If no branch is provided it will default to 'master'.  If the provided branch does not exist, it is created.

  $ hack sync

  Rebases with the master.

  $ hack push

  Merge and pushes to your remote repository.

  $ hack sp

  Shortcut for (s)ync and (p)ush.

  $ hack stp [test commands]

  Run your test suite between the sync and push operations.  If no test commands are passed it will default to 'rake'
