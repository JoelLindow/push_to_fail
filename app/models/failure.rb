class Failure < ApplicationRecord
  belongs_to :user
  belongs_to :kind
end
