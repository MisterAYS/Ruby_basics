

def say_hello (name) #definition de fonction 
    
    puts "Bonjour " "#{name}" 

end

def ask_first_name #definition de fonction 

    puts "Quel est votre nom ?"
    return   gets.chomp

end

quisuisje = ask_first_name #attribution du resultat de la fonction askfirstname a la variable qui suis-je

say_hello(quisuisje) #declenchement de la fonction
