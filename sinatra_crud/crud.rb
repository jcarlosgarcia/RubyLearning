# crud.rb
require 'sinatra'
require 'active_record'

configure do
	# connect to the database
	dbconfig = YAML.load(File.read('config/database.yml'))
	ActiveRecord::Base.establish_connection dbconfig['development']

	begin
		ActiveRecord::Schema.define do
			create_table :students do |t|
				t.string :name, :null => false, :limit => 100
				t.string :email, :null => false, :limit => 50
			end
		end
	rescue ActiveRecord::StatementInvalid
		# do nothing - gobble up the error
	end
end

# define a simple model
class Student < ActiveRecord::Base
end

# New participant
get '/' do
	begin
		@list_students = Student.find(:all)
	        erb :new
	rescue => ex
		'Cannot generate students list'
		"#{ex.class}: #{ex.message}"
	end
end
# Save the participant's info
post '/' do
	begin
		@student = Student.new(:name => params[:name], :email => params[:email])
		@student.save
		redirect "/#{@student.id}"
	rescue
		redirect '/'
	end
end

# Display participant's details
get '/:id' do
	begin
		@student = Student.find(params[:id])
		erb :show
	rescue
		redirect '/'
	end
end
