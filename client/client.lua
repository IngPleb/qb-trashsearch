local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.General.TrashBinModels, {
        options = {
            {
                event = 'qb-trashsearch:server:searchTrash',
                type = 'server',
                icon = "fa-solid fa-trash-can",
                label = Lang:t('info.search'),
            },
        },
        distance = Config.General.SearchDistance,
    })
end)

RegisterNetEvent('qb-trashsearch:client:searchTrash', function(binId)
    QBCore.Functions.Progressbar('qb-trashsearch:searchingTrash', Lang:t("progressbar.searching"), Config.General.DurationOfSearch, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Animations.AnimationDictionary,
        anim = Config.Animations.Animation,
        flags = 16,
    }, {}, {}, function() -- Play When Done
        -- Clear ped task
        ClearPedTasks(PlayerPedId())

        TriggerServerEvent('qb-trashsearch:server:searchedTrash', binId)

        -- Add stress
        if Config.Stress.AddStress then
            TriggerServerEvent('hud:server:GainStress', math.random(Config.Stress.MinStress, Config.Stress.MaxStress))
        end
    end, function() -- Play When Cancel
        -- Clear ped task
        ClearPedTasks(PlayerPedId())
    end)
end)
