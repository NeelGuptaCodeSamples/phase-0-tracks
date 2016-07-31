# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db_prof = SQLite3::Database.new("professors.db")
db_prof.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/professors' do
  @professors = db_prof.execute("SELECT * FROM professors")
  erb :professor
end


get '/professors/new' do
  erb :new_professor
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/professors' do
  db_prof.execute("INSERT INTO professors (name, age, major) VALUES (?,?,?)", [params['name'], params['age'].to_i, params['major']])
  redirect '/professors'
end

# add static resources