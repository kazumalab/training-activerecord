require "spec_helper"

describe "Lesson1" do
  context "アイテムを一つ生成する" do
    before do
      Item.create(name: "お菓子")
    end

    it { expect(Item.count).to eq 1 }
  end

  context "アイテムを生成するが、nameが空" do
    before do
      Item.create(name: "")
    end

    it { expect(Item.count).to eq 0 }
  end
end
