-- local forward references should go here
local lane = {} -- create a table that will hold the four lanes

local player, tmr_playershoot, playerMoney  -- forward declares
local playerShootSpeed = 1250   - ( user.shootlevel*100 ) -- determines how fast the player will shoot
local playerEarnMoney = 10 -- how much money is earned when a pirate is hit

local lives = {} -- table that will hold the lives object
local livesCount = 1 + (user.liveslevel) -- the number of lives the player has

local bullets = {} -- table that will hold the bullet objects
local bulletCounter = 0 -- number of bullets shot
local bulletTransition = {} -- table to hold bullet transitions
local bulletTransitionCounter = 0 -- number of bullet transitions made

local enemy = {} -- table to hold enemy objects
local enemyCounter = 0 -- number of enemies sent
local enemySendSpeed = 75 -- how often to send the enemies
local enemyTravelSpeed = 3500 -- how fast enemies travel across the scree
local enemyIncrementSpeed = 1.5 -- how much to increase the enemy speed
local enemyMaxSendSpeed = 20 -- max send speed, if this is not set, the enemies could just be one big flood 

local poof = {}
local poofCounter = 0

local timeCounter = 0 -- how much time has passed in the game
local pauseGame = false -- is the game paused?
local pauseBackground, btn_pause, pauseText, pause_returnToMenu, pauseReminder -- forward declares

local onGameOver, gameOverBox, gameoverBackground, btn_returnToMenu -- forward declare