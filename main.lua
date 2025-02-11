-- FILE: main.lua
-- DESCRIPTION: start the app, declare some variables, and setup the player save file

-- APP OPTIONS
_APPNAME = "Number Hunt"
_FONT = "KGMelonheadz"
_SHOOTUPGRADECOST = 35
_LIVESUPGRADECOST = 100
_SHOWADS = true 

-- CONSTANT VALUES
_CX = display.contentWidth*0.5
_CY = display.contentHeight*0.5
_CW = display.contentWidth
_CH = display.contentHeight
_T = display.screenOriginY -- Top
_L = display.screenOriginX -- Left
_R = display.viewableContentWidth - _L -- Right
_B = display.viewableContentHeight - _T-- Bottom

-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- include composer
local composer = require "composer"

-- include load/save library from coronarob
loadsave = require("loadsave")

-- load up some audio
_BACKGROUNDMUSIC = audio.loadStream("audio/background-music.mp3")
_THROW = audio.loadSound("audio/throw.wav")
_ENEMYHIT = audio.loadSound("audio/enemy-hit.wav")
_PLAYERHIT = audio.loadSound("audio/player-hit.mp3")
_GAMEOVER = audio.loadSound("audio/game-over.wav")
_CLICK = audio.loadSound("audio/click.mp3")

-- set up a saved file for our user
user = loadsave.loadTable("user.json")
if(user == nil) then 
	user = {}
	user.money = 100
	user.shootlevel = 0
	user.shootlevelmax = 10
	user.liveslevel = 0
	user.liveslevelmax = 10
	user.playsound = true
	loadsave.saveTable(user, "user.json")
end

composer.gotoScene("scene_menu")
