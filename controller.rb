require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/string_fun.rb')

get '/equal/:string1/:string2' do
  @result = StringFun.equal(params[:string1], params[:string2])
  erb(:result)
end

get '/pallindrome/:string' do
  @result = StringFun.pallindrome(params[:string])
  erb(:result)
end

get '/isogram/:string' do
  @result = StringFun.isogram(params[:string])
  erb(:result)
end

get '/anagram/:string1/:string2' do
  @result = StringFun.anagram(params[:string1], params[:string2])
  erb(:result)
end
