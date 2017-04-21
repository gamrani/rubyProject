class Adherent
  attr_accessor :nom , :prenom , :statut

  include Enum

 def initialize(nom,prenom,statut)
   @statut=statut
   @nom=nom
   @prenom=prenom

   puts "#{@nom} #{@prenom} #{@statut}"
 end


end
