require_relative "helper/data_works_spec_helper"

describe TheDataWorks do
  let!(:data) { TheDataWorks.new }

  describe "add_pet" do
    it "creates a new 'pet' record" do
      expect { data.add_pet }.to change(Pet, :count).by(1)
    end
  end
end
