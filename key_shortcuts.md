# Key Shortcuts

`*`: My Original Setting

## Editor Group Control

|                                   |                                          |     |
| --------------------------------- | ---------------------------------------- | --- |
| `^w` `w` / `^w` `^w`              | Navigate Editor Group                    |     |
| `^w` `l` (`h`) / `^w` `^l` (`^h`) | Next (Previous) Editor Group             | *   |
| `^w` `j` / `^w` `^j`              | Focus Terminal                           | *   |
| `^w` `k` / `^w` `^k`              | Focus Editor                             | *   |
| `^w` `v` (`s`) / `^w` `^v` (`^s`) | Split Editor Right (Down)                | *   |
| `^w` `V` (`S`)                    | Split Editor Left (Up)                   | *   |
| `^w` `C`                          | Close Editor Group                       | *   |
| `^w` `m` / `^w` `^m`              | Toggle Maximize Editor Group             | *   |
| `^w` `-`                          | Decrease Editor Group Size               | *   |
| `^w` `+`                          | Increase Editor Group Size               | *   |
| `^w` `=`                          | Even Editor Group Size                   | *   |
| `^w` `P`                          | Show Preview to Side                     | *   |
| `^w` `n`                          | Focus Notification                       | *   |
| `^w` `@` / `^w` `^@`              | Focus Terminal                           | *   |
| `^1` (`^2`, `^3`)                 | Focus First (Second, Third) Editor Group | *   |

## Tab Control

|                                    |                                          |     |
| ---------------------------------- | ---------------------------------------- | --- |
| `^<Tab>` (`^⇧<Tab>`) / `gt` (`gT`) | Next (Previous) Tab                      |     |
| `^w` `c` / `^W` `^c`/ `⌘w`         | Close Tab                                | *   |
| `^w` `o` / `^W` `^o`               | Close Other Tabs                         | *   |
| `^w` `L` (`H`)                     | Move Tab to Next (Previous) Editor Group | *   |
| `⌘1` (`⌘2`, `⌘3`)                  | Focus First (Second, Third) Tab          | *   |

## Git

|                                          |                         |     |
| ---------------------------------------- | ----------------------- | --- |
| `<leader>gc`                             | Open Changes            | *   |
| `<leader>go`                             | Open File               | *   |
| `<leader>n` (`<leader>p`) / `F7` (`⇧F7`) | Next (Previous) Changes | *   |
| `<leader>s`                              | Focus Other Side        | *   |
| `<leader>ga`                             | Stage Selected Range    | *   |
| `<leader>gu`                             | Unstage Selected Range  | *   |
| `<leader>gr`                             | Revert Selected Range   | *   |
| `<leader>gv`                             | View Git Graph          | *   |

## Terminal

|                                            |                                      |     |
| ------------------------------------------ | ------------------------------------ | --- |
| `^<Enter>`                                 | Run Selected Text in Terminal        | *   |
| `⌘i` `@`                                   | Toggle Terminal                      | *   |
| `⌘i` `c`                                   | New Terminal                         | *   |
| `⌘i` `d`                                   | Kill Terminal                        | *   |
| `⌘i` `.` (`⌘i` `,`) /  `⌘i` `j` (`⌘i` `k`) | Next (Previous) Terminal             | *   |
| `⌘i` `s`                                   | Split Terminal                       | *   |
| `⌘i` `e` (`E`)                             | Move Terminal To Editor  (To Panel)  | *   |
| `⌘i` `l` (`⌘i` `h`)                        | Next (Previous) Terminal Pane        | *   |
| `⌘j`                                       | Toggle Panel                         |     |
| `⌘i` `1` (`2`, `3`)                        | Focus First (Second, Third) Terminal | *   |
| `^.`                                       | Scroll to Bottom                     | *   |
| `⌥y` (`⌥e`)                                | Scroll Up (Down) Line                | *   |
| `⌥⇧y` (`⌥⇧e`)                              | Scroll Up (Down) Page                | *   |
| `⌥k` (`⌥j`)                                | Select To Previous (Next) Line       | *   |
| `⌥⇧k` (`⌥⇧j`)                              | Select To Previous (Next) Command    | *   |
| `^a` (`^e`)                                | Move Cursor to Head (End)            |     |
| `^p` (`^n`)                                | Previous (Next) Command in History   |     |
| `^u` (`^k`)                                | Cut Text From Cursor To Head (End)   |     |
## Sidebar (General)

|             |                              |     |
| ----------- | ---------------------------- | --- |
| `⌘b`        | Toggle Sidebar               |     |
| `⌘0`        | Focus Sidebar                |     |
| `⌘8` (`⌘9`) | Previous (Next) Sidebar View |     |

## Insert Mode

|                         |                                    |     |
| ----------------------- | ---------------------------------- | --- |
| `jj`                    | Return to Normal Mode              | *   |
| `^<BS>`                 | Delete Next Character              | *   |
| `^j` (`^k`, `^l`, `^h`) | Move Cursor Down (Up, Right, Left) | *   |

## F12

|              |                             |     |
| ------------ | --------------------------- | --- |
| `F12` (`gd`) | Go To Definition            |     |
| `⌥F12`       | Peek Definition             |     |
| `^w` `F12`   | Open Definition to the Side | *   |
| `⇧F12`       | Go To References            |     |
| `⌥⇧F12`      | Find All References         |     |

## Other Useful Vim Mapping

|                               |                                              |     |
| ----------------------------- | -------------------------------------------- | --- |
| `>>` (`<<`)                   | Indent (Unindent)                            |     |
| `^`                           | Jump to start of line                        |     |
| `%`                           | Jump to Matching Braces                      |     |
| `gu` (`gU`)                   | Change to Lowercase (Uppercase)              |     |
| `gr`                          | Replace With Register                        |     |
| `gh`                          | Instead of Hovering Mouse                    |     |
| `gc`                          | Toggle Line Comment                          |     |
| `gC`                          | Toggle Block Comment                         |     |
| `zc` (`zo`)                   | Fold (Unfold)                                | *   |
| `zM` (`zR`)                   | Fold (Unfold) All                            | *   |
| `<op>ii` (`<op>ai`, `<op>aI`) | Target indent block (for python, for C++/go) |     |
| `^o` (`^i`)                   | Jump to Older (Newer) Position               |     |
| `:%s/abd/def/gc`              | Replace With Confirm (y: yes, n: no)         |     |
| `^j` (`^k`, `^l`, `^h`)       | Move Cursor Down (Up, Right, Left)           | *   |

## Other Useful Vscode Mapping

|                          |                                                 |     |
| ------------------------ | ----------------------------------------------- | --- |
| `F8` (`⇧F8`, `⌥F8`)      | Next Problem (Previous Problem, Global Problem) |     |
| `⌘⇧m`                    | Open Problem Panel                              |     |
| `⌘⌥r` / `^<Enter>`       | Send Request (Rest Client)                      |     |
| `⌘⌥k`                    | Cancel Request (Rest Client)                    |     |
| `⌘<Enter>` (`⌘⇧<Enter>`) | Insert Line After (Before)                      |     |
| `⌘+` (`⌘-`)              | Zoom In (Out)                                   |     |
| `⌥z`                     | Toggle Word Wrap                                |     |
| `^⇧w`                    | Switch Workspace                                | *   |
| `^j` (`^k`)              | Select Next (Previous) Item                     | *   |
| `^y` (`^e`)              | Scroll Up (Down)                                | *   |
