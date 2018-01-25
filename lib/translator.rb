# require modules here
require 'yaml'

def load_library(file)
  hash = YAML.load_file(file)
  answer = {"get_meaning" => {}, "get_emoticon" =>{}}

  hash.each do |feeling, emos|
    answer["get_meaning"][emos[1]] = feeling
    answer["get_emoticon"][emos[0]] = emos[1]
  end
  answer
end

def get_japanese_emoticon(english)
  load_library.each do |feeling, emos|
    if emos.include?(english)
      return emos[1]
    end
  end
end

def get_english_meaning(japanese)
  load_library.each do |feeling, emos|
    if emos.include?(japanese)
      return emos[0]
    end
  end
end
