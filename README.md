# Project 21

Authors: Brandon Abundis, Ronaldo Amaya, Galo Conde, James Helgren
[](https://imgur.com/SiEPvaH)

## Overview
Team IO was formed during the Spring 2022 semester at Texas State University with the goal of building a game around the aspect of gambling in a non-traditional way that truly shows how ridiculous gambling really is. This game can be enjoyed by a wide variety of people, including those not particularly experienced in gambling.
> ![Live demo](https://i.imgur.com/WaraZGx.gif)

## Table of Contents
* [General Info](#general)
* [Features](#features)
* [Setup](#setup)
* [Sprint 1](#sprint1)
* [Sprint 2](#sprint2)
* [Sprint 3](#sprint3)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
<!-- * [License](#license) -->

<a name="general"></a>

__
## General Information
TeamIO is comprised of Brandon Abundis, Ronaldo Amaya, Galo Conde, and James Helgren.

In the effort of making the game more appealing to non-gamblers, we modified the rules of traditional BlackJack and then placed those rules into a game that doesn't even resemble a traditional Black Jack Game, where players can interact with objects that show cards and bouncers who try to get you out when playing against opponents during gameplay. There are also absurd events that can happen that could break the BlackJack game like UNO taking over. Think BlackJack, Uno, and PacMan had a baby.

After making the game more appealing to a larger audience the secondary goal of our gaming platform was to provide the excitement of making wagers with friends without promoting detrimental side effects such as gambling addiction. To this end we developed a ranking system by which players, before gameplay begins,  can quickly cast votes to quantify the value of non-monetary prices (e.g. cooking dinner, riding to school, etc), distribute credits amongst players according to the agreed value of the favor they are waging, and use the respectively allotted credits in wagers. Thus, users can feel the excitement of gambling without the stress of waging and potentially losing real money. 

We intended to create a fun game for everyone to play 21 without having to pay real money and without trying to risk them getting addicted to that game.


## Technologies Used
- Discord
- Godot game engine
- GitKraken
- Youtube

<a name="features"></a>

__
## Features
- Game functionality for the BlackJack game with a twist: 
	* This version of a JackBlack game is not necessarily a traditional adaptation of blackjack, but it at its core, it shares the features of one.
	* In Godot there are scenes that are the fundamental canvsas of the front end, everything you see is a scene that is loaded with a finite amount of nodes that represent objects in that scene.
	* Scripts are the backend of this game, and interaction that these node perform on the frontend are dependent on the scripts to compile correctly.
- The visual look of the game
	* There are multiple png files called sprites holding templates for character movement and static world objects.
	* Animation is an important factor in scenes as they use sprites to convey life to enemy scenes and random objects exploding.

<a name="setup"></a>
___

## Setup
- **Requirements**
	- `OS:`
		- Windows 7 or newer, macOS 10.10 or newer, Linux (64-bit or 32-bit x86).
		- Hardware supporting OpenGL 3.3 Core Profile.
	- `harware:`
		- AMD Radeon HD 7000 series GPU or newer, "6000 series is maybe possible."
		- NVIDIA GeForce 8 series GPU or newer.
		- Intel 3rd generation (Ivy Bridge) series GPU or newer.
	- `application:`
		- Install the [Godot Engine](https://godotengine.org/download/windows)
		- Could also be installed through the Steam application, which is an online distribution service.
<br />
__


- **How to run!**
	- `Step 1: Godot UI`
	    - ![](https://i.imgur.com/CbWllhq.gif)
		- Open the Godot application 
		- In the initial Godot menu, there should be a button called `import` on the far-middle right of the screen, and click it.
		- There will be a prompt to *Import Existing Project*, in which you will click the `Browse` button and navigate to where you cloned the repo.
		- When you have navigated to the cloned repo file location, it is **Important** to find a file called `project.godot`, then you will double click on that file.
		- You will be sent back to the prompt, and there should be a green checkmark to indicate that Godot recognizes this file as legitimate.
		- Then you will click on the `Import and Edit` button.
		- Congrats, you opened the games editor.
	- `Step 2: How to run the Game!`
		- ![](https://i.imgur.com/2OhVhjl.gif)
		- After successfully following step 1, you will be sent to the games editor.
		- On the very far top-right of the screen, you will see buttons that look like play, pause, and stop in this order.
		- You will click on the play button, which is a sideways triangle, and the game will compile and start.
		- Now that the game is running, you will navigate the menu using the arrow keys, or the `W-A-S-D` keys.
		- The `Space` key is the input and attack button, the only exception is the level menu, which is the `E` key.
		- The `Tab` key will show a pop-up menu to exit the game when stuck.


<a name="sprint1"></a>
___

## Sprint 1
![](https://i.imgur.com/kEL3uPn.jpg)
![](https://i.imgur.com/Z2nK0C1.jpg)

*Note: Research implementations and findings located in Research file within this directory*

`Research` file direct link: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Research%20Folder/RESEARCH

## Contributions
- **Brandon**: "Added multiple scripts that focused on the player to give the gameplay a foundation to work on."
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
- **Galo**: "Added scripts that implements card deck functionality and assign card values to dealer and player1 once then have destroyed a box." 
	- `Jira Task: add card deck functionality`
		- URL reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Cards/Cards.gd
	- `Jira Task: Wood box display card value`
		- URL reference: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/Object%20scripts/WoodBox.gd  
<br />	
- **James**: "Added a Start Screen scene and accompanying script, worked on researching player/NPC pathing (to be implemented in the future sprint)."
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
<a name="sprint2"></a>
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
- **Galo**: "Added scripts that implement card deck functionality and assign card values to dealer and player1 once then have destroyed a box." 
	- `Jira Task: Find proper visual buttons`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/galo/Sprites/World%20Sprites/
	- `Jira Task: Buttons when hit stay down for a second`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/galo/HitButton.gd
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/Effects%20scripts/ButtonEffect.gd
	- `Jira Task: Button mechanic that shows card value on screen`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/UI%20scripts/HealthUI.gd                                                                                                                                                  
<br />	
- **James**: "Added a Start Screen scene and accompanying script, worked on researching player/NPC pathing (to be implemented in a future sprint)."
	- `Jira Task: Implement Start Screen`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/GUI/StartScreen.gd
	- `Jira Task: Money system`
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Sprites/World%20Sprites/coin.png
		- Artifact: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/src/Object%20scripts/Coin.gd
## Next Steps
- Galo
	- Going to have to improve the code that allows the cards to be given to the dealer and player.
	- Will have to implement the card dealing with the new button implementation.
	- Find a way to get the cards to visually show up on the screen somehow.
- Brandon
	- Create a new level area, or make a new scene at least.
	- If making a new scene is too much, then implement a door mechanic for a new room.
	- Somehow finish the game, or at least have a fun playing game working.
- James
	- Finish the money system, as it was much harder in scope than I thought.
	- Place coins in boxes, so that the player can gain more money.
	- Have the amount of money the player has show in the UI.
- Ronaldo
	- finds some sprites for all 52 cards, so that they may be displayed visually.
	- might have to make more custom sprites for the game, or improve the detail of the current ones.
	- find more casino furniture sprites to give the world more consistency
<a name="sprint3"></a>
___

## Sprint 3

![](https://i.imgur.com/LBu19sT.gif)
![](https://i.imgur.com/wxSjicD.gif)

`Research` file direct link: https://bitbucket.org/cs3398-s22-io/blackjack_2d/src/master/Research%20Folder/RESEARCH

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
	- For the levels, I would increase the depth of traversal, like going outside and implementing more interactive elements.
	- Implement sounds in the game, like hit, walk, and destroy sound effects.
	- Add visual health bars to show how much health enemy AI has.
- Ronaldo
	- Expand upon enemy sprites like detail and animation.
	- Find sound effects for the improved Enemy sprites.
	- Would actually want to complete the game.
- Galo
	- Find a way for the cards to stack, to visually tell you how many cards you have on hand.
	- Make the dealer's cards only show after the player hits the stay button.
	- Add a simple counter on the Ui that shows you how close you are to 21.
- James
	- Fix the position depth of the animated coin, so that the player can physically be behind or in front of the coin.
	- Find a money effect when you win a hand and a money loss effect when the player loses the bet.
	- Implement a way for the player to move on to the next room when you win enough hands.

<a name="room-for-improvement"></a>
___

## Room for Improvement
- This was everybody’s first time making a game as a project, and the ambition was greater than our game development capabilities.
- Godot’s documentation is limited and sparse; we really had to study the documentation and experiment with code to get a solution most of the time.
- The Godot Engine community is small, which means we as a group really went into this project blind with vague online solutions scattered across the internet. We had to engineer new ways to get the features working, which was very time consuming. 
- Learning how to animate and the connection of animation to game code took all members a considerable amount of time.


## Project Status
Project is: in-progess
- Brandon: I whish I was better at game development, so that this game can be more awsome.
- Ronny: I would like to continue working on this project at some point in the future (hopefully close) so we can see the completed version of the game.
- Galo:
- James: I would like to continue working on this project as a hobby and hope to someday implement a multiplayer element.

<a name="acknowledgements"></a>
__

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


