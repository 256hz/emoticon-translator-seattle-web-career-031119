require "yaml"
require "pry"

path = "emoticons.yml"

def load_library(path)
  lib = {"get_meaning" => {}, "get_emoticon" => {}}
  emo = YAML.load_file(path)
  emo.each.keys do |entry|
    puts entry
    word = entry.keys[0]
    emoE = emo[word][0]
    emoJ = emo[word][1]
    puts "#{word}, #{emoE}, #{emoJ}"
    lib[get_meaning][emoJ] = word
    lib[get_emoticon][emoE] = emoJ
  end
  puts lib
  lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end