class Adherent
  attr_accessor :nom , :prenom , :statut

 def initialize(nom,prenom,statut)
   @statut=statut
   @nom=nom
   @prenom=prenom
 end

 def emprunter?(document,biblio)

    if (biblio.documents.include?(document)) then
      puts "succe"
      biblio.documents.delete(document)
      return true

    else
      puts "echec ce livre n'exite pas "
      return false
    end

 end


end
