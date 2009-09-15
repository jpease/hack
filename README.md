# Hack

## Overview
The basic purpose is to provide some simple automations based upon common Git workflows

## Credits
* Variation on ReinH's script for managing the git process as documented here: http://reinh.com/blog/2008/08/27/hack-and-and-ship.html

## Usage

  $ hack on

  This will automatically switch to the default branch which you can easily 
  configure. Alternatively you can use:

  $ hack on foo

  Where "foo" is the name of the specific branch you wish to use.  If the 
  branch does not exist, it is created.  

  $ hack sync
  
  Rebases with the master.
  
  $ hack push
  
  Merge and pushes to your remote repository.

  It also supports Rein's ssp (Simple Software Process) with:

  $ hack ssp

  Which is equivalent to hack sync && hack push.  If you prefer 
  hack sync && rake && hack push, then you may use the -t flag for testing:

  $ hack ssp -t
