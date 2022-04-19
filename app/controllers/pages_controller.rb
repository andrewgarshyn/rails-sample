class PagesController < ApplicationController
  def home
    Visit.create! url: '/', ip: request.ip

    @visits = Visit.all
  end
end
