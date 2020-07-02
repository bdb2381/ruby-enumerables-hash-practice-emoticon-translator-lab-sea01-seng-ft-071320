# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)

  file_as_hash = YAML.load_file(file_path)
    hash_of_meaning = {}
    file_as_hash.each do |name,arrays|
        hash_of_meaning[name] ||= {}
        hash_of_meaning[name][:english] = arrays[0]
        hash_of_meaning[name][:japanese] = arrays[1]
        binding.pry
    end
  frank_emo


=begin
    data = []
    file_data = File.read(emoticons)  #load the data
    data =  file_data.split(/-/)
    hash = Hash[data.collect { |item| [item]}]
binding.pry
puts data


  hash = {}
  File.open(emoticons) do |file|
    file.map do |line|
      key, value = line.chomp.split("-")
      hash[key] = value
    #  binding.pry
    puts hash
    #$puts value
    end
    #binding.pry
  end

=end



#   binding.pry
#return a hash with {'emoticon_name' => { :english => "value", :japanese => "value"} } format
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
