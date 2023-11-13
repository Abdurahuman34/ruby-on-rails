namespace :db do
    desc 'Add ten random articles to the articles database'
    task add_random_articles: :environment do
      category_ids = Category.pluck(:id)
  
      10.times do
        random_num = rand(1000)
        title = "Article Title #{random_num}"
        body = "This is the body of article #{random_num}"
  
        random_category_id = category_ids.sample
        article = Article.create(title:, body:, category_id: random_category_id)
        puts "Article '#{title}' added to category '#{article.category.name}'"
      end
      puts 'Random articles addes succesfully'
    end
  end