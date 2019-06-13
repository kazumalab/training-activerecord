require "spec_helper"

describe "Lesson1" do
  it "アイテムを生成" do
    only_sql do
      ActiveRecord::Base.transaction do
        Item.create(name: "hoge")
      end
    end

    expect(Item.count).to eq 1
  end

  it "アイテムを生成するが失敗" do
    expect(Item.count).to eq 0
  end
end
