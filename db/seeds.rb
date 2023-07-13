status=["todo","doing","done"]
def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end
50.times do |n|
  Task.create!(title:"Titre#{n+1}",description:"contenu#{n+1}",status:status.sample,deadline:time_rand(Time.local(2010, 1, 1)))
end
