require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  context 'POST リクエスト' do
    it '`name` に `nil` を設定した POST リクエストは、例外が発生する' do
      expect{Item.create!(name: nil)}.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
