# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)

  emo = YAML.load_file("lib/emoticons.yml")
    frank_emo = {}
    emo.each do |name,arrays|
        frank_emo[name] ||= {}
        frank_emo[name][:english] = arrays[0]
        frank_emo[name][:japanese] = arrays[1]
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
