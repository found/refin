User.all.each do |user|
  if user.plugins.where(:name => 'subscription_types').blank?
    user.plugins.create(:name => 'subscription_types',
                        :position => (user.plugins.maximum(:position) || -1) +1)
  end
end

page = Page.create(
  :title => 'Subscription Types',
  :link_url => '/subscription_types',
  :deletable => false,
  :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
  :menu_match => '^/subscription_types(\/|\/.+?|)$'
)
Page.default_parts.each do |default_page_part|
  page.parts.create(:title => default_page_part, :body => nil)
end
