class HomeController < ApplicationController
  def index
  end

  def about
    @information = "List of countries with their capitals from https://restcountries.eu/rest/v2"
    require "http"
    @response = HTTP.get("https://restcountries.eu/rest/v2/all")
    @parsed_response = JSON.parse(@response).dup

  end
end
