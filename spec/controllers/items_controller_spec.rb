require 'rails_helper'

shared_context 'first item' do
  before do
    Item.create(name: 'Item1')
  end

  after do
    Item.delete_all
  end
end

RSpec.describe ItemsController, type: :controller do
  context '登録済み`item`の参照' do
    subject { 'Item1' }
    include_context 'first item'

    it('`item`を登録すると、その`name`が取得出来ること') do
      expect(Item.first.name).to eq('Item1')
    end
  
    it('`item`の`name`が`Item2`ではないこと') do
      expect(Item.first.name).not_to eq('Item2')
    end
  end

  context 'POST リクエスト' do
    it '`name` に `nil` を設定した POST リクエストは、例外が発生する' do
      expect{Item.create!(name: nil)}.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
