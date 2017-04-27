#!/usr/bin/ruby

class Adherent
  attr_accessor :nom , :prenom , :statut, :emp, :nbLivres, :nbPortables

 def initialize(nom,prenom,statut)
   @statut=statut
   @nom=nom
   @prenom=prenom
   @emp=[]
   @nbLivres = 0
   @nbPortables = 0
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
 
 def emprunter(livre,biblio)
    if(biblio.documents.include?(livre)) then
       if(@nbLivres < 5) then
          @nbLivres += 1
          @emp.push(livre)
	  puts "#{@nom} a emprunté #{livre.titre}"
	  biblio.documents.delete(livre)
       else
          puts "Monsieur #{@nom} vous avez atteint le nombre maximum de livres à emprunter !"
       end
    else
       puts "Monsieur #{@nom} le document #{livre.titre} n'est pas actuellement disponible !"
    end
 end

 def rendre(livre,biblio)
    biblio.addDocument(livre)
    @nbLivres -= 1
    puts "Monsieur #{@nom} a rendu le livre #{livre.titre}"
 end


end

