class Party < ApplicationRecord
  TYPES = ['Party', 'Birthday', 'Hen/Stag do', 'Leaving do', 'House Warming', 'Wedding']
  belongs_to :user
  belongs_to :bartender
  validates :theme, inclusion: { in: TYPES }
end
