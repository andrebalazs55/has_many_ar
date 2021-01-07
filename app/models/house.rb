class House < ApplicationRecord
  has_many :windows do
  end
  has_many :broken_windows, class_name: 'Window'
end
