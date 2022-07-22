class PagesController < ApplicationController
  def home
    path = "/"
    ip = request.ip

    @visit = Visit.last
    RegisterVisitJob.perform_later path, ip
  end
end
