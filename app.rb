require_relative "coreindividual.rb"
require_relative "coretribe.rb"
require_relative "coreclan.rb"

def playagain(name)
    puts"Wanna play again?"
    puts"Y/N"
    again = gets.chomp
    case again.downcase
    when 'y'
        system("clear")
        mainapp
    when 'n'
        puts"thank you #{name}"
        exit
    else
        puts"Incorrect input"
    end
end

def mainapp
    puts "##################################"
    puts "#     Welcome to Comodo Game     #"
    puts "##################################"
    puts "\nSelect Your Mode:"
    puts "1. Individual\n2. Tribe\n3. Clan\nEnter number..."

    x = gets
    case x.to_i
    when 1
        system("clear")
        puts "You choise Individual Mode"
        puts "Enter Your Name"
        name = gets
        puts "Hi #{name} are you ready to fighting with the enemy?"
        puts "Y/N"
        yes = gets.chomp
        case yes.downcase
        when 'y'
            coreindividual name
        when 'n'
            puts "See you later"
        else
            puts "Incorrect input"
        end
        
    when 2
        system("clear")
        puts "You choise Tribe Mode"
        puts "Enter Your Name"
        name = gets
        puts "Hi #{name}"
        coretribe(name)
        playagain(name)
    when 3
        system("clear")
        puts "You choise Clan Mode"
        puts "Enter Your Name"
        name = gets
        puts "Hi #{name}"
        coreclan(name)
        playagain(name)
    else
        puts "Game not recognize #{x}as correct input"
    end
end

mainapp
