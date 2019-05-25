def coreclan(name)
    puts "Write your tribe's name"
    tribe = gets
    puts "We Noted it, your member of #{tribe}"
    puts "Setting Up your Clan, wait a moment ....."
    sleep(2)
    system("clear")
    puts"Input Number of Clan: "

    num_clan = gets
    clan = []
    mode = true
    while mode != false
        if num_clan.to_i < 3
            puts "Minimum Tribe is 3"
            num_clan = gets
        end
        if num_clan.to_i > 10
            puts "cannot more than 10 clan"
            num_clan = gets
        else
            i = 0
            while i<num_clan.to_i do
                puts "\ninput name, number of player of clan #{i+1} (separated by space) :"
                puts "e.g : clans 3"
                data = gets.chomp.split(' ').map(&:to_s)
                if data[1].to_i < 3
                    puts "Minimul player of clan #{i+1} is 3"
                elsif data[1].to_i > 5
                    puts "Maksimul player of clan #{i+1} is 5"
                else
                    puts "Add data clan #{i+1}"
                    

                    dict = {
                        'id_clan'=>i+1,
                        'name_clan'=>data[0],
                        'number_of_player'=>data[1].to_i
                    }
                    clan[i] = dict
                    i+=1
                end
                
            end
            mode = false
        end
    end
    puts "Your Clan"
    clan.each do | i|
        puts i['name_clan']
    end
    puts"Waiting for warr..."

    sleep(2)
    system("clear")
    5.downto(0) do |i|
        puts "war clasn is under #{i}"
        sleep 1
        system("clear")
    end

    result = ['win','lose'].sample

    puts "Your clan #{result}"
end
