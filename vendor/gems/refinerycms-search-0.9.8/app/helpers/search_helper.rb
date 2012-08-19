module SearchHelper
	
	# this is where you register your result URLs based on the
	# type of result we're dealing with
	def result_url(result)
		result.respond_to?(:url) ? result.url : url_for(result)
	end
	
	def search_snippet(txt, char)
	  (shorten (strip_tags (txt.gsub("&#160;", "")).html_safe), char)
  end
	
end