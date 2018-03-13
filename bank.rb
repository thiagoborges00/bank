class Bank
	attr_accessor :account_list

def initialize()
	@account_list = []
	
end


def add_account(account)
	account_list << account
	puts "account #{account.cpf} created sucessfully\n"
end

def list()
	account_list.each { |accounts| puts "CPF number:#{accounts.cpf} --- Balance:#{accounts.balance}\n" }
end


def remove(account)
	account_list.reject!{ |acc| acc.id == account.id}
	puts "account #{account.cpf} removed sucessfully\n"
end

end
