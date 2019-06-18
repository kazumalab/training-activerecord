require "spec_helper"

describe "Lesson1" do
  it "リレーション先からデータを取得" do
    # チョコレートカテゴリ
    category_choco = Category.create(name: "チョコレート")
    ["チロルチョコ", "キットカット", "アルフォート"].each do |item_name|
      category_choco.items.create(name: item_name)
    end

    # スナック菓子
    category_snack = Category.create(name: "スナック菓子")
    ["ポテトチップス", "チップスター", "ベビースター"].each do |item_name|
      category_snack.items.create(name: item_name)
    end

    items = Item.all
    items.each do |item|
      category = item.category
      puts category.name
    end

    items = Item.includes(:category).all
    items.each do |item|
      category = item.category
      puts category.name
    end
  end
end
