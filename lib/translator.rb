require "yaml"
require "pry"

path = "lib/emoticons.yml"

def load_library(path)
  #binding.pry
  dict = {"get_meaning" => {}, "get_emoticon" => {}}
  emo = YAML.load_file(path)
  emo.keys.each do |word|
    emoE = emo[word][0]
    emoJ = emo[word][1]
    dict["get_meaning"][emoJ] = word
    dict["get_emoticon"][emoE] = emoJ
  end
  dict
end

load_library(path)

def get_japanese_emoticon(path, input)
  dict = load_library(path)
  if dict["get_emoticon"].keys.include?(input) == true
    return dict["get_emoticon"][input]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, input)
  dict = load_library(path)
  #binding.pry
  if dict["get_meaning"].keys.include?(input) == true
    return dict["get_meaning"][input]
  else
    "Sorry, that emoticon was not found"
  end
end

get_english_meaning(path, "afkg4")