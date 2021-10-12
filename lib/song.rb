# require_relative "./concerns/memorable"

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :artist
  
end
