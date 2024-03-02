texty = 500
selected_track = 0
is_active = 0

song_index = array_create(100,0)
song_ingame = array_create(100,"unset")
song_name = array_create(100,"unset")
song_author = array_create(100,"unset")
show_debug_message(song_ingame[13])

for (var n = 0; n < 100; n++)
{
	song_index[n] = mu_chocosubmarine
	song_ingame[n] = "unset"
	song_name[n] = "unset unset"
	song_author[n] = "unset unset unset"
}

var i = 0

song_index[i] = mu_disclaimer
song_ingame[i] = "Disclaimer"
song_name[i] = "Moseni Lotus"
song_author[i] = "Yume 2kii OST"
i++

song_index[i] = mu_title
song_ingame[i] = "Title"
song_name[i] = "normal evening"
song_author[i] = "rangerbts"
i++

song_index[i] = mu_hubtt2
song_ingame[i] = "The Hub"
song_name[i] = "Meditation In A Tranquil Toneland"
song_author[i] = "doctorn0gloff"
i++

song_index[i] = mu_party
song_ingame[i] = "The Party"
song_name[i] = "Joyride In A Galloping Toneland"
song_author[i] = "doctorn0gloff"
i++

song_index[i] = mu_danceroom
song_ingame[i] = "The Dance Room"
song_name[i] = "Activities In A Zany Toneland!"
song_author[i] = "doctorn0gloff"
i++

song_index[i] = mu_khizar1
song_ingame[i] = "Khizar's Basement"
song_name[i] = "The Grey Skies Of The Haunted Playground"
song_author[i] = "Desolo Zantas"
i++

song_index[i] = mu_khizar2
song_ingame[i] = "Lava Lamp Hideout"
song_name[i] = "ghost surfing"
song_author[i] = "rangerbts"
i++

song_index[i] = mu_ashroom
song_ingame[i] = "Ash Room"
song_name[i] = "trances"
song_author[i] = "rangerbts"
i++

song_index[i] = mu_pokemonbattle
song_ingame[i] = "Ash Fight"
song_name[i] = "Battle Theme"
song_author[i] = "Pokemon Emerald OST"
i++

song_index[i] = mu_pokemonwin
song_ingame[i] = "Ash Win"
song_name[i] = "TAC#21: The Journey Continues!"
song_author[i] = "quarkimo"
i++

song_index[i] = mu_khizartechsupport
song_ingame[i] = "Tech Support"
song_name[i] = "if i made music for Street Fighter III: New Generation"
song_author[i] = "ScrewStache"
i++

song_index[i] = mu_acemaze
song_ingame[i] = "Ace Maze"
song_name[i] = "Dragan Cirkovic Cira - Pink rege kolo"
song_author[i] = "Steve.milanovicc@gmail.com"
i++

song_index[i] = mu_elicave
song_ingame[i] = "Pickle Caverns"
song_name[i] = "Candescent Chasm"
song_author[i] = "sincx"
i++

song_index[i] = mu_hedgehog
song_ingame[i] = "Hedgehog Theme"
song_name[i] = "Red&Green - Op. 40 No. 1, Prelude (Ishikapustin)"
song_author[i] = "STAFFcirc"
i++

song_index[i] = mu_hell
song_ingame[i] = "Hell"
song_name[i] = "Treefrog Turnpike"
song_author[i] = "Jamphibious"
i++

song_index[i] = mu_kitchenpantry
song_ingame[i] = "Hell's Kitchen"
song_name[i] = "hillside saunter"
song_author[i] = "fluidvolt"
i++

song_index[i] = mu_eligoomba
song_ingame[i] = "Eli Goomba Tunnel"
song_name[i] = "Melodious Mischief in the Metropolis"
song_author[i] = "doctorn0gloff"
i++

song_index[i] = mu_golf1
song_ingame[i] = "Skoimp Golf"
song_name[i] = "No Speed Limit!"
song_author[i] = "Leilani Wilson"
i++

song_index[i] = mu_garbage
song_ingame[i] = "Garbage World Deluxe Super"
song_name[i] = "Metally Slime Melody (Factory Stage) - Super Slime Arena"
song_author[i] = "commandycan"
i++

song_index[i] = mu_car
song_ingame[i] = "Honda Civic Theme"
song_name[i] = "zugzwang"
song_author[i] = "amimifafa"
i++

song_index[i] = mu_shootthebogos
song_ingame[i] = "Shoot The Bogos!"
song_name[i] = "PopFight"
song_author[i] = "father p"
i++

song_index[i] = mu_yep1
song_ingame[i] = "Yepordy A"
song_name[i] = "Deckromancer - Puzzle Theme"
song_author[i] = "commandycan"
i++

song_index[i] = mu_yep2
song_ingame[i] = "Yepordy B"
song_name[i] = "YMO \"Simoon\" from Yellow Magic Orchestra"
song_author[i] = "Isao Takaku"
i++

song_index[i] = mu_yep3
song_ingame[i] = "Yepordy C"
song_name[i] = "Saturday"
song_author[i] = "commandycan"
i++

song_index[i] = mu_yep4
song_ingame[i] = "Yepordy D"
song_name[i] = "pinkover"
song_author[i] = "Oliver Buckland"
i++

song_index[i] = mu_yep5
song_ingame[i] = "Yepordy E"
song_name[i] = "Away From Home - Frinkle's Theme"
song_author[i] = "Michael Okon"
i++

song_index[i] = mu_newpork
song_ingame[i] = "New Pork City"
song_name[i] = "(midi) disentanglement dynamo"
song_author[i] = "zipdisq"
i++

song_index[i] = mu_sandwhichshop
song_ingame[i] = "Harper Sammy Land"
song_name[i] = "GrandmaSockBlast"
song_author[i] = "zacerino & hexisbex"
i++

song_index[i] = mu_credits
song_ingame[i] = "Credits"
song_name[i] = "Alex's Dream Land"
song_author[i] = "Kommisar"
i++

max_songs = i - 1

show_debug_message(song_ingame[14])
show_debug_message(array_length(song_index))