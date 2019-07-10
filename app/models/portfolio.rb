class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400.png/09f/fff"
    self.thumb_image ||= "https://via.placeholder.com/350x200.png/09f/fff"
  end

end
