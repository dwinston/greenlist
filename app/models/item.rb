class Item < ActiveRecord::Base
  def self.RED; 0; end
  def self.YELLOW; 1; end
  def self.GREEN; 2; end

  attr_accessible :name, :status
  scope :red, where(status: Item.RED)
  scope :yellow, where(status: Item.YELLOW)
  scope :green, where(status: Item.GREEN)

  before_create :set_initial_status 

  def update_status!
    self.status = (status - 1) % 3
    save!
  end

  def set_initial_status
    self.status = Item.RED
  end
end
