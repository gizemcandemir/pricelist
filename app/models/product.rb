# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  collection :string
#  title      :string
#  model      :string
#  designer   :string
#  year       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
  validates :collection, presence: true
  validates :title, presence: true
  validates :model, presence: true
  validates :designer, presence: true
  validates :year, presence: true
end
