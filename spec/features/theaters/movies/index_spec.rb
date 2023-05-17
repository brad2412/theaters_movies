require 'rails_helper'

RSpec.describe "Theaters movies index" do
  it "shows names all the movies for the theater" do
    theater = Theater.create!(name: "Riverside", location: "Reno", hours: 1400, matinee: true)
    panda = theater.movies.create!(name: "Kung Fu Panda", rating: 2, adult_supervision: false)
    matrix = theater.movies.create!(name: "The Matrix", rating: 4, adult_supervision: true)

    visit "/theaters/#{theater.id}/movies"

    expect(page).to have_content(panda.name)
    expect(page).to have_content(matrix.name)
  end

  it "links to each movies show page" do
    theater = Theater.create!(name: "Riverside", location: "Reno", hours: 1400, matinee: true)
    panda = theater.movies.create!(name: "Kung Fu Panda", rating: 2, adult_supervision: false)
    matrix = theater.movies.create!(name: "The Matrix", rating: 4, adult_supervision: true)

    visit "/theaters/#{theater.id}/movies"

    click_on panda.name
    expect(current_path).to eq("/movies/#{panda.id}")
  end
end