class Key < ApplicationRecord
  has_many :phrases
  belongs_to :table_file
end
