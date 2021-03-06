namespace :add do
  desc 'Add document and keyword data'
  task add_data: :environment do
  	keywords = ['red', 'blue', 'green']
  	documents = ['my fav color is red, also green', 'i dont like blue color and red', 'green']
  	keywords.each do |keyword|
  		Keyword.create(name: keyword)
  	end

  	documents.each do |content|
  		Document.create(content: content)
  	end

  	Document.find_each do |document|
  		doc_content_list = document.content.split(' ')
  		Keyword.find_each do |keyword|
  			if doc_content_list.include?(keyword.name)
  				DocumentKeyword.create(keyword_id: keyword.id, document_id: document.id)
  			end
  		end
  	end
  end
end

# 1
start_date = Date.today.to_date.beginning_of_day
end_date = Date.today.to_date.end_of_day
Document.where('created_at BETWEEN ? AND ?', start_date, end_date)


# 2 
red_keyword = Keyword.find_by_name('red')
red_keyword.document_keywords

# 3
blue_keyword = Keyword.find_by_name('blue')
blue_keyword.document_keywords

# 4
keywords = Keyword.where(name: ['red','blue'])
DocumentKeyword.where(keyword_id: keywords.ids)

# 5
red_keyword = Keyword.find_by_name('red')
blue_keyword = Keyword.find_by_name('blue')
red_keyword.documents && blue_keyword.documents
