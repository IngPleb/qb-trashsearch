local Translations = {
    info = {
        search = 'Müll durchsuchen',
    },
    error = {
        cooldown = 'Du musst %{time} Sekunden warten, um erneut zu suchen',
        hasBeenSearched = "Dieser Mülleimer ist bereits durchsucht worden!",
        nothingFound = "Du hast nichts gefunden!",
    },
    progressbar = {
        searching = "Müll durchsuchen",
    },
    reward = {
        money = "Du hast %{amount}$ gefunden",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
