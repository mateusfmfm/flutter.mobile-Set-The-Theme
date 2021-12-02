# setTheTheme

A simple Flutter project with white label structure done by Mateus Félix. 
On this project, we addapt the initial Flutter Create project to init with White Label structure.
To see it working, run on terminal one of these commands to start one of the three stabilished themes:

- flutter run --flavor greenTheme -t lib/environment/green_theme/main_green.dart
- flutter run --flavor purpleTheme -t lib/environment/purple_theme/main_purple.dart
- flutter run --flavor redTheme -t lib/environment/red_theme/main_red.dart

It will addapts all the colors and assets for each respective flavor.
The colors will be set by the ColorResource class itens, and the asset itself will be a
randomly choosed.

All the assets and colors are defined on lib/environment folder. 

It will works, for now, only on Android. Need to configure all the iOS environment with XCode.

Any doubts, please send a message!

- mateusfmfm@outlook.com
- https://github.com/mateusfmfm
- https://www.linkedin.com/in/mateusfmfm/

------------------------------------------------------------------------------
For VSCode users, set the launch.json as follow:

{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Green Theme",
      "request": "launch",
      "type": "dart",
      "program": "lib/environment/green_theme/main_green.dart",
      "args": ["--flavor", "greenTheme"]
    },
    {
      "name": "Purple Theme",
      "request": "launch",
      "type": "dart",
      "program": "lib/environment/purple_theme/main_purple.dart",
      "args": ["--flavor", "purpleTheme"]
    },
    {
      "name": "Red Theme",
      "request": "launch",
      "type": "dart",
      "program": "lib/environment/red_theme/main_red.dart",
      "args": ["--flavor", "redTheme"]
    }
  ]
}



