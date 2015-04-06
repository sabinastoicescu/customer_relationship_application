

class CRM

	# def initialize(name)
	# 	@name=name
	# 	puts "CRM name is "
	# end

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
	
	print_main_menu
	selection=gets.chomp.to_i
	call_option(selection)
	end
	
	def call_option(selection)
		add_contact if selection == 1
		modify_contact if selection ==2
		display_all if selection == 3
		display_contact if selection ==4
		display_attribute if selection == 5
		delete if selection == 6
		exit if selection == 7
	end
	
	def add_contact
			print "Enter first name:"
			@first_name=gets.chomp
			print "enter last name:"
			@last_name=gets.chomp
			print "Enter email:"
			@email=gets.chomp
			print "Enter note:"
			@note=gets.chomp
			contact=Contacts.new(id, first_name, last_name, email, note)
			@rolodex=Rolodex.new(contact)
			#how do i make the attributes mandatory?
	end	

	def modify_contact
			puts "please input id:"
			@id=gets.chomp
			puts "confirm selection y/n"
			confirm=gets.chomp
			answer #calling the method below"
#how can I prevent user from changing id?
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
		else print_main_menu
		end
	end


	def display_all
		puts ""
	end

	def display_contact
		puts "Please input id:"
		@id=gets.chomp
		puts "#{id}, #{first_name}, #{last_name}, #{email}, #{note}"
	end
		def display_attribute

		end

		def delete_contact
		end	
		
		def exit
		
		end
	#

end
my_CRM=CRM.new
my_CRM.main_menu


class Contacts
attr_accessor :id, :first_name, :last_name, :email, :note

	def intialize
		@id=id
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
	
	contacts=[]
	@id =1000
	end 

	def contact
		@contact
	end

	def add_contact(contact)
	contact.id=@id
	@contacts<<contact
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

	# def delete_contact

	# end

end



