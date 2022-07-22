class RegisterVisitJob < ApplicationJob
  queue_as :default

  def perform(path, ip)
    sleep 5
    Visit.register(path, ip)
  end
end
