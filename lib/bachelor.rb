require 'pry'


def get_first_name_of_season_winner(data, season)
  winner_first = ""
  data[season].each do |person_hash|
   #binding.pry
  	if person_hash["status"] == "Winner"
  		winner_first = person_hash["name"].split(" ").first
  	   end
  	end
   winner_first
end

def get_contestant_name(data, occupation)
   contestant_name = ""
   data.each do |season, season_array|
      season_array.each do |person_hash|
      if person_hash["occupation"] == occupation
         contestant_name = person_hash["name"]
         end
      end
   end
   contestant_name
end

def count_contestants_by_hometown(data, hometown)
   counter = 0
   data.each do |season, season_array|
      season_array.each do |person_hash|
         if person_hash["hometown"] == hometown
            counter += 1
         end
      end
   end
   counter
end

def get_occupation(data, hometown)
   occupations = []
   first_occupation = ""
   data.each do |season, season_array|
      season_array.each do |person_hash|
         if person_hash["hometown"] == hometown
            occupations << person_hash["occupation"]
         end
      end
   end
occupations.shift
end

def get_average_age_for_season(data, season)
   age_array = []
   average_age = 0
   data[season].each do |person_hash|
      age_array << person_hash["age"]
      end
   age_array_num = []
   age_array.each do |value|
      age_array_num << value.to_f
      end
   total = 0
   age_array_num.each do |value|
      total += value
      end
   average_age = total/age_array_num.size
   average_age.round
end
