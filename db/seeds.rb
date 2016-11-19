User.destroy_all
Plant.destroy_all
Ownership.destroy_all

g1 = User.create(first_name: "Lambda", last_name: "Barfa", email:"vic@email.com", password:"test")
g2 = User.create(first_name: "Elodie", last_name: "Durand", email:"vic@email.com", password:"12345658")
g3 = User.create(first_name: "Mic", last_name: "Fallow", email:"vic@email.com", password:"12345658")
g4 = User.create(first_name: "Laura", last_name: "Pedroni", email:"laurage_@hotmail.com", password:"testPass")



p1 = Plant.create(name: "Petite plantule")
p2 = Plant.create(name: "Marc the plant")
p3 = Plant.create(name: "Stracrix")

o4 = Ownership.create(user: g1, plant: p3, created_at: DateTime.now.days_ago(-10), current_owner: false)
o1 = Ownership.create(user: g1, plant: p1, current_owner: true)
o2 = Ownership.create(user: g2, plant: p2, current_owner: true)
o3 = Ownership.create(user: g2, plant: p3, current_owner: true)


