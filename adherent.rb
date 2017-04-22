class Adherent
  attr_accessor :nom , :prenom , :statut,:emp

 def initialize(nom,prenom,statut)
   @statut=statut
   @nom=nom
   @prenom=prenom
   @emp=[]
 end

 def emprunter(document,biblio)
    if (biblio.documents.include?(document)) then
      @emp.push(document)
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

 def afficherEmprunts

    puts "#{@nom} a emprunté :"
    @emp.each{
      |item|

      puts item.titre
    }

 end

end
