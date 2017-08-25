require 'sinatra'
require_relative 'contact.rb'


get '/' do
  erb :index
end

get '/contacts' do
  @contacts = [
    {id: 2, first_name: "Mallory", last_name: "Morris", email: "second@email.com", note: "N/A"},
    {id: 3, first_name: "Stanton", last_name: "Roberts", email: "third@email.com", note: "N/A"},
    {id: 4, first_name: "Daniel", last_name: "Costa", email: "fourth@email.com", note: "N/A"},
    {id: 5, first_name: "Sarah", last_name: "Costa", email: "email@email.com", note: "N/A"},
  ]

  erb :contacts
end

post "/add_contact" do

end

get "/about" do

end


after do
  ActiveRecord::Base.connection.close
end
