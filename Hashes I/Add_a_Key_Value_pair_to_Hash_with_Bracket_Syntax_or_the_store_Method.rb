menu = { burguer: 3.99, taco: 5.96, chips: 0.50 }

p menu[:sandwich] = 8.99
p menu

menu[:taco] = 2.99
p menu

menu.store(:sushi, 24.99)
p menu

p menu[:sushi]
