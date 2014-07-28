
class User
	attr_accessor :name, :email

	def initialize(attrs = {})
		@name  = attrs[:name]
		@email = attrs[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end
