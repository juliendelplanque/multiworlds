# MultiWorlds
This utility provide the support of multi worlds in Pharo 5.

# Install me
Execute the following code in a workspace:

~~~
Metacello new
    baseline: 'MultiWorlds';
    repository: 'github://juliendelplanque/multiworlds/repository';
    load.
~~~

# Shortcuts
Default shortcuts to change the current world are Ctrl+Shift+j (next world)
and Ctrl+Shift+k (previous world).

This can be modified by executing:

~~~
WorldsCategory nextWorldShortcut: aShortcut.
WorldsCategory previousWorldShortcut: anotherShortcut.
WorldsCategory reinstall.
~~~

# Notes
- Worlds are dynamically added/removed according to your needs.
- You can not create a new world (by trying to go to the next world)
if you didn't opened anything in the current world.
- For now, this project only works with Pharo 5 images.
