class Like < ActiveRecord::Base
  include PublicActivity::Model
  tracked owner: :user

  belongs_to :likeable, polymorphic: true, counter_cache: true
  belongs_to :user
end
