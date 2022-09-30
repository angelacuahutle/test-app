require "rails_helper"

RSpec.describe TeachersController, type: :routing do
  describe "routing" do
    it "routes to root_path" do
      expect(get: "/teachers").to route_to("teachers#index")
    end
  end
end
