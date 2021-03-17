account = Account.create(name:'musical', balence:2000 )

transaction= Transaction.create(account_id: 1, amount:100, kind:'deposit', date: Date.today, description:'performance payment' )
transaction= Transaction.create(account_id: 1, amount:100, kind:'withdraw', date: Date.today, description:' new Microphone' )
