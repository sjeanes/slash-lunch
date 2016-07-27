# /lunch

/lunch is a slash command to organize lunch runs through Slack.

Each run is created on a channel level, meaning that different channels can have separate runs simultaneously (if you have a global team, for example).

## Installation

Deploy it on your own and add a custom integration through the Slack admin panel.

## Usage

There are 5 commands to know:

#### `/lunch run [time]`

Start a lunch run!  
example: `/lunch run 15`

#### `/lunch list`

Show the list of orders for the current run.  
example: `/lunch list`

#### `/lunch order [item]`

Order something from the current run.  
example: `/lunch order turkey on rye`

#### `/lunch here`

Let everyone know that the lunch is here!
This is needed so that others can start new runs later on.  
example: `/lunch here`

#### `/lunch help`

Show a help message detailing the available commands.  
example: `/lunch help`

## Attribution

Forked from https://github.com/assafgelber/slash-coffee
