require 'rails_helper'

RSpec.describe Item, type: :model do
  it('`name`を登録すると、`name`が取得出来ること') do
    item = Item.new(name: 'Item1')

    expect(item.item_name).to eq 'Item1'
    # 次の書き方でも同じ結果が得られる。
    # expect(item.item_name).to eq('Item1')
  end
end
