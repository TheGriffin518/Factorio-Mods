-- item.lua
for k = 1,20 do
  if k>15 then 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    }
  elseif k>10 then 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    }

  elseif k>5 then 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  else 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    }
  end
  
  if k ==1 then
    data:extend({

      {
        type = "technology",
        name= tostring("Crafting Speed Upgrade "..k),
        icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
        icon_size = 64,
        unit = unit_array,
        order="c-k-f-a",
        upgrade = true,
        localised_name = "Crafting speed upgrade "..k.." - "..100+(20*k).."%"
      }
      
    })
  else
    data:extend({

      {
        type = "technology",
        name= tostring("Crafting Speed Upgrade "..k),
        prerequisites = {tostring("Crafting Speed Upgrade "..k-1)},
        icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
        icon_size = 64,
        unit = unit_array,
        order="c-k-f-a",
        upgrade = true,
        localised_name = "Crafting speed upgrade "..k.." - "..100+(20*k).."%"
      }
      
    })
  end
end

--[[

data:extend(
{
  {
    type = "technology",
    name="crafting-speed-upgrade-1",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    },
    order="c-k-f-a",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-2",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-1"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order="c-k-f-b",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-3",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order="c-k-f-c",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-4",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order="c-k-f-d",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-5",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-4"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order="c-k-f-e",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-6",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-5"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order="c-k-f-f",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-7",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-6"},
    unit =
    {
      count = 1200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order="c-k-f-g",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-8",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-7"},
    unit =
    {
      count = 1600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order="c-k-f-h",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-9",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-8"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order="c-k-f-i",
	upgrade = "true",
  },
  {
    type = "technology",
    name="crafting-speed-upgrade-10",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    prerequisites = {"crafting-speed-upgrade-9"},
    unit =
    {
      count = 3000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order="c-k-f-j",
	upgrade = "true",
  }
})
]]--