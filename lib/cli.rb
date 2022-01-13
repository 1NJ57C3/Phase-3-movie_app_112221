def initialize_app 
    seed
    menu
end 

def menu
    puts "Welcome to Flatiron Movies"
    puts "Please choose an option:"
    puts "1. List all Movies"
    puts "2. List Ticket holder names"
    puts "3. Add ticket"
    puts "4. Find ticket"
    puts "0. to exit"
    
    user_input = gets.strip

    case user_input
    when "1"
        movies = ['2001: A Space Odyssey', 'The Godfather', 'Citizen Kane', 'Raiders of the Lost Ark', 'In the mood for love', 'Seven Samurai']
        movies.each {|movie| puts movie }
    when "2"
       puts Ticket.all.map {|ticket| ticket.name }
    when "3"
        puts create_ticket
    when "4"
        puts find_tickets
    else 
        puts "goodbye"
    end 

end 

def create_ticket
    puts 'name'
    name = gets.strip
    puts "Title"
    title = gets.strip
    Ticket.new(name, title)
    menu
end 

def seed
    tickets = [
        # {name:"defne", title:"The Godfather"},
        # {name:"nicholas", title:"Seven Samurai"},
        # {name:"tyler", title:"Citizen Kane"}
        Ticket.new("defne", title:"The Godfather"),
        Ticket.new("nicholas", title:"Seven Samurai"),
        Ticket.new("tyler", title:"Citizen Kane")
    ]
end

def find_tickets
    puts 'movie'
    movie = gets.strip
    Ticket.find_tickets movie
    menu
end