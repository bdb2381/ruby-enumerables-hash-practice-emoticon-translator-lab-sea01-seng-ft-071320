# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)

  file_as_hash = YAML.load_file(file_path)    #load the file automatically as hash, with keys and values in an array form
    hash_of_meaning = {}                      #initialize blank hash. This is will hold the final data in the format we want
    file_as_hash.each do |emotion_name_key,arrays_of_emoticons|        #for every item in the file, do the following
        hash_of_meaning[emotion_name_key] = {}            #create a nested hash for each emotion name, based on the emotion name_key
        hash_of_meaning[emotion_name_key][:english] = arrays_of_emoticons[0]    #for any data in index 0, put it here
        hash_of_meaning[emotion_name_key][:japanese] = arrays_of_emoticons[1]   #for any data in index 1, put it here
    end
  hash_of_meaning    #return a hash with all .yml data in {'emoticon_name' => { :english => "value", :japanese => "value"} } format
end

def get_english_meaning(file_path, japanese_emoticon_to_translate  )
#load the file
#find the Japanese_emoticon_to_translate
#return the key (the emotion name) of the emoticon

file_as_hash = load_library(file_path)    #load the file automatically as hash, with keys and values in an array form
  #hash_of_meaning = {}
file_as_hash.each do |key, value|
    value.each do |language_key, emoticon_value|
      puts emoticon_value[0]
      puts japanese_emoticon_to_translate
        #binding.pry
      #puts "in the if statement"

      #binding.pry
      puts
    end
end
#binding.pry
end  #end def



def get_japanese_emoticon
  # code goes here


end
