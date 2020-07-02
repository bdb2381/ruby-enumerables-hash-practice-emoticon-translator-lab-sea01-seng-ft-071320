# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)

  file_as_hash = YAML.load_file(file_path)    #load the file automatically as hash, with keys and values in an array form
    hash_of_meaning = {}                      #initialize blank hash. This is will hold the final data in the format we want
    file_as_hash.each do |emotion_name_key,arrays|        #for every item in the file, do the following
        hash_of_meaning[emotion_name_key] = {}            #create a nested hash for each emotion name
        hash_of_meaning[emotion_name_key][:english] = arrays[0]
        hash_of_meaning[emotion_name_key][:japanese] = arrays[1]
binding.pry
    end
  hash_of_meaning
#binding.pry
#return a hash with {'emoticon_name' => { :english => "value", :japanese => "value"} } format
end



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
