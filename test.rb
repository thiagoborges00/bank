require_relative "account.rb"
require_relative "bank.rb"

caixa = Bank.new()
conta1 = Account.new("123",1 , 500)
caixa.add_account(conta1)
caixa.list()
conta1.check_balance(conta1)
conta1.check_extract(conta1)

conta2 = Account.new("222",10,200)
caixa.add_account(conta2)
caixa.list()
conta2.check_balance(conta1)
conta2.transfers(conta1,200)
conta2.extract()
caixa.list()
conta1.transfers(conta2,250)
conta1.check_extract(conta1)
caixa.remove(conta1)
caixa.list()

conta3 = Account.new("3",15 , 1500)
caixa.add_account(conta3)
conta3.transfers(conta2,1200)
caixa.list()
conta3.check_extract(conta3)
conta2.transfers(conta3,100)
conta2.check_extract(conta2)
conta2.save_file(conta2)

