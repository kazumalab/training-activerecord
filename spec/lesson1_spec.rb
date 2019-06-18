require "spec_helper"

describe "Lesson1" do
  it do
    category_choco = Category.create(name: "チョコレート")
    begin
      ActiveRecord::Base.transaction do
        ["チロルチョコ", "キットカット", "アルフォート", nil].each do |item_name|
          category_choco.items.create!(name: item_name)
        end
      end
    rescue
      expect(Item.count).to eq 0
    end
  end

  it do
    category_choco = Category.create(name: "チョコレート")
    ["チロルチョコ", "キットカット", "アルフォート", nil].each do |item_name|
      category_choco.items.create(name: item_name)
    end

    expect(Item.count).to eq 3
  end

  it do
    category_choco = Category.create(name: "チョコレート")
    ["チロルチョコ", "キットカット", "アルフォート", nil].each do |item_name|
      category_choco.items.new(name: item_name)
    end
    category_choco.save

    expect(Item.count).to eq 0
  end

  it "リレーションが貼られている場合は全てrollbackされる" do
    category_choco = Category.create(name: "チョコレート")
    ["チロルチョコ", "キットカット", "アルフォート", nil].each do |item_name|
      category_choco.items.new(name: item_name)
    end

    category_choco.save

    expect(Item.count).to eq 0
  end

  it "リレーションが貼られている場合でもcreateを使う場合は対象のものだけRollbackされる" do
    category_choco = Category.create(name: "チョコレート")
    ["チロルチョコ", "キットカット", "アルフォート", nil].each do |item_name|
      category_choco.items.create(name: item_name)
    end

    expect(Item.count).to eq 3
  end

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
    end

    items = Item.includes(:category).all
    items.each do |item|
      category = item.category
    end
  end
end
