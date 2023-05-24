include("autorun/sh_economy_config.lua")

include("splushi_econemysystem/splash_economy_functions.lua")
include("splushi_econemysystem/splash_economy_database.lua")
include("splushi_econemysystem/splash_economy_commands.lua")

function InitializeEconomySystem()
    splash_economy.InitializeDatabase()
    splash_economy.InitializePlayerData()

    PrintDefaultBalance()
end

hook.Add("Initialize", "SplashEconomy_Initialize", InitializeEconomySystem)