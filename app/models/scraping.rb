class Scraping
    agent = Mechanize.new
    page = agent.get(http://dual.nikkei.co.jp/article.aspx?id=7411)
    name = page.at('.detail_content p span').inner_text
    position = page.at('.pictBox img')[:src] if page.at('.pictBox img')
    price = page.at('.f span').inner_text if page.at('.f span')
    open_time = page.at('.outline p').inner_text
    extend_time = page.at('.opn_date strong').inner_text if page.at('.opn_date strong')

    product = Product.where(title: title, image_url: image_url).first_or_initialize
    product.director = director
    product.detail = detail
    product.open_date = open_date
    product.save
  end
end