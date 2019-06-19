class User < ApplicationRecord
  validate_presence_of :name
end
