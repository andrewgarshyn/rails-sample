require "rails_helper"

RSpec.describe RegisterVisitJob, type: :job do
  let(:path) { "/" }
  let(:ip) { "1.1.1.1" }

  it "registers a visit" do
    allow(Visit).to receive(:register)

    described_class.perform_now(path, ip)

    expect(Visit).to have_received(:register).with(path, ip)
  end
end
