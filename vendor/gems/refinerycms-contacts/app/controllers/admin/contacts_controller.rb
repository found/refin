module Admin
  class ContactsController < Admin::BaseController
    require 'csv'
    crudify :contact,
            :title_attribute => 'email', :xhr_paging => true

    def index
      @years = {}
      ContactInstance.all.reverse.each do |ci|
        if !@years.has_key?(ci.created_at.year.to_s)
          @years["#{ci.created_at.year}"] = [] 
        end
          @years["#{ci.created_at.year}"] << ci
      end
    end
    
    def show
      @contact = Contact.find(params[:id])
    end
    
    def export_to_csv
      @contacts = Contact.all
      csv_string = CSV.generate do |csv|
        logger.debug("In generate")
        # header row
        csv << ["email", "first name", "last name", "address 1", "address 2", "city", "state", "country", "postal code", "is a member?", "donor number", "donor verified?", "wants a newsletter?" ]
        
        # data rows
        @contacts.each do |contact|
            csv << [
              (contact.email rescue ""),
              (contact.first_name rescue ""),
              (contact.last_name rescue ""),
              (contact.address_1 rescue ""),
              (contact.address_2 rescue ""),
              (contact.city rescue ""),
              (contact.state rescue ""),
              (contact.country rescue ""),
              (contact.postal_code rescue ""),
              (contact.member_id.blank? rescue "false"),
              (contact.member.donor_number rescue "N/A"),
              (contact.member.verified? rescue "N/A"),
              (contact.newsletter_recipient? rescue "false")
            ]
          end
        end
      
      # send it to the browsah
      send_data csv_string, 
        :type => "text/csv; charset=iso-8859-1; header=present", 
        :disposition => "attachment; filename=contacts_export_#{Time.now.strftime("%b_%d_%Y")}.csv"
      logger.debug("done with sendfile")
    end
  end
end
