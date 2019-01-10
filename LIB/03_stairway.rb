def lancerdes # lancage de des

     puts "lancez les dés."
    @des = rand(1..6)
    puts "Lancé de dés: #{@des}"
end


def success_marche10 #affiche un message de succes

    puts " - - - - -  - - - - - - - -  - -
     Bienvenue sur la marche n°10 !!!
     - - - - -  - - - - - - - -  - -"
end



def avancement #fait avancer reculer ou stager le joueur qui lance les des

    @nombredetours = 1 #initialisation et la loop compte le nombre de lancage de des

    loop do 

        case @des

            when  5
                @marche = @marche + 1
                 puts "Vous avancez sur la marche n° #{@marche}"

            when  6
                @marche = @marche + 1
                puts "Vous avancez sur la marche n° #{@marche}"

            when  1
                @marche = @marche - 1
                 puts "Vous reculez sur la marche n° #{@marche}"
                
            else
                 puts "Vous restez sur la marche n° #{@marche}"
        
        end

    break if @marche == 10 #permet de relancer tant que l'on est pas sur la dixieme marche

        lancerdes
        @nombredetours = @nombredetours + 1 #permet d'afficher le nombre de lancé dans le compteur
        
    end

    
end 



def partiededes			# Regroupement des méthodes
    @marche = 1
    lancerdes
    avancement
    success_marche10
     puts "Vous avez lancé #{@nombredetours} fois les dés pour arriver à la 10e marche."
end


def average_finish_time #lance 100 parties, et compte le nombre de lancage
    a = []
    for i in (1..100) do 
        partiededes
        a << @nombredetours
    end 
    result = a.inject(0.0) { |sum, el| sum + el}.to_f / a.size #calcul la moyenne des valeurs presentes dans le tableau
    puts "En moyenne sur les 100 parties, vous avez lancé #{result.floor} fois les dés pour atteindre la dixième marche."
end




average_finish_time



