local package_id = "com.Thor.Gutsman_V1"
local character_id = "com.Thor.enemy.Gutsman_V1"

function package_requires_scripts()
  Engine.define_character(character_id, _modpath.."Gutsman_V1")
end

function package_init(package)
  package:declare_package_id(package_id)
  package:set_name("GutsMan V1")
  package:set_description("BN3 Gutsman V1 Battle!")
  package:set_speed(1)
  package:set_attack(30)
  package:set_health(300)
  package:set_preview_texture_path(_modpath.."preview.png")
end

function package_build(mob)
local texPath = _modpath.."background.png"
local animPath = _modpath.."background.animation"
mob:set_background(texPath, animPath, -0.5, -0.5)

local spawner = mob:create_spawner(character_id,Rank.V1)
spawner:spawn_at(5, 2)
end
