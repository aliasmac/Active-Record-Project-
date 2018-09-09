class UserBooks < ActiveRecord::Base
  belongs_to :book
  belongs_to :author

  # after_initialize :set_defaults, unless: :persisted?

  # def set_defaults
  #   self.returned? = 'false'
  #   self.bool_field = false if self.bool_field.nil?
  # end


end
