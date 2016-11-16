class Ownership < ApplicationRecord
  belongs_to :gardener
  belongs_to :plant
end
