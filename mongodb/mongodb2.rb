require 'mongo'

db = Mongo::Connection.new('flame.mongohq.com', 27107).db("contacts")
auth = db.authenticate(ARGV[0], ARGV[1])

coll = db.collection("contacts")

docs = [{:name => 'Manisha', :loves => ['english', 'marathi'], :gender => 'f', :country => 'india'},
	{:name => 'Satoshi', :loves => ['ruby','c'], :gender => 'm', :country => 'japan'},
	{:name => 'Michael', :loves => ['ruby','clojure'], :gender => 'm', :country => 'austria'}]

docs.each { |doc| coll.insert(doc) }

puts "#{coll.count} docs inserted"

coll.find.each { |doc| puts doc.inspect}

