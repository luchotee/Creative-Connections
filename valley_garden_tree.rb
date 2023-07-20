#Creative Connections in Ruby

#1
#this creates a simple string
message = "Hello World!"

#2
#this prints out the message
puts message

#3
#this creates a method to override the to_s method from Object
class CreativeConnection 
  def to_s
    "Welcome to Creative Connections!"
  end
end

#4
#this creates a new instance of the CreativeConnection class
connection = CreativeConnection.new 

#5
#this prints out the result of the instance's to_s method
puts connection 

#6
#this defines a method to get an inspiration message
def get_inspiration_message
  "Think Creatively and Create Connections!"
end

#7
#this prints out the result of the get_inspiration_message method
puts get_inspiration_message

#8
#this creates a new array
array = ["Be creative", "Build connections", "Think outside the box"]

#9
#this iterates over the array
array.each do |element|
  puts element
end

#10
#this uses the map method to iterate over the array and capitalize the strings
array.map do |element|
  element.upcase
end

#11
#this creates a new hash
hash = {
  :message => "Stay connected and keep creating!",
  :connections => "It's all about making connections!"
}

#12
#this iterates over the hash
hash.each do |key, value|
  puts "#{key}: #{value}"
end

#13
#this defines a method to connect two words together and make a new, creative phrase
def connect(word1, word2)
  "#{word1} #{word2}!"
end

#14
#this calls the connect method
puts connect("Create", "Connections")

#15
#this creates a new array of hashes
inspirations = [
  {
    :title => "Creativity",
    :inspiration => "Create something new!"
  },
  {
    :title => "Connections",
    :inspiration => "Connect with those around you!"
  }
]

#16
#this iterates over the array of hashes
inspirations.each do |inspiration|
  puts "#{inspiration[:title]}: #{inspiration[:inspiration]}"
end

#17
#this creates a new class
class CreativeConnectionProject 
  #18
  #this creates an attr_accessor for the instance variable @name
  attr_accessor :name
  
  #19
  #this defines an initialize method
  def initialize(name)
    @name = name
  end
  
  #20
  #this defines a method to get information about the project
  def project_info
    "Project #{@name} is a creative project that encourages connection!"
  end
  
  #21
  #this defines a method to generate creative ideas
  def generate_ideas
    puts "Some ideas for Project #{@name}:"
    puts "1. Create a mentoring program that connects people from different backgrounds"
    puts "2. Host a community event that encourages creativity"
    puts "3. Develop a platform for creative collaboration" 
  end
end

#22
#this creates a new instance of the class
project = CreativeConnectionProject.new("Creative Connections")

#23
#this prints out the project info using the instance's project_info method
puts project.project_info

#24
#this prints out creative ideas using the instance's generate_ideas method
project.generate_ideas

#25
#this defines a method to connect two people
def connect_two_people(person1, person2)
  puts "Connecting #{person1} and #{person2}..."
  puts "Connected!"
end

#26 
#this calls the connect_two_people method
connect_two_people("John", "Mary")

#27
#this creates a new array
inspiration_quotes = ["\"Creativity is contagious, pass it on!\" - Albert Einstein", 
                      "\"Everything you can imagine is real.\" - Pablo Picasso",
                      "\"Make the most of yourself, for that is all there is of you.\" - Ralph Waldo Emerson"]

#28
#this iterates over the array
inspiration_quotes.each do |quote|
  puts quote
end

#29
#this creates a new class
class CreativeConnectionNetwork 
  #30
  #this creates an attr_accessor for the instance variable @name
  attr_accessor :name
  
  #31
  #this defines an initialize method
  def initialize(name)
    @name = name
  end
  
  #32
  #this defines a method to get information about the network
  def network_info
    "The #{@name} network is a platform for creative connection!"
  end
  
  #33
  #this defines a method to generate creative ideas
  def generate_ideas
    puts "Some ideas for the #{@name} network:"
    puts "1. Connect people with similar creative interests and skillsets"
    puts "2. Enable creative collaboration between people around the world"
    puts "3. Host creative events and workshops" 
  end
end

#34
#this creates a new instance of the class
network = CreativeConnectionNetwork.new("Creative Connections")

#35
#this prints out the network info using the instance's network_info method
puts network.network_info

#36
#this prints out creative ideas using the instance's generate_ideas method
network.generate_ideas

#37
#this defines a method to generate a unique creative idea
def generate_unique_idea
  "Create a unique platform that allows people to connect and share their creative ideas!"
end

#38
#this prints out the result of the generate_unique_idea method
puts generate_unique_idea

#39
#this creates a new hash
creative_connection_resources = {
  :blog => "Creative Connection blog provides helpful tips for creative connection",
  :video => "Creative Connection video provides inspiring examples of creative work"
}

#40
#this iterates over the hash
creative_connection_resources.each do |key, value|
  puts "#{key}: #{value}"
end

#41
#this defines a method to connect two words together and make a new, creative phrase
def connect(word1, word2)
  "#{word1} #{word2}!"
end

#42
#this calls the connect method
puts connect("Connect", "Creatively")

#43
#this creates a new array
inspiring_quotes = ["\"Imagination is more important than knowledge.\" - Albert Einstein", 
                    "\"Creativity is intelligence having fun.\" - Albert Einstein",
                    "\"The more you can dream, the more you can do.\" - Michael Korda"]

#44
#this iterates over the array
inspiring_quotes.each do |quote|
  puts quote
end

#45
#this creates a new class
class CreativeConnectionCommunity 
  #46
  #this creates an attr_accessor for the instance variable @name
  attr_accessor :name
  
  #47
  #this defines an initialize method
  def initialize(name)
    @name = name
  end
  
  #48
  #this defines a method to get information about the community
  def community_info
    "The #{@name} community is a platform for creative connection and collaboration!"
  end
  
  #49
  #this defines a method to generate creative ideas
  def generate_ideas
    puts "Some ideas for the #{@name} community:"
    puts "1. Create an online forum for creative questions and discussions"
    puts "2. Establish a mentorship program to connect professionals and newcomers"
    puts "3. Develop a platform for creative project collaboration" 
  end
end

#50
#this creates a new instance of the class
community = CreativeConnectionCommunity.new("Creative Connection")

#51
#this prints out the community info using the instance's community_info method
puts community.community_info

#52
#this prints out creative ideas using the instance's generate_ideas method
community.generate_ideas

#53
#this defines a method to get an inspiring message
def get_inspiring_message
  "Inspire, Connect, Create!"
end

#54
#this prints out the result of the get_inspiring_message method
puts get_inspiring_message

#55
#this creates a new array
creative_connections = ["Be creative", "Build relationships", "Encourage collaboration"]

#56
#this iterates over the array
creative_connections.each do |connection|
  puts connection
end

#57
#this uses the map method to iterate over the array and capitalize the strings
creative_connections.map do |connection|
  connection.upcase
end

#58
#this creates a new class
class CreativeConnectionProject 
  #59
  #this creates an attr_accessor for the instance variable @name 
  attr_accessor :name
  
  #60
  #this defines an initialize method
  def initialize(name)
    @name = name
  end
  
  #61
  #this defines a method to get information about the project
  def project_info
    "Project #{@name} is a creative project that encourages connection and collaboration!"
  end
  
  #62
  #this defines a method to generate creative ideas
  def generate_ideas
    puts "Some ideas for Project #{@name}:"
    puts "1. Create a platform for creative collaborations between professionals and newcomers"
    puts "2. Develop an online course on creative connection building"
    puts "3. Host a creative workshop on connecting with others" 
  end
end

#63
#this creates a new instance of the class
project = CreativeConnectionProject.new("Creative Connections")

#64
#this prints out the project info using the instance's project_info method
puts project.project_info

#65
#this prints out creative ideas using the instance's generate_ideas method
project.generate_ideas

#66
#this defines a method to connect two people
def connect_two_people(person1, person2)
  puts "Connecting #{person1} and #{person2}..."
  puts "Connected!"
end

#67 
#this calls the connect_two_people method
connect_two_people("John", "Mary")

#68
#this creates a new array
inspiration_quotes = ["\"Create the things you wish existed.\" - Unknown", 
                      "\"Make the most of yourself, for that is all there is of you.\" - Ralph Waldo Emerson",
                      "\"The best way to predict the future is to create it.\" - Peter Drucker"]

#69
#this iterates over the array
inspiration_quotes.each do |quote|
  puts quote
end

#70
#this creates a new hash
creative_connection_resources = {
  :website => "Creative Connection website provides helpful information on creative connection",
  :tutorials => "Creative Connection tutorials provide helpful tips for creative connection"
}

#71
#this iterates over the hash
creative_connection_resources.each do |key, value|
  puts "#{key}: #{value}"
end

#72
#this defines a method to connect two words together and make a new, creative phrase
def connect(word1, word2)
  "#{word1} #{word2}!"
end

#73
#this calls the connect method
puts connect("Create", "Connections")

#74
#this creates a new array
inspiring_quotes = ["\"Creativity is allowing yourself to make mistakes. Art is knowing which ones to keep.\" - Scott Adams", 
                    "\"Creativity is intelligence having fun.\" - Albert Einstein",
                    "\"The best way to have a good idea is to have lots of ideas.\" - Linus Pauling"]

#75
#this iterates over the array
inspiring_quotes.each do |quote|
  puts quote
end

#76
#this creates a new class
class CreativeConnectionNetwork 
  #77
  #this creates an attr_accessor for the instance variable @name
  attr_accessor :name
  
  #78
  #this defines an initialize method
  def initialize(name)
    @name = name
  end
  
  #79
  #this defines a method to get information about the network
  def network_info
    "The #{@name} network is a platform for creative connection and collaboration!"
  end
  
  #80
  #this defines a method to generate creative ideas
  def generate_ideas
    puts "Some ideas for the #{@name} network:"
    puts "1. Connect people with similar creative interests"
    puts "2. Create an online platform for creative collaborations"
    puts "3. Develop an app to connect people from around the world" 
  end
end

#81
#this creates a new instance of the class
network = CreativeConnectionNetwork.new("Creative Connections")

#82
#this prints out the network info using the instance's network_info method
puts network.network_info

#83
#this prints out creative ideas using the instance's generate_ideas method
network.generate_ideas

#84
#this defines a method to generate a unique creative idea
def generate_unique_idea
  "Create an online platform that allows people to connect and share ideas in creative ways!"
end

#85
#this prints out the result of the generate_unique_idea method
puts generate_unique_idea