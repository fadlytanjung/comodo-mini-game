def coreindividual(name)
    enemy = rand(5..15)
    live = 3
    score = 0
    saygood = ['excellent','good','amazing']
    system("clear")
    5.downto(0) do |i|
        puts "Lets fighting"
        puts "Your enemies are #{enemy} people and your live is #{live}"
        puts "game start in #{'%02d' % i} s"
        sleep 1
        system("clear")
    end

    (1..enemy).each do |i|
        while live !=0
            a = rand(5..10)
            b = rand(5)
            operation = ['+','-','*','/']
            operan = operation.sample
            
            if operan == '+'
                res = a+b
            elsif operan == '-'
                res = a-b
            elsif operan =='*'
                res = a*b
            elsif operan =='/'
                res = a/b
            else
                res = 0
            end
            
            puts "Answer the enemy #{i} attack with question #{a} #{operan} #{b} : "
            puts "Your answer is : "
            answer = gets
            if answer.to_i == res
                score+=100
                system("clear")
                say = saygood.sample
                if i == enemy
                    puts"You win, congratulation"
                    puts"Your score is #{score}"
                    playagain(name)
                    break
                end
                4.downto(0) do |i|
                    puts "#{say}, defeat next enemy"
                    puts "your score is #{score}"
                    puts "please wait #{'%2d' % i}"
                    sleep 1
                    system("clear")
                end
            
                break
            else
                live -=1
                
                if live == 0
                    puts "answer incorrect, live #{live}"
                    puts "Game Over"
                    playagain(name)
                else
                    puts "answer incorrect, live #{live}"
                end                
            end
        end
    end
end
