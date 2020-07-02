# require modules here
require 'pry'
require 'yaml'
=begin
def load_library(emoticons)

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

  def load_library(yaml_file)
    response = {"get_meaning" => {}, "get_emoticon" => {}}
    library = YAML.load_file(yaml_file)
    library.each do |trans, emos|
      response["get_meaning"][emos[1]] = trans
      response["get_emoticon"][emos[0]] = emos[1]
    end
  puts  response




#   binding.pry
#return a hash with {'emoticon_name' => { :english => "value", :japanese => "value"} } format
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
