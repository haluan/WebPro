class Ekskul < ActiveRecord::Base
  has_many :berekskul
  belongs_to :guru
end
