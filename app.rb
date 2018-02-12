require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/triangle')

get('/') do
  "This application will test whether-or-not inputted values make up a triangle"
  erb(:input)
end

get('/output') do
  @side1 = params.fetch("side1")
  @side2 = params.fetch("side2")
  @side3 = params.fetch("side3")
  output = Tri.new(@side1, @side2, @side3)
  # binding.pry
  @three_sides = output.triangles(@side1, @side2, @side3)
  erb(:output)
end
