class Animal < ActiveRecord::Base
  belongs_to :tribe

  self.inheritance_column = :race

  scope :lions, ->{where race: "Animal::Lion"}
  scope :meerkats, ->{where race: "Animal::Meerkat"}
  scope :wild_boars, ->{where race: "Animal::WildBoar"}

  def talk
    logger = Logger.new(STDOUT)
    logger.level = Logger::DEBUG
    logger.info "Zoo animals welcome you"
  end

  class << self
    def races
      %w(Lion WildBoar Meerkat)
    end
  end
end
