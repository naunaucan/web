class ContactsController < ApplicationController
	def create
		@account = Account.find(params[:account_id])
		contact = @account.contacts.create(params[:contact])
		redirect_to account_path(@account)
	end
	def show
		@account = Account.find(params[:account_id])
		@contact = Contact.find(params[:id])

		response_to do |format|
			format.html
			format.xml { render :xml => @listing }
		end
	end

	def destroy
		@account = Account.find(params[:account_id])
		contact = @account.contacts.find(params[:id])
		contact.destroy
		redirect_to account_path(@account)
	end
end
