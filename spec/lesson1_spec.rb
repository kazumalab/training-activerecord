require "spec_helper"

describe "Lesson1" do
  it { expect(Item.create(name: "お菓子")).to be_truthy }
end
