xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0", "xmlns:atom" => "http://www.w3.org/2005/Atom" do
  xml.channel do
    # Required to pass W3C validation.
    xml.atom :link, nil, {
      :href => news_items_url(:format => 'rss'),
      :rel => 'self', :type => 'application/rss+xml'
    }

    # Feed basics.
    xml.title             page_title
    xml.description       @page[:body].to_s.gsub(/<\/?[^>]*>/, "") # .to_s protects from nil errors
    xml.link              programs_url(:format => 'rss')

    # News items.
    @programs.each do |program|
      xml.item do
        xml.title         program.program_name
        xml.link          programs_url(program)
        xml.description   (program.program_short_description)
        xml.pubDate       program.updated_at.to_s(:rfc822)
        xml.guid          programs_url(program)
      end
    end
  end
end