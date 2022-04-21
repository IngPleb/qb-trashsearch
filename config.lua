Config = {}

Config.General = {
    TrashBinModels = {
        -1096777189, 666561306, 1437508529, -1426008804, -228596739, 161465839, 651101403
    },
    SearchDistance = 1.5,
    -- How long does it take to search trough trash
    DurationOfSearch = 8000, -- In miliseconds
    SearchCooldown = 60000, -- In miliseconds
    -- Time that trash is refilled and can be searched again
    RefillTime = 600000, -- In miliseconds
}


Config.Stress = {
    -- Should player get some stress after searching trough trash
    AddStress = true,
    -- How much stress should player get MIN
    MinStress = 1,
    -- How much stress should player get MAX
    MaxStress = 10,
}

Config.Reward = {
    -- Chance of getting a reward in % (0-100)
    Chance = 75,
    -- Money
    Money = {
        Chance = 25, -- Chance to get money instead of an item in % (0-100)
        Min = 1,
        Max = 100,
    },
    -- How many original items you will get
    NumberOfItems = 3,
    -- Items you can get
    ItemList = { "water_bottle" }
}
