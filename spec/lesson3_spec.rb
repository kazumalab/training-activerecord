require "spec_helper"

describe "Lesson3" do
  context "Itemをsaveを使って複数生成" do
    let(:item_names) { ["チョコ", "ポテチ", "ガム"] }

    it do
      category = Category.create(name: "お菓子")

      item_names.each do |item_name|
        item = category.items.new(name: item_name)
      end

      category.save
    end
  end
end
