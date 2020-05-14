require 'open-uri'

puts 'Destroying the criminals..'
Criminal.destroy_all if Rails.env.development?
puts 'Destroying the prisons..'
Prison.destroy_all if Rails.env.development?

puts 'Creating prisons'

alcatraz = Prison.new(
  name: 'Alcatraz',
  banner_url: 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Alcatraz_Island_photo_D_Ramey_Logan.jpg'
)
alcatraz.save!

puts "Created #{alcatraz.name}"

azkaban = Prison.new(
  name: 'Azkaban',
  banner_url: 'https://www.kickassfacts.com/wp-content/uploads/2016/07/AzkabanPrison.jpg'
)
azkaban.save!

puts "Created #{azkaban.name}"

puts "Creating criminals for #{alcatraz.name}..."
5.times do
  image_url = open('http://le-wagon-tokyo.herokuapp.com/batches/394/student').read
  Criminal.create!(
    name: Faker::DcComics.villain,
    sentence_days: rand(1000..5000),
    image_url: image_url,
    prison: alcatraz
  )
end

puts "Creating criminals for #{azkaban.name}..."
5.times do
  image_url = open('http://le-wagon-tokyo.herokuapp.com/batches/394/student').read
  Criminal.create!(
    name: Faker::Movies::HarryPotter.character,
    sentence_days: rand(1000..5000),
    image_url: image_url,
    prison: azkaban
  )
end


crimes = ['indecent exposure', 'bullying', 'murder', 'poor indentation', 'kidnapping', 'horse pill theft']
puts "Creating crimes..."
crimes.each do |crime|
  Crime.create!(
    name: crime
  )
end





