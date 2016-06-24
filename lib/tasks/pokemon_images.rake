namespace :pokemon_images do
  desc "get all the pokemon images"
  task get_pokemon_images: :environment do
    require "open-uri"
    require "uri"
    Pokemon.all.each do |p|
      file_name = File.basename(URI.parse(p.image).path)[0,3]+".png"
      path_name = "app/assets/images/pokemon_images/"
      p "Checking #{path_name+file_name}"
      unless File.file?(path_name+file_name)
        File.open(path_name+file_name, 'wb') do |fo|
          p "Getting from #{p.image}"
          fo.write open(p.image).read
        end
      else
        p "File #{path_name+file_name} exists. Skipping."
      end
    end
  end
end

