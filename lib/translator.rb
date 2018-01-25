# require modules here
require 'yaml'

def load_library
  YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon(english)
  load_library.each do |feeling, emos|
    if emos.include?(english)
      return emos[1]
    end
  end
end

def get_english_meaning(japanese)
  load_library.each do |feelingm emos|
    if emos.include?(japanese)
      return emos[0]
    end
  end
end
