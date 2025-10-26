# Target Debuff Tracker

The **Target Debuff Tracker** is a tool that tracks buffs and debuffs of the selected target. It also tracks defiance separately.

![Buff track example](https://i.imgur.com/mgAFbsp.png)

Usage tutorial thanks to Taylor/justinqwqq: 
https://www.youtube.com/watch?v=zMb8eXqwnTk

## Features

- **Supports multiple clients**: English, Chinese, and Russian.
- **Simple command interface**: Use commands in chat to manage buffs and debuffs.
- **Defiance tracking**: Defiance is tracked separately.

## Commands

To get command information, simply type `!` or `!help` in the chat.

### Supported Commands:
Note:

You can prefix your command with 's' (`!sdebuff`, `!sshowids`, `'!simport'` etc) for the self-targeting section.



`!debuff` 
`!buff`: 
These commands have the following subcommands:

`add <buffid> <comment>`: 
Adds the buff by ID (optionally, with a comment).
  
`remove <buffid>`: 
Removes a buff by ID.
  
`showall`: 
Shows all buffs and debuffs (mostly for debugging).
  
`list`: 
Lists all saved buff IDs.



![Buff track example](https://i.imgur.com/CAt4o1f.png)

### `!showids`

Use `!showids` to display the buff ID and name of your target. This helps you easily identify which buffs to add.

For example:
![Showid example](https://i.imgur.com/ukjvG9A.png)

### `!import` and `!export`

- **Import/Export settings**: These commands give you the path to import/export your settings. Import and export happen automatically and are constant.
