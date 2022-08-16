local Translations = {
    info = {
        search = 'Buscar en la basura',
    },
    error = {
        cooldown = 'Tienes que esperar %{time} segundos para buscar de nuevo',
        hasBeenSearched = "Esta basura ya ha sido rebuscada recientemente!",
        nothingFound = "No has encontrado nada!",
    },
    progressbar = {
        searching = "Buscando en la basura",
    },
    reward = {
        money = "Has encontrado %{amount}$",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
