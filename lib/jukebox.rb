require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, index|
    song_num = index + 1 
    puts "#{song_num}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  valid = false
  songs.each_with_index do |song, index|
    if (choice.to_i - 1 == index)
      puts "Playing #{songs[index]}"
      valid = true
    elsif (choice == song)
      puts "Playing #{choice}"
      valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  while true
    puts "Please enter a command:"
    input = gets.strip
    case input
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
      break
      else
        help
     end
  end
end

