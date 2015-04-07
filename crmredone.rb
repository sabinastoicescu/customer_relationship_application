

class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(first_name, last_name, email, note)
		@first_name=first_name
		@last_name=last_name
		@email=email
		@note=note
	end

	def to_s
		puts "#{id}, #{@first_name}, #{@last_name}, #{email}, #{note}"
	end


end


class Rolodex

	def initialize
		@contacts = []
		@id = 1000
	end 

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id =+ 1
	end



	# def modify_contact
	# end 

	# def display_all_contacts

	# end 

	# def display_particular_contact
	# end

	# def display_info_by_attribute 
	# end

	def find(id)
		@contacts.find { |contact| contact.id == id }
	end

	def delete_contact(id)
		contact = find(id)
		@contacts.delete(contact)
	end

end





class CRM

	def initialize(name)
		@rolodex=Rolodex.new
		@rolodex.add_contact(Contact.new("Person", "mcPersonstein", "pseronsweronserw@stff.com", "whee"))
		@rolodex.add_contact(Contact.new("Person", "mcPersonstein", "pseronsweronserw@stff.com", "whee"))
		@rolodex.add_contact(Contact.new("Person", "mcPersonstein", "pseronsweronserw@stff.com", "whee"))
		@rolodex.add_contact(Contact.new("Person", "mcPersonstein", "pseronsweronserw@stff.com", "whee"))
		@rolodex.add_contact(Contact.new("Person", "mcPersonstein", "pseronsweronserw@stff.com", "whee"))
		@rolodex.add_contact(Contact.new("Person", "mcPersonstein", "pseronsweronserw@stff.com", "whee"))
		@rolodex.add_contact(Contact.new("Person", "mcPersonstein", "pseronsweronserw@stff.com", "whee"))

	 	@name=name
	 	puts "CRM name is #{name}"
	 end

	def print_main_menu

		puts "1. add contact"
		puts "2. modify contact"
		puts "3. display all"
		puts "4. display contact"
		puts "5. display attribute"
		puts "6. delete"
		puts "7. exit"

	end

	def main_menu
		loop do
			print_main_menu
			selection=gets.chomp.to_i
			# call_option(selection)
			case selection
			when 1
				add_contact 
			when 2
				modify_contact 
			when 3
				display_all 
			when 4
				display_contact 
			when 5
				display_attribute 
			when 6
				delete_contact 
			when 7
				puts "quitting"
				break
			else 
				puts "Error: bad choice"
			end
		end
	end
	
	def prompt(message="> ", convert=:to_s)
		loop do
			print message
			input = gets.chomp
			if input.empty?
				puts "You must say something!!"
			else
				return input.send(convert)
			end
		end
	end

	def add_contact
		first_name = prompt "Enter first name:"
		last_name = prompt "Enter last name:"
		email = prompt "Enter email:"
		note = prompt "Enter note:"

		contact = Contact.new(first_name, last_name, email, note)

		@rolodex.add_contact(contact)		#how do i make the attributes mandatory?
		puts "Contact added!"
	end	

	def modify_contact
			puts "please input id:"
			@id=gets.chomp
			confirm = prompt "confirm selection y/n", :upcase
			if confirm == "Y"
			else
			end
	end
			
	def answer
		if confirm == "y"
			then puts "please change first name:"
			@first_name=gets.chomp
			puts "please change last name:"
			@last_name=gets.chomp
			puts "please change email:"
			@email=gets.chomp
			puts "please change note:"
			@note=gets.chomp
		else 
			print_main_menu
		end
	end


	def display_all
		puts @rolodex.contacts
	end

	def display_contact
		puts "Please input id:"
		@id=gets.chomp
		puts "#{id}, #{first_name}, #{last_name}, #{email}, #{note}"
	end


	def display_attribute
		puts "Which column do you want to see?"
		puts "[1] First name"
		puts "[1] First name"
		puts "[1] First name"
		puts "[1] First name"
		puts "[1] First name"
		
		choice = prompt "> ", :to_i

		@rolodex.contacts.each do |contact|
			case choice
			when 1
				puts contact.first_name
			when 2
				puts contact.last_name
			when 3
				puts contact.email
			when 4
				puts contact.note
			end
		end
	end

	def delete_contact

	end	
	
	def exit
	
	end

end


my_CRM=CRM.new("Sab")
my_CRM.main_menu
