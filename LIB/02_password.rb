def signup 

    puts "Veuillez definir un mot de passe"
    @truepassword = gets.chomp
end

def welcome_screen

    puts " - - - - -  - - - - - - - -  - -
    Bienvenue dans l'espace secret invisible
    - - - - -  - - - - - - - -  - -"
end

def login 

    puts "Veuillez entrer le mot de passe defini"

    tentativepassword = gets.chomp

    if tentativepassword != @truepassword 

        puts "Votre mot de passe est incorrect !"
        login     
    end
        
end



def perform			# Regroupement des méthodes
    signup
    login
    welcome_screen

end


perform