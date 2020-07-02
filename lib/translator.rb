# require modules here
require 'pry'


def load_library(emoticons)
    file_data = File.read(emoticons)  #load the data
    file_data.each_with_object({}) do | (value, key), final_hash|
      binding.pry
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
