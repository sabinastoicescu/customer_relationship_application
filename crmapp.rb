class CRM
	def initialize(name)
		@name=name_being_passed_in
		puts "OK, this CRM has a name" + name
	end

	def print_main_menu
	puts "1: Add new contact"
	puts "2: Modify contact"
	puts "3: Display all"
	puts "4: Display contact"
	puts "5: Display attribute"
	puts "6 :delete"
	puts "7:exit"
	end

	def main_menu
	print_main_menu
	user_selected= gets.to_i
	call_option(user_selected)
	end

	def call_option(user_selected)
		add_new_contact if user_selected == 1
		modify_existing contact if user_selected == 2
		display_all if user_selected == 3
		display_contact if user_selected == 4
		display_attribute if user_selected == 5
		delete if user_selected == 6
	end
	def add_new_contact
		print "Enter first name:"
		first_name=gets.chomp
		print "Enter last name:"
		last_name=gets.chomp
		print "enter email address:"
		email=gets.chomp
		print "enter a note:"
		note=gets.chomp
		contact=Contact.new(first_name, last_name,email,note)

	end

	def self.run(name)
		crm=CRM.new(name)
		crm.main_menu
	end
end

a_crm_app=CRM.new("Sabina")
a_crm_app.main_menu
a_crm_app.print_main_menu


class Contact
	attr_accessor :id, :first_name, :last_name, :email, :notes


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
end

class Rolodex

	def initialize
	@contacts=[]
	@id= 1000

	end

	def add_contact(contact)
		contact.id=@id
		@contacts<<contact
		@id +=1
	end

	def modify_contact
	end

	def display_all_contacts
	end

	def display_particular_contacts
	end

	def display_info_by_attribute
	end

	def delete_contact
	end
end
contact = Contact.new(id, first_name, last_name, email, notes)
