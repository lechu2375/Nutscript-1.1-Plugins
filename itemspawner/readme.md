How to use?

Use /addrandomspawnpos for adding random spawn position.
    If you want to see where you have already placed spawn just type in console "spawnerdebug"
    For turning off this visualisation type it again.
    For updating positions type spawnerdebugreloadpos 

Use /addrandomspawn for add items to the pool.
Syntax: <uniqueID><getposBool> 
If you would do something like 
    /addrandomspawn pot true then this item will spawn on this position.

If you would do something like 
    /addrandomspawn pot false then pot will be spawning randomly in randomSpawnpos added by 
    /addrandomspawnpos command.

You can add same item to the random spawn and exact position spawn. There is no check for adding new spawns.

Console commands(ONLY FOR ADMINS):
    spawnerdebug - turn on drawing sphere in spawnpositions
    spawnerdebugreloadpos - get new positions from the server(if you will add new position you need to reload pos via this command)