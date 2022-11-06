require 'rails_helper'

RSpec.describe Item, type: :model do
  fixtures :items

  context '有効な値' do
    it '`name` に文字列を設定した場合、有効と判定される' do
      @item = items(:item_success_post);
      expect(@item).to be_valid
    end

    it '`name` に空文字を設定した場合、無効と判定される' do
      @item = items(:item_failed_post);
      expect(@item).to be_invalid
    end
  end
end
