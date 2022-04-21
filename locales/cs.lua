local Translations = {
    info = {
        search = 'Prohledat odpadky',
    },
    error = {
        cooldown = 'Musíte počkat %{time} sekund, než můžete znovu prohledat',
        hasBeenSearched = "Tenhle koš již byl prohledán!",
        nothingFound = "Nic jste nenašli!",
    },
    progressbar = {
        searching = "Prohledáváte odpadky",
    },
    reward = {
        money = "Našli jste %{amount}$",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})