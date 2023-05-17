require 'rails_helper'

RSpec.describe 'the movies show page' do
  it 'displays the movie name' do
    theater = Theater.create!(name: "Riverside", location: "Reno", hours: 1400, matinee: true)
    movie = theater.movies.create!(name: "Kung Fu Panda", rating: 2, adult_supervision: false)
    movie_2 = theater.movies.create!(name: "The Matrix", rating: 4, adult_supervision: true)
    visit "/movies/#{movie.id}"
    # localhost:3000/theaters/1

    expect(page).to have_content(movie.name)
    expect(page).to_not have_content(movie_2.name)
  end

  it 'displays the name of the movie playing at the movie' do 
    theater = Theater.create!(name: "Riverside", location: "Reno", hours: 1400, matinee: true)
    movie = theater.movies.create!(name: "Kung Fu Panda", rating: 2, adult_supervision: false)
    movie_2 = theater.movies.create!(name: "The Matrix", rating: 4, adult_supervision: true)
    
    visit "/movies/#{movie.id}"
    # save_and_open_page
    expect(page).to have_content(theater.name)

  end
end


# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)
