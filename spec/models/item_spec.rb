require 'rails_helper'

RSpec.describe Item, type: :model do
  subject { 'Item1' }

  let!(:item) { Item.create(name: 'Item1') }

  # 遅延初期化が行われるので、NoMethodError になる。
  # let(:created_item) { Item.create(name: 'Item1') }

  it('`item`を登録すると、`item`が取得出来ること') do
    expect(Item.first).to eq item
  end
end
