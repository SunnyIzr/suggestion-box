10.times do 
  Suggestion.create!(name: Faker::Hipster.sentence(1), description: Faker::Hipster.paragraph(2))
end