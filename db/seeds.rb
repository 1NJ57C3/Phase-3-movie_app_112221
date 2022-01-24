Movie.create(title:'The Godfather', director:5.00, description:"The Godfather is a 1972 American epic crime film directed by Francis Ford Coppola, who co-wrote the screenplay with Mario Puzo, based on Puzo's best-selling 1969 novel of the same name. ", showing:true )

Movie.create(title:'Seven Samurai', director:5.00, description: 'A 1954 Japanese epic samurai drama film co-written, edited, and directed by Akira Kurosawa.' )
Movie.create(title:'Blade Runner', director:5.00, description:'The film is set in a dystopian future Los Angeles of 2019, in which synthetic humans known as replicants are bio-engineered by the powerful Tyrell Corporation to work on space colonies.',  showing:true )

Ticket.create(name:'rose', price:5.00, movie: Movie.first)
Ticket.create(name:'ix', price:5.00, movie: Movie.first)
Ticket.create(name:'Roy', price:5.00, movie: Movie.third)
Ticket.create(name:'Rick', price:5.00, movie: Movie.third)
Ticket.create(name:'Mike', price:5.00, movie: Movie.first)
Ticket.create(name:'Vito', price:5.00, movie: Movie.first)
Ticket.create(name:'Kambei', price:5.00, movie: Movie.second)
Ticket.create(name:'Shichirōji', price:5.00, movie: Movie.second)


r1 = Receipt.create(name:'Shichirōji')
r2 = Receipt.create(name:'Roy')
r3 = Receipt.create(name:'rose')
r4 = Receipt.create(name:'Vito')

Food.create(name:"popcorn", price:10.00)
Food.create(name:"jr.mints", price:5.00)
Food.create(name:"fountain drink", price:3.00)

ReceiptLineItem.create(receipt:Receipt.first, food:Food.first)
ReceiptLineItem.create(receipt:Receipt.first, food:Food.second)
ReceiptLineItem.create(receipt:Receipt.second, food:Food.first)
ReceiptLineItem.create(receipt:Receipt.second, food:Food.third)
ReceiptLineItem.create(receipt:Receipt.third, food:Food.second)
ReceiptLineItem.create(receipt:Receipt.third, food:Food.third)

#This method updates the receipt total to the price sum of every related food item.
r1.calculate_total
r2.calculate_total
r3.calculate_total
r4.calculate_total






