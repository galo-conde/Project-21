# Project 21

![](https://i.imgur.com/I8qLz1s.jpg)


Authors: Brandon Abundis, Ronaldo Amaya, Galo Conde, James Helgren
[](https://imgur.com/SiEPvaH)

## Overview
TeamIO was formed during the Spring 2022 semester at Texas State University with the goal of building a game around the aspect of gambling in a non-traditional way that truly shows how ridiculous gambling really is. This game can be enjoyed by a wide variety of people, including those not particularly experienced in gambling.
> Live demo [_here_](https://www.example.com). <!-- If you have the project hosted somewhere, include the link here. -->

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)
<!-- * [License](#license) -->


## General Information
TeamIO is comprised of Brandon Abundis, Ronaldo Amaya, Galo Conde, and James Helgren.

In effort of making the game more appealing to non-gamblers we modified the rules of traditional Black Jack and then placing those rules into a game that doesn't even resembel a traditional Black Jaack Game, where players can interact with objects that show cards and bouncers who try to get you out when playing againts oppenents during gameplay. There is also absurd events that can happen that could break the Black Jack game like uno taking over. Think BlackJack, Uno, and PacMan had baby.

After making the game more appealing to a larger audience the secondary goal of our gaming platform was to provide the excitement of making wagers with friends without promoting detrimental side effects such as gambling addiction. To this end we developed a ranking system by which players, before gameplay begins,  can quickly cast votes to quantify the value of non-monetary prices (e.g. cooking dinner, ride to school, etc), distribute credits amongst players according the agreed value of the favor their are waging, and use the respectively allotted credits in wagers. Thus, users can feel the excitement of gambling without the stress of waging and potentially losing real money. 

Our intetion was to create a fun game for everyone to play 21 without having to pay real money and without trying to risk them getting addicted to that game.


## Technologies Used
- Discord
- Godot game engine
- GitKraken
- Youtube

## Features
- Game functionality for the BlackJack game with a twist: 
	* The JackBlack game is not nessesarly a proper blackjack game, but it has the premise of one.
	* There are scenes in godot that do a veraity of things from being the game world, to just being stats place holder for a node.
	* Scripts are not scenes, but are necessary component for the whole function of the game.
- The visual look of the game
	* There are multiple png files called sprites holding templates for character movement and static world objects
	* Animimation is an important factor to scenes as they use sprites to convey life to enemy scenes and random object exploding.


## Setup
What are the project requirements/dependencies? Where are they listed? A requirements.txt or a Pipfile.lock file perhaps? Where is it located?

Proceed to describe how to install / setup one's local environment / get started with the project.


## Usage
How does one go about using it?
Provide various use cases and code examples here.

`write-your-code-here`


___
## Sprint 1
![](https://i.imgur.com/kEL3uPn.jpg)
![](https://i.imgur.com/Z2nK0C1.jpg)

*Note: Research implementations and findings located in Research file within this directory*

`Research` file direct link: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Research%20Folder/RESEARCH

## Contributions
- **Brandon**: "Added multiple scripts that focused on the player to give the gameplay a fundation to work on."
	- `Jira Task: Add player hearts in UI`
		- reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/UI%20scripts/HealthUI.gd
	- `Jira Task: create a dumb npc`
		- reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/EnemyAI%20scripts/Enemy.gd  
<br />
- **Ronaldo**: "Worked on getting a sprite for the bouncer AI, added a GameOver Screen, and was asking the group to meet up for frequent meetings."
	- `Jira Task: create npc "bouncer" avatar`
		- reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Sprites/Enemy%20Sprites/
	- `Jira Task: create game over screen`
		- reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/GUI/GameOver.tscn
		- reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/GUI%20scripts/GameOver.gd  
<br />
- **Galo**: "Added scripts that implements card deck functionality and assigns card values to dealer and player1 once then have destroyed a box." 
	- `Jira Task: add card deck functionality`
		- URL reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Cards/Cards.gd
	- `Jira Task: Wood box display card value`
		- URL reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/Object%20scripts/WoodBox.gd  
<br />	
- **James**: "Added a Start Screen scene and accompanying script, worked on researching player/NPC pathing (to be implemented in future sprint)."
	- `Jira Task: *create start screen*`
		- reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/GUI/StartScreen.tscn
		- reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/GUI%20scripts/StartScreen.gd
	
	
## Next Steps
- Galo
	- add a scoreboard display 
- Brandon
	- add more to the gameplay
- James
	- find a way to display the start
- Ronaldo
	- make a visual bouncer as the enemy
___

## Sprint 2
![](https://i.imgur.com/T5bel2j.jpg)
![](https://i.imgur.com/YvByAzW.jpg)
![](https://i.imgur.com/74YPGat.jpg)
![](https://i.imgur.com/28nepGl.jpg)

*Note: Research implementations and findings located in Research file within this directory*

`Research` file direct link: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Research%20Folder/RESEARCH

## Contributions

- **Brandon**: "researched and not only fixed the endscreen, but fundamentally changed the endscreen"
	- `Jira Task: Research End Screen`
		- research: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Research%20Folder/RESEARCH
	- `Jira Task: Implement End Screen`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/UI/GameOver.tscn
	- `Jira Task: Make Ai Bouncer neutral until provoked`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/EnemyAI%20scripts/Enemy.gd                                  
<br />
- **Ronaldo**: "Went in and add a casino background with a personally added a dealer sprite"
	- `Jira Task: Find a proper casino background`
		- reference: https://tilation.itch.io/16x16-small-indoor-tileset
	- `Jira Task: Casino background implementation`
		- reference: https://www.youtube.com/watch?v=yW4lHtBzmBA
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Casino%20Floor/
	- `Jira Task: Find a Dealer sprite and implement`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Sprites/Dealer%20Sprites/
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Dealer2.gd
<br />
- **Galo**: "Added scripts that implements card deck functionality and assigns card values to dealer and player1 once then have destroyed a box." 
	- `Jira Task: Find proper visual buttons`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/galo/Sprites/World%20Sprites/
	- `Jira Task: Buttons when hit stay down for a second`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/galo/HitButton.gd
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/Effects%20scripts/ButtonEffect.gd
	- `Jira Task: Button mechanic that shows card value on screen`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/UI%20scripts/HealthUI.gd                                                                                                                                                  
<br />	
- **James**: "Added a Start Screen scene and accompanying script, worked on researching player/NPC pathing (to be implemented in future sprint)."
	- `Jira Task: Implement Start Screen`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/GUI/StartScreen.gd
	- `Jira Task: Money system`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Sprites/World%20Sprites/coin.png
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/Object%20scripts/Coin.gd
## Next Steps
- Galo
	- Going to have to improve the code that allows the cards to be given to the dealer and player.
	- Will have to implement the card dealing to the new button implementaion.
	- Find a way to get the cards to visually show up on the screen somehow.
- Brandon
	- Create a new level area, or to make a new scene at least.
	- If making a new scene is too much, then implement a door mechanic for new room.
	- Somehow finish the game, or at least have a fun to play game working.
- James
	- Finish the money system, as it was much harder in scope than I thought.
	- Place coins in boxes, so that the player can gain more money.
	- Have the amount of money the player has show in the UI.
- Ronaldo
	- finds some sprites for card, so that they may be displayed visually.
	- might have to make more custom sprites for the game, or improve the detail of the current ones.
	- find more casino furniture sprites to give the world more consistency

___

## Sprint 3

## Project Status
Project is: _in progress_ / _complete_ / _no longer being worked on_. If you are no longer working on it, provide reasons why.

## Contributions

- **Brandon**: "ree"
	- `Jira Task:`
		-
	- `Jira Task:`
		- 
	- `Jira Task:`
		-                             
<br />
- **Ronaldo**: "ree"
	- `Jira Task:`
		-
	- `Jira Task:`
		- 
	- `Jira Task:`
		-                             
<br />
- **Galo**: "ree"
	- `Jira Task:`
		-
	- `Jira Task:`
		- 
	- `Jira Task:`
		-                             
<br />
- **James**: "Added a Start Screen scene and accompanying script, worked on researching player/NPC pathing (to be implemented in future sprint)."
	- `Jira Task: Implement `
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/GUI/StartScreen.gd
	- `Jira Task: Money system`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Sprites/World%20Sprites/coin.png
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/Object%20scripts/Coin.gd

## Room for Improvement
Include areas you believe need improvement / could be improved. Also add TODOs for future development.
- Brandon:
- Ronny:
- Galo:
- James:
Room for improvement:
- Improvement to be done 1
- Improvement to be done 2

## Acknowledgements
- This project was based on [this tutorial](https://www.youtube.com/watch?v=mAbG8Oi-SvQ&list=PL9FzW-m48fn2SlrW0KoLT4n5egNdX-W9a).
- Hit animation sprite from [uheartbeast](https://github.com/uheartbeast/youtube-tutorials/blob/master/Action%20RPG/Action%20RPG%20Resources.zip)
- The creator of the main character's pixel model: [RPG Main Character by Szadi art](https://szadiart.itch.io/rpg-main-character).
- Enemy npc model is from [opengameart: LUNARSIGNALS](https://opengameart.org/content/overhead-action-rpg-hero-2)
- Simple sprite effect by [opengameart: LUNARSIGNALS](https://opengameart.org/content/overhead-action-rpg-forest)
- Background tileart from [opengameart: voec](https://opengameart.org/content/mythical-ruins-tileset)
- Ronaldo's Sprite's left leg made in [pixilart.com/draw](Sprites/Enemy Sprites/Left leg up.png.import)
- Ronaldo's Sprite's right leg made in [pixilart.com/draw](Sprites/Enemy Sprites/Right leg up.png.import)
- casino like background sprite is from [tilation.itch.io/](https://tilation.itch.io/16x16-small-indoor-tileset)
- HUD understanding from [kidscancode.org](https://kidscancode.org/godot_recipes/games/circle_jump/circle_jump_05/)
- Button [Button Node](https://www.youtube.com/watch?v=OgjGnlU43Fs)


## Contact
Created by [@flynerdpl](https://www.flynerd.pl/) - feel free to contact me!


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->

<!-- You don't have to include all sections - just the one's relevant to your project -->
