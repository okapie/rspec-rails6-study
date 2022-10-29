require 'rails_helper'

shared_context 'first item' do
  before do
    described_class.create(name: 'Item1')
  end
end

RSpec.describe Item, type: :model do
  subject { 'Item1' }

  include_context 'first item'

  it('`item`を登録すると、その`name`が取得出来ること') do
    expect(described_class.first.name).to eq('Item1')
  end

  it('`item`の`name`が`Item2`ではないこと') do
    expect(described_class.first.name).not_to eq('Item2')
  end
end
