RegisterCommand("getscreenshot", function(source, args)
    if not IsPlayerAceAllowed(source, "command.getscreenshot") then
        TriggerClientEvent("chat:addMessage", source, { args = {"🚫", "このコマンドを使用する権限がありません。"} })
        return
    end

    local targetId = tonumber(args[1])
    if not targetId or not GetPlayerName(targetId) then
        TriggerClientEvent("chat:addMessage", source, { args = {"❌", "有効なプレイヤーIDを入力してください。"} })
        return
    end

    TriggerClientEvent("custom:screenshot", targetId, source)
end, false)

RegisterServerEvent("custom:screenshot:log")
AddEventHandler("custom:screenshot:log", function(playerName, playerId, imageUrl)
    local webhook = "https://discord.com/api/webhooks/あなたのWebhook"

    if not imageUrl then
        print(("❌ [%s] %s のスクリーンショット取得に失敗しました。"):format(playerId, playerName))
        return
    end

    PerformHttpRequest(webhook, function(err) end, 'POST', json.encode({
        username = "Screenshot Bot",
        embeds = {{
            title = "📸 管理者スクリーンショット取得",
            description = ("**名前**: `%s`\n**プレイヤーID**: `%s`"):format(playerName, playerId),
            image = { url = imageUrl },
            color = 16753920
        }}
    }), { ['Content-Type'] = 'application/json' })
end)
