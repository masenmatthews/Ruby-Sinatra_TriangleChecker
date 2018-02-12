require('sinatra')
require('sinatra/reloader')
require('pry')

get('/') do
  "This application will test whether-or-not inputted values make up a triangle"
  erb(:input)
end

get('/output') do
  @side1 = params.fetch("side1")
  @side2 = params.fetch("side2")
  @side3 = params.fetch("side3")
  three_sides =Tri.new()
  @three_sides = triangles

  erb(:output)
end
