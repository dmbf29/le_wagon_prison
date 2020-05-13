puts 'Destroying the prisons..'
Prison.destroy_all if Rails.env.development?

puts 'Creating prisons'

alcatraz = Prison.new(
  name: "Alcatraz",
  banner_url: 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Alcatraz_Island_photo_D_Ramey_Logan.jpg'
)
alcatraz.save!

puts "Created #{alcatraz.name}"

azkaban = Prison.new(
  name: "Azkaban",
  banner_url: 'https://www.kickassfacts.com/wp-content/uploads/2016/07/AzkabanPrison.jpg'
)
azkaban.save!

puts "Created #{azkaban.name}"
