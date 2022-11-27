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

  describe 'GET /users/{:id}/activate.json?status=activate' do
    describe '誤ったクエリキー' do
      let(:param) { ActionController::Parameters.new({
        id: id,
        format: :json,
        stat: 'activate'
      }) }

      subject { get "/users/#{id}/activate.json", params: params }

      context '誤ったクエリキーが検知されること' do
        it '例外が発生' do
          expect{subject}.to raise_error NameError
        end
      end
    end

    describe '正しいクエリキー' do
      subject { get "/users/#{id}/activate.json?#{params[:status]}" }

      shared_context 'params' do |diff_params = {}|
        let(:params) { { status: 'deactivate' }.merge(diff_params) }
      end

      context '正しいクエリが渡されていること' do
        include_context 'params', { status: 'activate' }

        it 'リクエスト成功 (status 200)' do
          expect(subject).to eq 200
        end
      end
    end
  end
end
