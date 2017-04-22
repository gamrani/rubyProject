class Adherent
  attr_accessor :nom , :prenom , :statut

 def initialize(nom,prenom,statut)
   @statut=statut
   @nom=nom
   @prenom=prenom
 end

 def emprunter(document,biblio)
    if (biblio.documents.include?(document)) then
      puts "#{@nom} a emprunté #{document.titre}"
      biblio.documents.delete(document)

    else
      puts "#{@nom} peut pas emprunté #{document.titre} car il n'exste pas "
    end
 end

 def rendre(document,biblio)
  biblio.addDocument(document)
  puts "#{@nom} a rendu #{document.titre}"

 end

end
