def coretribe(name)
    puts "Setting Up your Tribe, wait a moment ....."
    sleep(2)
    system("clear")
    puts"Input Number of Tribe: "

    num_tribe = gets
    tribes = []
    stat = true
    while stat != false
        if num_tribe.to_i == 0
            puts "Minimum Tribe is 1"
            num_tribe = gets
        end
        if num_tribe.to_i > 8
            puts "cannot more than 8 tribes"
            num_tribe = gets
        else
            i = 0
            while i<num_tribe.to_i do
                puts "\ninput id ,name, number of player of tribe #{i+1} (separated by space) :"
                puts "e.g : 1 COC 3"
                datas = gets.chomp.split(' ').map(&:to_s)
                if datas[2].to_i < 4
                    puts "Minimul player for tribe #{i+1} is 4"
                elsif datas[2].to_i > 10
                    puts "Maksimul player for tribe #{i+1} is 10"
                else
                    puts "Add data Tribe #{i+1}"
                    

                    dict = {
                        'id_tribe'=>datas[0].to_i,
                        'name_tribe'=>datas[1],
                        'number_of_player'=>datas[2].to_i
                    }
                    tribes[i] = dict
                    i+=1
                end
                
            end
            stat = false
        end
    end

    puts "Your Tribes"
    
    tribes.each do | i|
        puts i['name_tribe']
    end
    puts"Waiting for warr..."

    sleep(2)
    system("clear")
    5.downto(0) do |i|
        puts "war is under #{i}"
        sleep 1
        system("clear")
    end

    dat = tribes.sample
    
    if dat['id_tribe'] == (2|4|8)
        puts "#{dat['name_tribe']} in power"
    else
        puts "there are no tribes in power"
    end
end