RegisterNetEvent("custom:screenshot", function(adminSrc)
    local playerName = GetPlayerName(PlayerId())
    local playerId = GetPlayerServerId(PlayerId())

    exports['screenshot-basic']:requestScreenshotUpload(
        "discordwebhookID", "files[]",
        { encoding = "png", quality = 0.8 },
        function(data)
            local result = json.decode(data)
            if result and result.attachments and result.attachments[1] then
                TriggerServerEvent("custom:screenshot:log", playerName, playerId, result.attachments[1].url)
            else
                TriggerServerEvent("custom:screenshot:log", playerName, playerId, nil)
            end
        end
    )
end)
