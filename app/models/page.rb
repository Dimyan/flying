class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :slug, :content
  validates_uniqueness_of :slug

  #TODO: Добавить поля для задания категории страниц и таблицу с этими категориями
end
