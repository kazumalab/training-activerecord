require "spec_helper"

describe "Lesson1" do
  context "Create Item" do
    before do
      Item.create(name: "お菓子")
    end

    it { expect(Item.count).to eq 1 }
  end
end
