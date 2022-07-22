require "rails_helper"

RSpec.describe "Home", type: :request do
  describe "GET pages/home" do
    it "schedules a job" do
      ActiveJob::Base.queue_adapter = :test
      expect { get "/" }.to have_enqueued_job(RegisterVisitJob).with("/", "127.0.0.1")
    end
  end
end
