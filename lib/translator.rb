# require modules here
require 'pry'


def load_library(emoticons)
    data = []
    file_data = File.read(emoticons)  #load the data
    #blah = {}
    data =  file_data.split(/-/)
    hash = Hash[data.collect { |item| [item, " " ] }]
    #end

#   binding.pry
#return a hash with {'emoticon_name' => { :english => "value", :japanese => "value"} } format
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
