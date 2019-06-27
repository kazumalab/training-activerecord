require "spec_helper"

describe "Lesson2" do
  context "when no data" do
    it "all items" do
      expect(Item.all.count).to eq 0
    end
  end

  context "when exist data" do
    let(:category) { Category.new(name: "お菓子") }

    before do
      ["ケーキ", "クッキー", "ポテトチップス"].each do |name|
        category.items.build(name: name, state: 0)
      end

      category.save
    end
    it { expect(Item.count).to eq 3 }
    it { expect(category.items.count).to eq 3 }
  end
end
