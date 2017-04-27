#!/usr/bin/ruby

require_relative "adherent"
require_relative "bd"
require_relative "dictionnaire"
require_relative "document"
require_relative "empruntable"
require_relative "livre"
require_relative "materiel"
require_relative "ordinateur"
require_relative "revue"
require_relative "volume"


class Bibliotheque
   attr_reader :documents,:adherents,:materiels

   def initialize
     @documents=[]
     @adherents=[]
     @materiels=[]
   end

   def addAdherent(adherent)
     @adherents.push(adherent)
   end
   def addDocument(document)
     @documents.push(document)
   end
   def addMateriel(materiel)
     @materiels.push(materiel)
   end


end
