# KF2_SDK
Sources of KF2 projects.

How to set up modifications:

Browse to KillingFloor2\KFGame\Config\KFEditor.ini
Locate the section [ModPackages]
For each mutator project/package, add a new line with your project/package name. ModPackages=MyMutator
Next, configure the file paths. ModPackagesInPath will be where your source files are read from, and ModOutputDir is where your compiled U will appear.
For ModPackagesInPath, ModPackagesInPath=....\KFGame\Src

For ModOutputDir, ModOutputDir=....\KFGame\Script

(NOTE) These 2 paths will expand to your corresponding "Script" and "Src" folders within Documents\My Games\KillingFloor2\KFGame.

The final result of your KFEditor.ini should look like this: [ModPackages] ModPackagesInPath=....\KFGame\Src ModOutputDir=....\KFGame\Script ModPackages=MyMutator
