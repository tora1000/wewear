require 'rails_helper'

RSpec.describe Coordination, type: :model do
  describe '新規投稿機能' do
    before do
      @coordination = FactoryBot.build(:coordination)
    end

    it 'title、description、recommended_point、favorite_item、useが存在すれば投稿できること' do
      expect(@coordination).to be_valid
    end

    it 'imageが空では投稿できない' do
      @coordination.image = nil
      @coordination.valid?
      expect(@coordination.errors.full_messages).to include("Image can't be blank")
    end

    it 'titleが空では投稿出来ないこと' do
      @coordination.title = ''
      @coordination.valid?
      expect(@coordination.errors.full_messages).to include("Title can't be blank")
    end

    it 'descriptionが空では投稿出来ないこと' do
      @coordination.description = ''
      @coordination.valid?
      expect(@coordination.errors.full_messages).to include("Description can't be blank")
    end

    it 'recommended_pointが空でも投稿出来る' do
      @coordination.recommended_point = ''
      expect(@coordination).to be_valid
    end

    it 'favorite_itemが空では投稿出来ないこと' do
      @coordination.favorite_item = ''
      @coordination.valid?
      expect(@coordination.errors.full_messages).to include("Favorite item can't be blank")
    end

    it 'useが空では投稿出来ないこと' do
      @coordination.use = ''
      @coordination.valid?
      expect(@coordination.errors.full_messages).to include("Use can't be blank")
    end
  end
end
