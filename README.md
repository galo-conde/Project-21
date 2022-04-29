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
Project is: in-progess
- Brandon:
- Ronny: I would like to continue working on this project at some point in the future (hopefully close) so we can see the completed version of the game.
- Galo:
- James: I would like to continue working on this project as a hobby and hope to someday implement a multiplayer element.
## Contributions

- **Brandon**: "I was in charge of level and menu design."
	- **JiraTask:** [P2-24](https://cs3398s22io.atlassian.net/browse/P2-24): `Create new level` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/8dd9894760d0e8d8c5070b0fb7dd33e565446b55/Levels/Level2.tscn?at=feature%2FP2-24-create-new-level
	- **JiraTask:** [P2-23](https://cs3398s22io.atlassian.net/browse/P2-23): `load a different level from menu` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/055dd5f301e1202d60833ad8f84722d049128b26/UI/LevelMenu.tscn?at=feature%2FP2-23-load-a-different-level-from-menu
	- **JiraTask:** [P2-25](https://cs3398s22io.atlassian.net/browse/P2-25): `finish level design, and menu options in the game.` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/0073c1466c7afcdd6fee992af2d94d1e2154483b/GUI/GUI.tscn?at=feature%2FP2-25-finish-level-design-and-menu-optio
	- **JiraTask:** [P2-55](https://cs3398s22io.atlassian.net/browse/P2-55): `Add Ai to the other Levels` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/3ff252868f3b5a5abdddd596e0f17f11c576eead/Levels/?at=feature%2FP2-55-when-dealer-hit-all-bouncers-attac
<br />
<br />
- **Ronaldo**: "I had the cards appeared in the game with their values showing up in the code itself."
	- **Jira Task:**[P2-53](https://cs3398s22io.atlassian.net/browse/P2-53) `Set 52 card visual` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/4c378f16412053d6bdbc756356443534af68f438/Cards/?at=P2-53-set-52-cards-visual
	- **Jira Task:**[P2-39](https://cs3398s22io.atlassian.net/browse/P2-39) `Cards needed to appear` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/17fc2077dd4920052e06b12c7d8570b9797f4965/Main.tscn?at=P2-39-cards-needed-to-appear
	- **Jira Task:**[P2-52](https://cs3398s22io.atlassian.net/browse/P2-52) `Cards have actual values` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/31556a1906b5e67dfb8e6c0964cbf4b09da69404/src/Object%20scripts/HitButton.gd?at=P2-52-cards-have-actual-values
<br />
<br />
- **Galo**: "I managed the backend implementation of blackjack."
	- **Jira Task:**[P2-57](https://cs3398s22io.atlassian.net/browse/P2-57) `implement blackjack game winner` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/1f9c33646078593be391be8750aa8dc46d434306/src/Object%20scripts/HitButton.gd?at=P2-57-implement-blackjack-game-winner
		- Artifact 2: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/1f9c33646078593be391be8750aa8dc46d434306/src/Object%20scripts/StayButton.gd?at=P2-57-implement-blackjack-game-winner
		- Artifact 3: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/1f9c33646078593be391be8750aa8dc46d434306/DeckManager.gd?at=P2-57-implement-blackjack-game-winner
		- Artifact 4: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/1f9c33646078593be391be8750aa8dc46d434306/Objects/Buttons/LabelTimer.gd?at=P2-57-implement-blackjack-game-winner
<br />                         
<br />
- **James**: "I connected the player's wallet to update accordingly to the outcome of a game. I also added an alternate "Game Over" screen."
	- **Jira Task:** [P2-19](https://cs3398s22io.atlassian.net/browse/P2-19) `Add Alternate Game Over Screen` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/e1e903d1c2a6efc15f99c9c85f98d0b7db310e4f/UI/GameOverBroke.tscn?at=feature%2FP2-19-add-alternate-game-over-screen
		- Artifact 2:
		https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Sprites/World%20Sprites/no_money_meme.png
	- **Jira Task:** [P2-41](https://cs3398s22io.atlassian.net/browse/P2-41) `Money System` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/75d38c825351996078ab4bb6cab58d1901e39c0d/src/UI%20scripts/MoneyLabel.gd?at=feature%2FP2-41-money-system
		- Artifact 2: 
		https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/75d38c825351996078ab4bb6cab58d1901e39c0d/src/Object%20scripts/HitButton.gd?at=feature%2FP2-41-money-system
	- **Jira Task:** [P2-58](https://cs3398s22io.atlassian.net/browse/P2-58) `Bouncers drop money on death` - https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/7daf7baf58089ce04de27afe10be2f4fdc89edb8/Objects/Coin.tscn?at=feature%2FP2-58-bouncers-drop-money-on-death

## Next Steps
- Brandon
	- 
	- 
	- 
- Ronaldo
	- 
	- 
	- 
- Galo
	- 
	- 
	- 
- James
	- 
	- 
	- 


## Room for Improvement
Include areas you believe need improvement / could be improved. Also add TODOs for future development.
- Brandon:
- Ronny: I can improve in getting more familiar with the Godot code itself.
- Galo:
- James: I can improve by continuing to familiarize myself with proper object-oriented design techniques and re-reading the Godot Docs.
TODOS
- Brandon:
- Ronny: Adding more cards to appear during the game and custom cards.
- Galo:
- James: Design and implement a custom gambling amount feature.

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

