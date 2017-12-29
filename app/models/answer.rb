class Answer < ApplicationRecord
  has_many :answer_items
  accepts_nested_attributes_for :answer_items
end
