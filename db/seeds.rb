Gardener.destroy_all
Plant.destroy_all
Ownership.destroy_all

g1 = Gardener.create(first_name: "Isabelle", last_name: "Barfa")
g2 = Gardener.create(first_name: "Elodie", last_name: "Durand")
g3 = Gardener.create(first_name: "Mic", last_name: "Fallow")

p1 = Plant.create(name: "Petite plantule")
p2 = Plant.create(name: "Marc the plant")
p3 = Plant.create(name: "Stracrix")

o1 = Ownership.create(gardener: g1, plant: p1)
o2 = Ownership.create(gardener: g2, plant: p2)
o3 = Ownership.create(gardener: g2, plant: p3)
o4 = Ownership.create(gardener: g2, plant: p3, created_at: DateTime.now.days_ago(-10))
