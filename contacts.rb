class Contact
	attr_accessor: id,first_name, last_name,email,notes
	def initialize(id, first_name, last_name, email, notes)
	@id=id
	@first_name=first_name
	@last_name=last_name
	@email=email
	@notes=notes
	end	

	def to_s
	"#{@id}, #{@first_name}, #{@last_name}, #{@email}, #{@notes}"
	end

	def email
		@email
	end
	def notes(notes)

		@notes = notes
	end

	def modify_existing_contact
		puts "input user id you want to modify:"
		@id=gets.chomp
		
	end

	def display_all_contacts
		puts 
	end

	def display_particular_contacts
	end


end
