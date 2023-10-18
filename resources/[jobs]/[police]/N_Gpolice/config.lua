Config                            = {}

config = {

    armurie = {
        {
            grade = "Recrue",
            weapons = {
                "weapon_flar",
                "weapon_flashlight",
                "weapon_stungun",
                "WEAPON_NIGHTSTICK",
            }
        },
        {
            grade = "Officier",
            weapons = {
                "weapon_flare",
                "weapon_flashlight",
                "weapon_stungun",
                "WEAPON_NIGHTSTICK",
                "WEAPON_PISTOL",
            }
        },
        {
            grade = "Sergent",
            weapons = {
                "weapon_flare",
                "weapon_flashlight",
                "weapon_stungun",
                "WEAPON_NIGHTSTICK",
                "WEAPON_PISTOL",
                "WEAPON_BZGAS",
                "WEAPON_PUMPSHOTGUN",
            }
        },
        {
            grade = "Brigadier",
            weapons = {
                "weapon_flare",
                "weapon_flashlight",
                "weapon_stungun",
                "WEAPON_NIGHTSTICK",
                "WEAPON_PISTOL",
                "WEAPON_PISTOL50",
                "WEAPON_BZGAS",
                "WEAPON_PUMPSHOTGUN",
                "WEAPON_SMG",
            }
        },
        {
            grade = "Lieutenant",
            weapons = {
                "weapon_flare",
                "weapon_flashlight",
                "weapon_stungun",
                "WEAPON_NIGHTSTICK",
                "WEAPON_PISTOL",
                "WEAPON_PISTOL50",
                "WEAPON_BZGAS",
                "WEAPON_PUMPSHOTGUN",
                "WEAPON_SMG",
                "WEAPON_CARBINERIFLE_MK2",
            }
        },
        {
            grade = "Capitaine",
            weapons = {
                "weapon_flare",
                "weapon_flashlight",
                "weapon_stungun",
                "WEAPON_NIGHTSTICK",
                "WEAPON_PISTOL",
                "WEAPON_PISTOL50",
                "WEAPON_BZGAS",
                "WEAPON_PUMPSHOTGUN",
                "WEAPON_SMG",
                "WEAPON_CARBINERIFLE_MK2",
            }
        },
        {
            grade = "Commandant",
            weapons = {
                "weapon_flare",
                "weapon_flashlight",
                "weapon_stungun",
                "WEAPON_NIGHTSTICK",
                "WEAPON_PISTOL",
                "WEAPON_PISTOL50",
                "WEAPON_BZGAS",
                "WEAPON_PUMPSHOTGUN",
                "WEAPON_SMG",
                "WEAPON_CARBINERIFLE_MK2",
            }
        },
    },

    serviceWeapons = { -- All weapons to remove when service out
        "weapon_nightstick",
        "weapon_stungun",
        "weapon_combatpistol",
        "weapon_pumpshotgun",
        "weapon_flare",
        "weapon_flashlight",
        "WEAPON_PISTOL",
        "WEAPON_PISTOL50",
        "WEAPON_BZGAS",
        "WEAPON_SMG",
        "WEAPON_CARBINERIFLE_MK2",
    },
    
    zone = {
        {"armurie", vector3(452.19, -980.08, 30.68), "Appuyer sur ~INPUT_PICKUP~ pour intéragir", function() OpenPoliceArmurieMenu() end, "s_m_y_cop_01", 6.0628008842468, false},
        {"garage", vector3(459.17, -1007.98,28.25), "Appuyer sur ~INPUT_PICKUP~ pour ouvrir le garage", function() OpenPoliceGarageMenu() end, "s_m_y_cop_01", 3.1009781360626, false},
    },
    garage = {
        vehs = {
            {label = "4x4 K-9 Police departement", veh = "police6"},
            {label = "Dodge Chargeur", veh = "police2"},
            {label = "4x4 Cruiser", veh = "police3"},
            {label = "Maserati - VIR", veh = "ghispo2"},
            {label = "Porsche - VIR", veh = "pol718"},
        },
        pos  = {
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            {pos = vector3(445.40, -1020.16, 28.55), heading = 91.81},
            
          
        },
    },
}
