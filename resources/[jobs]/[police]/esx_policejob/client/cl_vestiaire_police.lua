ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0) 
end
end)

local PlayerData = {}
local playerPed = PlayerPedId()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

---------------- FONCTIONS ------------------

RMenu.Add('tenue', 'npolice', RageUI.CreateMenu("Vestaire", "Vestiaire"))

Citizen.CreateThread(function()
    while true do

        RageUI.IsVisible(RMenu:Get('tenue', 'npolice'), true, true, true, function()

            RageUI.Button("Reprendre sa tenue : ~y~Civile",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    vcivil()
                end
            end)

            RageUI.Separator("↓ Tenue ~b~LPSD ~s~↓")

            RageUI.Button("S'équiper de la tenue : ~b~Police",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    vpolice()
                end
            end)

            RageUI.Button("S'équiper de la tenue : ~b~DOA",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    vdoa()
                end
            end)

            RageUI.Button("S'équiper de la tenue : ~b~SWAT",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    vswat()
                end
            end)

            RageUI.Button("S'équiper de la tenue : ~b~Opération",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    vope()
                end
            end)

            RageUI.Separator("↓ Gilets ~b~LSPD ~s~↓")

            RageUI.Button("S'équiper d'un : ~r~Gilet Pare-Balles",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    AddArmourToPed(playerPed,100)
                    vgillet()
                end
            end)

            RageUI.Button("S'équiper d'un : ~r~Gilet Jaune",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    AddArmourToPed(playerPed,100)
                    vgilletj()
                end
            end)

            RageUI.Button("S'équiper d'un : ~r~Sac à dos",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    AddArmourToPed(playerPed,100)
                    vsac()
                end
            end)

        end, function()
        end, 1)
                        Citizen.Wait(0)
                                end
                            end)

---------------------------------------------


local position = {
    {x = 452.34, y = -993.30, z = 30.68}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
                DrawMarker(20, 452.34, -993.30, 30.68, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)



            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au vestiaire")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('tenue', 'npolice'), not RageUI.Visible(RMenu:Get('tenue', 'npolice')))
                end
            end
        end
    end
    end
end)

function vpolice()
                local model = GetEntityModel(GetPlayerPed(-1))
                TriggerEvent('skinchanger:getSkin', function(skin)
                    if model == GetHashKey("mp_m_freemode_01") then
                        clothesSkin = {
                            ['tshirt_1'] = 38,  ['tshirt_2'] = 1,
                            ['torso_1'] = 55,   ['torso_2'] = 0,
                            ['decals_1'] = 0,   ['decals_2'] = 0,
                            ['arms'] = 41,
                            ['pants_1'] = 52,   ['pants_2'] = 1,
                            ['shoes_1'] = 25,   ['shoes_2'] = 0,
                            ['helmet_1'] = -1,  ['helmet_2'] = 0,
                            ['chain_1'] = 0,    ['chain_2'] = 0,
                            ['ears_1'] = 2,     ['ears_2'] = 0,
                        }
                    else
                        clothesSkin = {
                            ['bags_1'] = 0, ['bags_2'] = 0,
                            ['tshirt_1'] = 15,['tshirt_2'] = 2,
                            ['torso_1'] = 65, ['torso_2'] = 2,
                            ['arms'] = 36, ['arms_2'] = 0,
                            ['pants_1'] = 38, ['pants_2'] = 2,
                            ['shoes_1'] = 12, ['shoes_2'] = 6,
                            ['mask_1'] = 0, ['mask_2'] = 0,
                            ['bproof_1'] = 0,
                            ['chain_1'] = 0,
                            ['helmet_1'] = -1, ['helmet_2'] = 0,
                        }
                    end
                    TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
                end)
            end

function vdoa()
                local model = GetEntityModel(GetPlayerPed(-1))
                TriggerEvent('skinchanger:getSkin', function(skin)
                    if model == GetHashKey("mp_m_freemode_01") then
                        clothesSkin = {
                            ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                            ['torso_1'] = 102,   ['torso_2'] = 0,
                            ['decals_1'] = 0,   ['decals_2'] = 0,
                            ['arms'] = 0,
                            ['pants_1'] = 59,   ['pants_2'] = 0,
                            ['shoes_1'] = 25,   ['shoes_2'] = 0,
                            ['helmet_1'] = -1,  ['helmet_2'] = 0,
                            ['chain_1'] = 0,    ['chain_2'] = 0,
                            ['mask_1'] = -1,  ['mask_2'] = 0,
                            ['bproof_1'] = 7,  ['bproof_2'] = 4,
                            ['ears_1'] = 2,     ['ears_2'] = 0,
                        }
                    else
                        clothesSkin = {
                            ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                            ['torso_1'] = 102,   ['torso_2'] = 0,
                            ['decals_1'] = 0,   ['decals_2'] = 0,
                            ['arms'] = 0,
                            ['pants_1'] = 59,   ['pants_2'] = 0,
                            ['shoes_1'] = 25,   ['shoes_2'] = 0,
                            ['helmet_1'] = -1,  ['helmet_2'] = 0,
                            ['chain_1'] = 0,    ['chain_2'] = 0,
                            ['mask_1'] = -1,  ['mask_2'] = 0,
                            ['bproof_1'] = 7,  ['bproof_2'] = 4,
                            ['ears_1'] = 2,     ['ears_2'] = 0,
                        }
                    end
                    TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
                end)
            end

function vswat()
                local model = GetEntityModel(GetPlayerPed(-1))
                TriggerEvent('skinchanger:getSkin', function(skin)
                    if model == GetHashKey("mp_m_freemode_01") then
                        clothesSkin = {
                            ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                            ['torso_1'] = 93,   ['torso_2'] = 1,
                            ['decals_1'] = 0,   ['decals_2'] = 0,
                            ['arms'] = 0,
                            ['pants_1'] = 59,   ['pants_2'] = 0,
                            ['shoes_1'] = 25,   ['shoes_2'] = 0,
                            ['helmet_1'] = -1,  ['helmet_2'] = 0,
                            ['chain_1'] = 0,    ['chain_2'] = 0,
                            ['mask_1'] = -1,  ['mask_2'] = 0,
                            ['bproof_1'] = 0,  ['bproof_2'] = 0,
                            ['ears_1'] = 2,     ['ears_2'] = 0,
                        }
                    else
                        clothesSkin = {
                            ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                            ['torso_1'] = 93,   ['torso_2'] = 1,
                            ['decals_1'] = 0,   ['decals_2'] = 0,
                            ['arms'] = 0,
                            ['pants_1'] = 59,   ['pants_2'] = 0,
                            ['shoes_1'] = 25,   ['shoes_2'] = 0,
                            ['helmet_1'] = -1,  ['helmet_2'] = 0,
                            ['chain_1'] = 0,    ['chain_2'] = 0,
                            ['mask_1'] = -1,  ['mask_2'] = 0,
                            ['bproof_1'] = 0,  ['bproof_2'] = 0,
                            ['ears_1'] = 2,     ['ears_2'] = 0,
                        }
                    end
                    TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
                end)
            end

function vope()
                local model = GetEntityModel(GetPlayerPed(-1))
                AddArmourToPed(playerPed,100)
                SetPedArmour(playerPed, 100)
            
                TriggerEvent('skinchanger:getSkin', function(skin)
                    if model == GetHashKey("mp_m_freemode_01") then
                        clothesSkin = {
                            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                            ['torso_1'] = 50,   ['torso_2'] = 0,
                            ['decals_1'] = 0,   ['decals_2'] = 0,
                            ['arms'] = 41,
                            ['pants_1'] = 40,   ['pants_2'] = 1,
                            ['shoes_1'] = 25,   ['shoes_2'] = 0,
                            ['helmet_1'] = 75,  ['helmet_2'] = 0,
                            ['mask_1'] = 52,  ['mask_2'] = 0,
                            ['chain_1'] = 0,    ['chain_2'] = 0,
                            ['bproof_1'] = 7,  ['bproof_2'] = 0,
                        }
                    else
                        clothesSkin = {
                            ['tshirt_1'] = 53,  ['tshirt_2'] = 0,
                            ['torso_1'] = 93,   ['torso_2'] = 1,
                            ['decals_1'] = 0,   ['decals_2'] = 0,
                            ['arms'] = 0,
                            ['pants_1'] = 59,   ['pants_2'] = 0,
                            ['shoes_1'] = 25,   ['shoes_2'] = 0,
                            ['helmet_1'] = -1,  ['helmet_2'] = 0,
                            ['chain_1'] = 0,    ['chain_2'] = 0,
                            ['mask_1'] = -1,  ['mask_2'] = 0,
                            ['bproof_1'] = 0,  ['bproof_2'] = 0,
                            ['ears_1'] = 2,     ['ears_2'] = 0,
                        }
                    end
                    TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
                end)
            end

function vgillet()
    local model = GetEntityModel(GetPlayerPed(-1))

    AddArmourToPed(playerPed,100)
    SetPedArmour(playerPed, 100)
    TriggerEvent('skinchanger:getSkin', function(skin)
        if model == GetHashKey("mp_m_freemode_01") then
            clothesSkin = {
                ['bproof_1'] = 12,  ['bproof_2'] = 3
            }
        end
        TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    end)
end

function vgilletj()
    local model = GetEntityModel(GetPlayerPed(-1))
    TriggerEvent('skinchanger:getSkin', function(skin)
        if model == GetHashKey("mp_m_freemode_01") then
            clothesSkin = {
                ['bproof_1'] = 18,  ['bproof_2'] = 0
            }
        end
        TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    end)
end   

function vsac()
    local model = GetEntityModel(GetPlayerPed(-1))
    TriggerEvent('skinchanger:getSkin', function(skin)
        if model == GetHashKey("mp_m_freemode_01") then
            clothesSkin = {
                ['bags_1'] = 44,  ['bags_2'] = 0
            }
        end
        TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    end)
end  

function vcivil()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        TriggerEvent('skinchanger:loadSkin', skin)
       end)
    end


