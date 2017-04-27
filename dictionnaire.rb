#!/usr/bin/ruby

require_relative "volume"

class Dictionnaire < Volume
  attr_accessor :theme

  def initialize(theme,auteur,titre)
   super(titre,auteur)
   @theme=theme
  end

end
class BandeDessine < Volume

   attr_accessor :dessinateur

   def initialize(dessinateur,auteur,titre)
     super(titre,auteur)
     @dessinateur=dessinateur

   end

end
