#!/usr/bin/ruby

require_relative "bibliotheque"
require_relative "materiel"
require_relative "empruntable"


class OrdinateurPortable < Materiel
  include Empruntable

  attr_accessor :marque,:os

  def initialize(marque,os)
    super()
    @marque=marque
    @os=os
  end

 
end
