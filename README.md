# HyPotion

Hypixel API Wrapper for Elixir

## Configuration

### config/config.exs
```elixir
config :hypotion, [
  apikey: "Put your API key"
]
```


## Usage
```elixir
# Get player data.
HyPotion.get_player uuid: "player uuid"

# Get player's friend data.
HyPotion.get_friends uuid: "player uuid"

# Get guild ID.
HyPotion.find_guild name: "guild name"

# Get guild data.
HyPotion.get_guild "guild id"

# Get player's session data.'
HyPotion.get_session uuid: "player uuid"

# Get API Key's information.
HyPotion.get_key_info

# Get Coin Boosters information.
HyPotion.get_boosters
```