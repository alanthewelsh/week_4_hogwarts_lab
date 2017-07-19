require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/student.rb')

also_reload( './models/*.rb') if development?

# INDEX
get '/student/?' do
  @students = Student.all
  erb(:index)
end

# NEW
get '/student/new' do
  erb(:new)
end

# CREATE
post '/student' do
  new_student = Student.new(params)
  new_student.save
  redirect '/student'
end

