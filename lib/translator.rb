# require modules here
require 'pry'
require 'yaml'

def load_library(emoticons_file_path)
=begin
    data = []
    file_data = File.read(emoticons)  #load the data
    data =  file_data.split(/-/)
    hash = Hash[data.collect { |item| [item]}]
binding.pry
puts data
=end

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





#   binding.pry
#return a hash with {'emoticon_name' => { :english => "value", :japanese => "value"} } format
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
