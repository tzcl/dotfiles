#!/usr/bin/python

import argparse, subprocess
import gi
gi.require_version("Playerctl", "1.0")
from gi.repository import Playerctl

parser = argparse.ArgumentParser()
parser.add_argument(
   '-m',
   '--margin',
   type=int,
   metavar='margin'
)
parser.add_argument(
    '-t',
    '--trunclen',
    type=int,
    metavar='trunclen'
)
parser.add_argument(
    '-f',
    '--format',
    type=str,
    metavar='custom format',
    dest='custom_format'
)
args = parser.parse_args()

# default parameters
margin = 0
output = '{artist} - {song}'
trunclen = 25

icon="   "

# read in parameters
if args.margin is not None:
   margin = args.margin
if args.trunclen is not None:
    trunclen = args.trunclen
if args.custom_format is not None:
    output = args.custom_format
    
# pull data from playerctl
# if nothing, no player is running

try:
   player = Playerctl.Player(player_name="spotify")

   artist = player.get_artist()
   song = player.get_title()

   if len(song) > trunclen:
      song = song[0:trunclen]
      song += '...' 
      if ('(' in song) and (')' not in song):
         song += ')'

   print((" " * margin) + icon + output.format(artist=artist, song=song))

except Exception as e:
   print("")
