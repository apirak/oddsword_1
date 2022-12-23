class Phrase < ApplicationRecord
  belongs_to :language
  belongs_to :key
end
