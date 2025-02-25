extends Node3D

@export var npc_scene: PackedScene  # NPC Prefab (træk NPC.tscn her)
@export var spawn_location: Node3D  # Reference til spawn-punkt (f.eks. en Marker3D)

func _on_spawn_timer_timeout():
	if npc_scene and spawn_location:
		var npc = npc_scene.instantiate()  # Lav en ny NPC
		npc.position = spawn_location.position  # Sæt dens position
		add_child(npc)  # Tilføj NPC'en til scenen
		print("Spawned new NPC!")
