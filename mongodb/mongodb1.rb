require 'mongo'

conn = Mongo::Connection.new
db = conn.db("rubylearning")

puts "Getting a list of collections..."
db.collection_names.each { |name| puts name }

# Getting a collection
coll = db.collection("students")

# Inserting a document
doc = {:name => 'Manisha', :dob => Time.now, :loves => ['english', 'marathi'], :weight => 62, :gender => 'f', :country => 'india'}
coll_id = coll.insert(doc)

# Updating a document
coll.update({:_id => coll_id}, '$set' => {:weight => 60})
