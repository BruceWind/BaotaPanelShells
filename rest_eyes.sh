#!/bin/bash
#---------------------------------------------------------------------------------------
#  this shell is used to close my display every hour to rest my eyes.
# 
#
#---------------------------------------------------------------------------------------

user= #I need a permission of other who is not root.
sudo -u $user DISPLAY=:0  gnome-screensaver-command -l &
