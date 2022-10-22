require 'rails_helper'

RSpec.describe Item, type: :model do
  subject { 'Item1' }

  it('`name`を登録すると、`name`が取得出来ること') do
    item = Item.new('Item1')

    expect(item.name).to eq 'Item1'
    # 次の書き方でも同じ結果が得られる。
    # expect(item.name).to eq('Item1')
  end
end
