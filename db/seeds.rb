account = Account.create(name:'musical', balance:2000 )
account = Account.create(name:'efua', balance:3000 )
account = Account.create(name:'NE-YO', balance:2000 )
account = Account.create(name:'MANHAKIM', balance:500 )
account = Account.create(name:'ALICIA', balance:10000 )


transaction = Transaction.create(account_id: 1, amount:100, kind:'deposit', date: Date.today, description:'performance payment', category: 'Event Cost')
transaction = Transaction.create(account_id: 1, amount:100, kind:'withdraw', date: Date.today, description:' new Microphone',  category: 'Event Cost' )



Transaction.create(category: 'Transportation')
Transaction.create(category: 'Fees')
Transaction.create(category: 'Buying Supplies')
Transaction.create(category: 'Event Cost')
Transaction.create(category: 'Paying Employees')
Transaction.create(category: 'Other')
