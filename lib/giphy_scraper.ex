defmodule GiphyScraper do
  @moduledoc """
  Documentation for GiphyScraper.
  """

  @doc """
  Takes a search term and returns 25 results

  ## Examples

      iex> GiphyScraper.search(term)

  """
  import IO
  def search do
    api_key = System.get_env("giphy_api_key")
    term = gets "For which term would you like to search Giphy?"
    puts "Searching for #{String.trim(term)}..."
    url = "http://api.giphy.com/v1/gifs/search?q=#{String.trim(term)}&api_key=#{api_key}&limit=25"
    puts url
    HTTPoison.start
    HTTPoison.get(url)
  end
end
