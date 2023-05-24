function splash_economy.GetBalance(ply)
    -- Implementiere den Zugriff auf die Kontostände der Spieler
    -- Hier wird angenommen, dass die Datenbankfunktion "GetPlayerBalance" verwendet wird
    return splash_economy_database.GetPlayerBalance(ply)
end

-- Führt eine Transaktion zwischen zwei Spielern durch
function splash_economy.PerformTransaction(sender, receiver, amount)
    -- Implementiere die Logik für Transaktionen zwischen Spielern
    -- Hier wird angenommen, dass die Datenbankfunktionen "GetPlayerBalance", "UpdatePlayerBalance" usw. verwendet werden
    local senderBalance = splash_economy.GetBalance(sender)
    if senderBalance >= amount then
        splash_economy_database.UpdatePlayerBalance(sender, senderBalance - amount)
        splash_economy_database.UpdatePlayerBalance(receiver, splash_economy.GetBalance(receiver) + amount)
        return true
    else
        return false
    end
end

-- Funktion zum Drucken des Kontostands eines Spielers
function PrintDefaultBalance(ply)
    -- Implementiere den Ausdruck des Kontostands eines Spielers
    local balance = splash_economy.GetBalance(ply)
    local message = "Dein Kontostand: " .. SPLASH_ECONOMY.CurrencyUnit .. balance
    if ply then
        ply:ChatPrint(message)
    else
        print(message)
    end
end
