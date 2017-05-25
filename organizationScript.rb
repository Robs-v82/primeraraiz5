rails g model Institution name state:references color category

x = Institution.new(:name=>"Luxury Habitat", :state_id=>9, :color=>"#C4FC13", :category=>"RE_broker", :image=>File.new("/Users/Bobsled/documents/Primera Raíz/institution_images/Luxury Habitat.jpg", "r"))
x = Institution.new(:name=>"Luxury Habitat", :state_id=>9, :color=>"#C4FC13", :category=>"RE_broker")
x.save

Institution.last.update(:image=>File.open("/Users/Bobsled/documents/Primera Raíz/institution_images/Luxury Habitat.jpg", "r"))

Luxury Habitat.jpg

x = Institution.new(:name=>"Casas Atlas", :state_id=>9, :color=>"#4ca7ff", :category=>"RE_developer", :image=>File.new("/Users/Bobsled/documents/Primera Raíz/institution_images/Casas Atlas.png", "r"))
