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
    contestant_hash.each do |deets|
    if deets["occupation"] == occupation
      return deets["name"]
    end
  end
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
  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_hash|
    contestant_hash.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = []
  data[season].each do |deets|
    age << deets["age"]
  end
  binding.pry
  return age.sum / age.size
end
