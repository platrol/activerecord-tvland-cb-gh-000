class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters



    def build_network(data = {})
      network = Network.find_or_create_by(data)
      network.shows << self
    end
end
