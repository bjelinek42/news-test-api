class NewsController < ApplicationController

  def index
    p Rails.application.credentials.news_api_key
    response = HTTP.get("https://newsapi.org/v2/everything?q=tesla&from=2022-02-28&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api_key}")
    articles = response.parse(:json)
    render json: articles
  end
end
