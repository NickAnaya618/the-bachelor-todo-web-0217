require "pry"
require "pry-nav"
def get_first_name_of_season_winner(data, season)
  data.each do |show_season, array|
    if show_season == season
      array.each do |value_hash|
        value_hash.each do |key, value|
          if value_hash["status"] = "Winner"
            return value_hash["name"].split.first
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |show_season, array|
    array.each do |value_hash|
      value_hash.each do |key, value|
        if value_hash["occupation"] == occupation
          return value_hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = []
  data.each do |show_season, array|
    array.each do |value_hash|
      if value_hash["hometown"] == hometown
          hometown_count << value_hash["name"]
      end
    end
  end
  hometown_count.length
end

def get_occupation(data, hometown)
  data.each do |show_season, array|
    array.find do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  contestant_count = 0
  data[season].each do |hash|
    total += (hash["age"].to_i)
    contestant_count += 1
  end
  (total / contestant_count.to_f).round(0)
end
