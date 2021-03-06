PLUGIN.name = "Item Spawner"
PLUGIN.description = "Random item spawner"
PLUGIN.author = "Lechu2375"

nut.util.include("sv_spawner.lua")
nut.util.include("cl_spawner.lua")

nut.command.add("addrandomspawn", {
	syntax = "<string item><bool getpos>",
    adminOnly = true,
	onRun = function(client, arguments)
		if (IsValid(client)) then
			local itemInfo = {}
            itemInfo.item = arguments[1]
            if tobool(arguments[2]) then
                itemInfo.pos = client:GetPos()
            end
            FS.ItemSpawner.AddSpawn(itemInfo)
		end
	end
})

nut.command.add("addrandomspawnpos", {
	syntax = "",
    adminOnly = true,
	onRun = function(client, arguments)
		if (IsValid(client)) then
            if SERVER then
			    FS.ItemSpawner.Vectors[#FS.ItemSpawner.Vectors+1] = client:GetPos()
                    file.Write("FSitemspawnerpos.txt",util.TableToJSON(FS.ItemSpawner.Vectors))
            end
		end
	end
})

nut.config.add("randomItemSpawnTime", 50, "Delay between spawning in seconds", nil, {
	form = "Float",
	data = {min=30, max=3000},
	category = "Firestone Foundation - Item Spawner"
})

