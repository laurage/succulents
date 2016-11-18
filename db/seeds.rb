User.destroy_all
Plant.destroy_all
Ownership.destroy_all

g1 = User.create(first_name: "Isabelle", last_name: "Barfa", email:"vic@email.com", password:"12345658")
g2 = User.create(first_name: "Elodie", last_name: "Durand", email:"vic@email.com", password:"12345658")
g3 = User.create(first_name: "Mic", last_name: "Fallow", email:"vic@email.com", password:"12345658")



p1 = Plant.create(name: "Petite plantule")
p2 = Plant.create(name: "Marc the plant")
p3 = Plant.create(name: "Stracrix")

o4 = Ownership.create(user: g1, plant: p3, created_at: DateTime.now.days_ago(-10))
o1 = Ownership.create(user: g1, plant: p1)
o2 = Ownership.create(user: g2, plant: p2)
o3 = Ownership.create(user: g2, plant: p3)


