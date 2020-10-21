# remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject! { |key, value| value > 100 } # the opposite is keep_if

p ages

