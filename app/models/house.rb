class House < ApplicationRecord
  has_many :windows
  has_many :broken_windows, class_name: 'Window' do
  end
end
