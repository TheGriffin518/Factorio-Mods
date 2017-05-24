script.on_event(defines.events.on_research_finished, function(event) 
    local research = event.research
	local force = research.force
	local name = research.name
  for k = 1,20 do
    check_name = tostring("Crafting Speed Upgrade "..k)
    if name == check_name then
      force.manual_crafting_speed_modifier = 0.1*math.floor(k^1.2)
      break
    end
  end
    
end   
)