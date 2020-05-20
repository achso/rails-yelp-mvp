class Restaurant < ApplicationRecord
  def self.categories_array
    %w[chinese italian japanese french belgian]
  end

  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: categories_array }
end
