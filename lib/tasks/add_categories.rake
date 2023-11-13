namespace :db do
    desc 'Add four categories to the database'
    task add_categories: :environment do
      # Define category name
      category_names = %w[Technology Travel Food Fasion]
  
      category_names.each do |name|
        Category.find_or_create_by(name:)
        puts "Category '#{name}' added."
      end
  
      puts 'Categories added succesfully'
    end
  end