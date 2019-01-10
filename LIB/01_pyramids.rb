#titre phrase du début
def half_pyramid

	puts "Salut, bienvenue dans ma super pyramide ! 
	Combien d'étages veux-tu ? (entre 1 et 25)"
	number = gets.chomp.to_i #demande un nombre entier a l'utilisateur
	puts " Voici la pyramide : " #print something on screen
	n = number 
	1.upto(n).each{|n|puts ("#" * n).rjust(number)} #
end



def full_pyramid 
    
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	num = gets.to_i
	if num <= 25 || num >= 0
	  num.times {|n|
	    print ' ' * (num - n)
	    puts '#' * (2 * n + 1)
	  }
	end

end



def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? PS : Pas plus de 25"
	number = gets.to_i
	if !number.even?&&number < 26&&number > 0
		puts "Voici ma pyramide :"
		number = (number + 1)/2
		number.times do |i|
			i += 1
			puts " " * (number-i) + "#" * (2*i-1)
		end
		number -= 1
		number.times do |i|
			puts " " * (1+i) + "#" * (2*number-2*i-1)
		end
	else
		puts "va bouler le chiffre n'est pas impair merci"
		wtf_pyramid
	end
end


half_pyramid

full_pyramid

wtf_pyramid

