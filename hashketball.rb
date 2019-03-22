require 'pry'

def game_hash
  game = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {          
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
         },
         "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
         },
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(name)
  target_data = 0
  game_hash.each do |loc, team_data|
    team_data.each do |attribute, data|
    if attribute == :players
      data.each do |player_name, player_data|
        if player_name == name
        player_data.each do |a, b|
          if a == :points
            target_data = b
          end
        end
      end
      end
    end
    end
  end
  return target_data
end

def shoe_size(name)
    game_hash.each do |loc, team_data|
    team_data.each do |attribute, data|
    if attribute == :players
      data.each do |player_name, player_data|
        if player_name == name
        player_data.each do |a, b|
          if a == :shoe
            return b
          end
        end
      end
      end
    end
    end
  end
end

def team_colors(name)
  if name == "Charlotte Hornets"
    game_hash[:away][:colors]
  elsif name == "Brooklyn Nets"
    game_hash[:home][:colors]
  end
end

def team_names
  target_data = []
  game_hash.each do |loc, team_data|
    target_data << team_data.fetch(:team_name)
  end
  target_data
end

def player_numbers(name)
  target_data = []
  if name == "Charlotte Hornets"
    game_hash[:away][:players].each do |player_name, player_data|
      target_data << player_data.fetch(:number)
    end
  elsif name == "Brooklyn Nets"
   game_hash[:home][:players].each do |player_name, player_data|
      target_data << player_data.fetch(:number)
   end
  end
  target_data
end

def player_stats(name)
  game_hash.each do |loc, team_data|
   team_data.each do |attribute, data|
    if attribute == :players
      data.each do |player_name, player_data|
        if player_name == name
          return player_data
        end
      end
    end
  end
end
end

def big_shoe_rebounds
 players_array = []
 game_hash.values_at(:players)
 # game_hash.each do |loc, team_data|
  #  team_data.each do |attribute, data|
   # if attribute == :players
    #  players_array << attribute.values
    #end
    #end
#  end
  binding.pry
  
end