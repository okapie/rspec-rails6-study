require 'rails_helper'

RSpec.describe Item, type: :model do
  fixtures :items

  shared_examples 'validation' do
    it '必須項目の検証' do
      expect(item).to be_valid
    end
  end

  context '有効な値' do
    # let は、example group (describe または context) に置く必要がある。
    let(:item) { items(:item_success_post) }
    # it_behaves_like は、example group (describe または context) に置く必要がある。
    it_behaves_like 'validation'
  end

  context '無効な値' do
    it '`name` に空文字を設定した場合、無効と判定される' do
      @item = items(:item_failed_post);
      expect(@item).to be_invalid
    end
  end
end
