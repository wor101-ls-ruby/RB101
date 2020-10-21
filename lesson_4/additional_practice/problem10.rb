# Modify the hash such that each member of the Munster family has an additional "age_group" key that has 
# one of three values describing the age group the family member is in (kid, adult, or senior). 
# Your solution should produce the hash below

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

kid = 17
adult = 64
senior = 65

munsters.each_pair do |name, hash|
  case 
  when hash['age'] <= kid then hash['age_group'] = 'kid'
  when hash['age'] > kid && hash['age'] < senior then hash['age_group'] = 'adult'
  else hash['age_group'] = 'senior'
  end
end


p munsters


# munsters.each do |name, details|
#   case details["age"]
#   when 0...18
#     details["age_group"] = "kid"
#   when 18...65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end
# Munsters is a hash with the key as a name and the value as a hash 
# we want to modify each value by adding a new key-value pair

# Create kid, adult, and senior variables that are arrays 