Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(838130328677384202)

		SetDiscordRichPresenceAsset('swtest')
        
        SetDiscordRichPresenceAssetText('By WayZe#0001')
       
        SetDiscordRichPresenceAssetSmall('swtest2')

        SetDiscordRichPresenceAssetSmallText('SW Développement')

        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/CsTWs4MEjU")
        SetDiscordRichPresenceAction(1, "Twitter", "https://twitter.com/SWDiscord")

		Citizen.Wait(60000)
	end
end)