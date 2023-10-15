Citizen.CreateThread(function()
  for _, info in pairs(Config.Blips) do
      info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z) -- Use info.coords
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, info.scale)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
  end
end)

