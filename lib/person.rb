# your code goes here
class Person

    attr_reader :name
    attr_reader :hygiene
    attr_reader :happiness
    attr_accessor :bank_account

    def initialize(name, hygiene = 8, happiness = 8)
        @name = name
        @hygiene = hygiene
        @happiness = happiness
        @bank_account = 25
    end

    def happiness=(new_value)
        @happiness = new_value

        if @happiness > 10
            @happiness = 10
        end

        if @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(new_value)
        @hygiene = new_value
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end

    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness +=3
        person.happiness +=3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic_of_converstaion)
        if topic_of_converstaion == "politics"
            self.happiness -=2
            person.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic_of_converstaion == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end


end



