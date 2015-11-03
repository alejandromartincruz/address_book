class ContactsController < ApplicationController
	def index
		@contacts = Contact.order("name ASC")
	end

	def new
		@contact = Contact.new
	end

	def create

		if ((params[:contact][:name] == "") || (params[:contact][:address] == ""))
			redirect_to "/contacts/new"
		else
			Contact.create({
				name:params[:contact][:name],
				address:params[:contact][:address],
				phone_number:params[:contact][:phone_number],
				email:params[:contact][:email]
				})
			redirect_to "/contacts"
		end
	end

	def show
		@contact = Contact.find_by(id: params[:contact_id])
	end
end
