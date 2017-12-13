require 'json'

#json files are always in a string format
json = File.read('json_example.json')


#to know the type of we do
# json.class


#this is parsing from string to hash
json_parse = JSON.parse(File.read('json_example.json'))

# or
# json_parse = JSON.parse(json)


p json_parse['colors'].first
