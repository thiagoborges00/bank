class Account
	attr_accessor :cpf
	attr_accessor :id
	attr_accessor :balance
	attr_accessor :extract

def initialize(cpf , id , balance)

	@cpf = cpf
	@id = id
	@balance = balance
	@extract = ""

end

def transfers(destination_account, value)
	if @balance >= value
		@balance -= value
		#p @balance
		destination_account.balance += value
		#p destination_account.balance
		@extract += ("transference for #{destination_account.cpf} of R$ #{value} \n")
		destination_account.extract += "you received R$ #{value}  of #{@cpf} \n"
		#destination_account.instance_variable_set "@extract" ,"you received R$ #{value}  of #{@cpf} \n"	
	else
	 puts"your balance is insulficient or account invalid\n"
	end
end


def check_balance(account)
	#ver implementação de verificação 
	puts "the balance  is #{account.balance}\n"
end


def check_extract(account)
	puts" ---  extract ---#{account.cpf}\n#{account.extract}"

end

def save_file(account)
	fl = File.new("extract.txt", "w+")
	#File.open("", "w+") do |fl|
		fl.write "---  extract  ---  account #{account.cpf}\n\n"
		fl.write account.extract
		fl.write "\n\n"
		fl.close
	puts "\nfile save\n "
end

end






