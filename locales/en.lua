local Translations = {
    info = {
        search = 'Search trough trash',
    },
    error = {
        cooldown = 'You have to wait %{time} seconds to search again',
        hasBeenSearched = "This bin has been already searched!",
        nothingFound = "You didn't find anything!",
    },
    progressbar = {
        searching = "Searching through trash",
    },
    reward = {
        money = "You have found %{amount}$",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})