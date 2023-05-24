concommand.Add("economy_balance", function(ply, cmd, args)
    PrintDefaultBalance(ply)
end)

concommand.Add("economy_transfer", function(ply, cmd, args)
    local receiver = 
    local amount = 

    if splash_economy.PerformTransaction(ply, receiver, amount) then
        ply:ChatPrint("Transaktion erfolgreich durchgeführt.")
    else
        ply:ChatPrint("Transaktion fehlgeschlagen. Nicht genügend Guthaben.")
    end
end)
