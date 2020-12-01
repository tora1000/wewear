require 'rails_helper'

RSpec.describe User, type: :model do
  describe '新規登録機能' do
    before do
      @user = FactoryBot.build(:user)
    end

    it "nickname、email、password、password_confirmation、sexが存在すれば登録できること" do
      expect(@user).to be_valid
    end
    
    it "nicknameが空では登録出来ないこと" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it "emailが空では登録出来ないこと" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "重複したemailが存在する場合登録出来ないこと" do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end

    it "passwordが空では登録出来ないこと" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "passwordが存在してもpassword_confirmationが空では登録出来ないこと" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "sexが空では登録出来ないこと" do
      @user.sex_id = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Sex can't be blank")
    end
  end
end
