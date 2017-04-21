require_relative "empruntable"
require_relative "volume"

class Livre < Volume
  include Empruntable

  def initialize(titre,auteur)
    super(titre,auteur)
  end

  

end
