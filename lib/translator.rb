# require modules here
require 'pry'


def load_library(emoticons)
=begin
    data = []
    file_data = File.read(emoticons)  #load the data
    data =  file_data.split(/-/)
    hash = Hash[data.collect { |item| [item]}]
binding.pry
puts data

  hash = {"emotion_meaning" => {}, "the_emoticon" => {}}
  File.open(emoticons) do |file|
    file.map do |line|
      #key, value = line.chomp.split("-")
      hash["emotion_meaning"][][key] = value
    #  binding.pry
    puts hash
    #$puts value
    end
    #binding.pry
  end
=end
hash = {"get_meaning" =>{}, "get_emoticon" =>{}}
YAML.load_file(file_path).each do |meaning, language_array|
  hash["get_emoticon"][language_array[0]] = language_array[1]
  hash["get_meaning"][language_array[1]] = meaning
end
hash



#   binding.pry
#return a hash with {'emoticon_name' => { :english => "value", :japanese => "value"} } format
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
