Given (/the following movies exist/) do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then (/the director of "(.*)" should be "(.*)"/) do |name, director|
  @movie = Movie.find_by_title(name)
  assert @movie.director == director
end