require 'sinatra'
require 'mysql2'

get '/' do
  client = mysql2::Client.new(host:"localhost",username:"root",database:"booklist",encoding:"utf8")
  erb:booklist
  @records=client.query("SELECT*FROM books ORDER BY created_at DESC")
end

post '/' do
  
  client = mysql2::Client.new(host:"localhost",username:"root",database:"booklist",encoding:"utf8")
  book_title = params['book_title']
  statement = client.prepare('INSERT INTO books(book_title) VALUES(?)')
  statement=execute(book_title)
  
  @records=client.query("SELECT*FROM books ORDER BY created_at DESC")
  
  erb:booklist
end