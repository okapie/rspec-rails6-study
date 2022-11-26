require 'rails_helper'

shared_context 'first user' do
  before do
    User.create(name: 'User1')
  end

  after do
    User.delete_all
  end
end

RSpec.describe UsersController, type: :request do
  include_context 'first user'
  let(:id) { User.first.id }

  describe 'GET /users/{:id}/activate.json' do
    subject { get "/users/#{id}/activate.json" }

    context 'クエリなし' do
      it 'リクエスト成功 (status 200)' do
        expect(subject).to eq 200
      end
    end
  end
end
