
require_relative "contacts"
require_relative "rolodex"


class CRM
	def initialize(name_being_passed_in)
		@rolodex=Rolodex.new
		@name=name_being_passed_in
		puts "OK, this CRM has a name: " + name_being_passed_in
	end

	def print_main_menu
		puts "1: Add new contact"
		puts "2: Modify contact"
		puts "3: Display all"
		puts "4: Display contact"
		puts "5: Display attribute"
		puts "6 :delete"
		puts "7:exit"
		puts "Enter a number:"
end

	def main_menu
		while true
	print_main_menu
	user_selected= gets.chomp.to_i
	call_option(user_selected)
		end
	end

	def call_option(user_selected)
		add_new_contact if user_selected == 1
		modify_existing_contact if user_selected == 2
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
		contact=Contact.new(first_name, last_name, email, note)
		rolodex.add_contact(contact) # added during class
		main_menu
		def display_contact
			print "Enter ID of user:"
			contact_id=gets.chomp.to_i
			contact=@rolodex.find(contact_id)
	end

	def self.run(name)
		crm=CRM.new(name)
		crm.main_menu
	end
end

a_crm_app=CRM.new("")
a_crm_app.main_menu
a_crm_app.print_main_menu
CRM.run("my CRM")




contact = Contact.new(id, first_name, last_name, email, notes)
