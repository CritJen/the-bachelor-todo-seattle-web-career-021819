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
  data.each do |big_hash|
    big_hash.each do |season, deets|
      binding.pry
      season.each do |key, value|
      if season["occupation"] == occupation
        return season["name"]
      end
    end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
