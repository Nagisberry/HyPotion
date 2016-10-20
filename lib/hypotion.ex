defmodule HyPotion do
  use Application

  guild_list = %{}

  def get_player(params), do: send_request("/player", params)

  def find_guild(params), do: send_request("/findGuild", params)

  def get_guild(id), do: send_request("/guild", id: id)

  def get_friends(params), do: send_request("/friends", params)

  def get_session(params), do: send_request("/session", params)

  def get_key_info, do: send_request("/key", [])

  def get_boosters, do: send_request("/boosters", [])

  defp send_request(path, params) do
    HTTPoison.get!(
      "https://api.hypixel.net#{path}",
      ["User-Agent": "HyPoison/1.0"],
      params: Dict.put_new(params, :key, get_apikey)
    ).body |> Poison.decode!
  end

  def get_apikey, do: Application.get_env(:hypotion, :apikey)

  def set_apikey(value), do: Application.put_env(:hypotion, :apikey, value)
end
