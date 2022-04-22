class PagesController < ApplicationController
  def home
    path = "/"
    ip = request.ip

    @visit = Visit.register path, ip
  end
end
