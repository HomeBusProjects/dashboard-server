class Sample < ApplicationRecord
  connects_to database: { reading: :recorder }
end
