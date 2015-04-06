class Rolodex

	def initialize
	@contacts=[]
	@id= 1000 

	end
	def contact
		@contact
	end

	def add_contact(contact)
		contact.id=@id # added .id method by attr:accessor in class Contact 
		@contacts<<contact
		@id +=1
	end

	def find(contact_id)
		@contacts.detect do |contact|
			contact.id == contact_id
		end
	end
	

	
	# def display_info_by_attribute
	# 	puts "Please input id, first name, last name or email to find info:"
	# 	user_input=gets.chomp

	# 	if @contacts.include? user_input then puts "#{@id}, #{@first_name}, #{@last_name}, #{@email}, #{@notes}"
	# 	else puts "Input is not included in CRM"
	# 	end
		
	# end

	# def delete_contact
	# end
end