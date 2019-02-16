require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |section|
    section.each do |key, value|
      if section["status"] == "Winner"
      return section["name"].to_s.split.first
    end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_hash|
    if contestant_hash["occupation"] == occupation 
      return contestant_hash["name"]
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_hash|
    contestant_hash.each do |info|
      if info["hometown"] == hometown
        count += 1
      end
    end
  end
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
