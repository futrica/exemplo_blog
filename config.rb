Time.zone = "Brasilia" #setando time zone

activate :blog do |blog|
  blog.permalink = "{year}/{month}/{day}/{title}.html" #mostra a página do post com data
  blog.taglink = "tags/{tag}.html" # adiciona a função de agrupamento por tags
  blog.layout = "post" #arquivo padrão do layout
  blog.summary_length = 250 #ativa sumário para o post - requerido gem Nokogiri
  blog.default_extension = ".markdown" # linguagem de marcação dinâmica

  blog.tag_template = "tag.html" #layout específico para página tags

  #Ativar paginação 
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  # set :http_prefix, "/Content/images/"
end
