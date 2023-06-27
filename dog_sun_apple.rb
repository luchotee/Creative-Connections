class CreativeConnections 
	def initialize
		@connections = []
	end

	# Return a nested array of connections 
	def all 
		@connections
	end

	# Add a connection to the collection
	def add(from, to, description)
		@connections << [from, to, description]
	end

	# Find a connection by it's from value 
	def find_by_from(from)
		@connections.select { |conn| conn[0] == from }
	end

	# Find a connection by it's to value 
	def find_by_to(to)
		@connections.select { |conn| conn[1] == to }
	end

	# Find a connection by it's description value 
	def find_by_description(description)
		@connections.select { |conn| conn[2] == description }
	end

	# Find a connection by searching for a string in any field value
	def find_by_any(str)
		@connections.select do |conn| 
			conn.any? { |field| field.include?(str) }
		end
	end

end