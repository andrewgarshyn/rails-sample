require "rails_helper"

RSpec.describe Visit, type: :model do
  describe ".register" do
    subject { described_class.register(path, ip) }

    let(:path) { "/" }
    let(:ip) { "1.1.1.1" }

    context "when new visit" do
      it "creates a new visit" do
        expect { subject }.to change(described_class, :count).by(1)

        expect(Visit.last).to have_attributes(
          url: path,
          ip: ip,
          number: 1,
        )
      end
    end

    context "when returned visit" do
      before { described_class.create! url: path, ip:, number: 1 }

      it "increments a visit" do
        expect { subject }.to change(described_class, :count).by(0)

        expect(Visit.last).to have_attributes(
          url: path,
          ip: ip,
          number: 2,
        )
      end
    end
  end
end
