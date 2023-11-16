namespace :db do
    desc  'Backfill categories with descriptions'
    task add_descriptions: :environment do
  
      categories = Category.all
  
      categories.each do |category|
        category.update(description: "Description for #{category.name}")
        puts "Description for '#{category.name}' added."
      end
  
      puts 'Categories desc added succesfully'
    end
  end