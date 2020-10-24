# figure out the total age of just the male members of the family.

def total_age(hash)
  total_age = 0
  hash.each do |member|
    if member[1]["gender"] == "male"
      total_age += member[1]["age"]
    end
  end 
  total_age
end


def alt_total_age(hash)
  total_age = 0
  hash.each_value do |details|
    total_age += details["age"] if details["gender"] == "male"
  end 
  total_age
end 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


p total_age(munsters)

p alt_total_age(munsters)


