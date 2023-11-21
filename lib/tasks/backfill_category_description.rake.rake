
task backfill_category_description :environment do
    describtion = {
      "General" => "explore a variety of general topics and stay informed 
      on awide range of subjects.",
      "technology" => "stay up-to-date witht the latest in technology"
    }'Backfill categories with descriptions'
    task add_descriptions: :environment do
  
      categories = Category.all
  
      categories.each do |category|
        category.update(description: "Description for #{category.name}")
        puts "Description for '#{category.name}' added."
      end
  
      puts 'Categories desc added succesfully'
    end
  end