class Account < ActiveRecord::Base
	# attr_accessible:
	validates:user_name,:presence => true
	validates:deskripsi,:presence => true, :length => { :minimum => 10 }
    attr_accessible :birthday, :deskripsi, :fee, :income, :login_time, :premium, :ranking, :user_name
    has_many :contacts, :dependent => :destroy
end
