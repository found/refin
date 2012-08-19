class ContentHolder < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :body]

  validates :title, :presence => true, :uniqueness => true
  
  default_scope :order => "id ASC"
  
  def self.per_page #for will_paginate
    10
  end
  
  def remove_p_wrapper(obj)
    if obj.slice(0...3) == "<p>" && obj.slice((obj.length - 4)...obj.length) == "</p>"
      obj = obj.slice(3...(obj.length - 4))
    end
    return obj
  end
  
  def body_no_wrapper
    return remove_p_wrapper(self.body)
  end
  
  def build_image_forms
    return if self.body.nil?
    if self.body.include?("{{ donate_form_")
      body_str = self.body
      body_str = remove_p_wrapper(body_str)
      img_tag = body_str.slice!(body_str.index("<img")...body_str.index(" />")+3)
      program_id = body_str.gsub("{{ donate_form_", "").gsub("  }}", "").to_i
      img_height = img_tag.slice(/height=\"[0-9]*\"/).gsub("height=\"", "").gsub(/\"/, "").to_i
      img_width = img_tag.slice(/width=\"[0-9]*\"/).gsub("width=\"", "").gsub(/\"/, "").to_i
      img_src = ""
      str_arr = img_tag.split(" ")
      str_arr.each do |s|
        if s[0...5] == "src=\""
          img_src = s.gsub("src=\"", "").gsub("\"", "")
        end
      end
      form_string = "<form id='quick-form' accept-charset='UTF-8' action='/orders/add_program_to_cart/#{program_id}' method='post' style='background-image:url(#{img_src}); height:#{img_height}px; width:#{img_width}px; background-repeat:no-repeat;'><font color='white' style='margin-left:70px'>$</font><input id='quick_donate_quick_amount' name='quick_donate[quick_amount]' size='30' type='text' style='margin-top:270px; margin-left:0px; width:60px;' /><input id='quick_donate_submit' name='commit' type='submit' value='Donate' style='margin-left:10px;'/></form>"
      matcher = "{{ donate_form_#{program_id}  }}"
      body_str = body_str.gsub("{{ donate_form_#{program_id}  }}", form_string)
      return body_str
    else
      return self.body  
    end
  end
end
