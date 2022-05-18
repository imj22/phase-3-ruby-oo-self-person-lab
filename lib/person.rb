require "pry"

# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_accessor :happiness, :hygiene

    def initialize (name)
        # binding.pry
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(value)
        @hygiene = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end
    end

    def happiness=(value)
        @happiness = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end
        # (happiness > 10 ? happiness = 10 : happiness && happiness < 0 ? happiness = 0 : happiness)
    end

    def clean? 
        self.hygiene > 7 ? true : false
        
    end

    def happy? 
        self.happiness > 7 ? true : false
    end

    def get_paid amount
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness += 3 
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        # binding.pry
        if topic == "politics" 
            friend.happiness -= 2
            self.happiness -= 2
            # binding.pry
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1 
            self.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
        # binding.pry
    end

end

stella = Person.new("Stella")
stella.name

annika = Person.new("Annika")
annika.name

# binding.pry