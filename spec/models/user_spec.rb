require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'メールアドレスが空では登録できない' do
      user = User.new(email: '', password: '000000', password_confirmation: '000000', name: '太郎', profile:'ベテラン登山家', prefecture: '熊本県',history: '10年')
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
  end
end
