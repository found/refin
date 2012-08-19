User.all.each do |user|
  if user.plugins.where(:name => 'content_holders').blank?
    user.plugins.create(:name => 'content_holders',
                        :position => (user.plugins.maximum(:position) || -1) +1)
  end
end

page = Page.create(
  :title => 'Content Holders',
  :link_url => '/content_holders',
  :deletable => false,
  :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
  :menu_match => '^/content_holders(\/|\/.+?|)$'
)
Page.default_parts.each do |default_page_part|
  page.parts.create(:title => default_page_part, :body => nil)
end
