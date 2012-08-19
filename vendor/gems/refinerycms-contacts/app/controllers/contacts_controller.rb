class ContactsController < ApplicationController

  before_filter :find_all_contacts
  before_filter :find_page

  def index
    redirect_to "/"
  end

  def show
    redirect_to "/"
  end
  
  def new
    @contact = Contact.new
    @contact_instance = ContactInstance.new
  end

  def create
    @referer = request.env["HTTP_REFERER"]
    logger.debug("Referer: #{@referer.inspect}")
    if params && params[:contact] && !params[:contact][:email].blank?
      logger.debug("Params are good.  Lets proceed.")
      @contact_instance = ContactInstance.new(params[:contact_instance])
      if Contact.exists?({:email => params[:contact][:email]})
        logger.debug("Contact Exists in the system.  Reusing.")
        @contact = Contact.find_by_email(params[:contact][:email])
        if @contact.update_attributes(params[:contact])
          if @contact_instance.update_attribute(:contact_id, @contact.id)
            logger.debug("emails sent and done.")
            if @referer.include?("newsletter")
              redirect_to :action => :newsletter_complete and return
            else
              redirect_to :action => :complete and return
            end
          else
            go_back("There was an error processing your request.  Please try again.")
          end
        else
          go_back("There was an error processing your request.  Please try again.")
        end
      else
        logger.debug("Making a new contact.")
        @contact = Contact.new(params[:contact])
        if @contact.save
          logger.debug("Contact saved")
          if @contact_instance.update_attribute(:contact_id, Contact.find_by_email(@contact.email).id)
            logger.debug("emails send and done again.")
            redirect_to :action => :complete and return
          else
            go_back("There was an error processing your request.  Please try again.")
          end
        else
          go_back("There was an error processing your request.  Please try again.")
        end
      end
    else
      logger.debug("Params suck.")
      go_back("Please verify your email address.")
    end
  end
  
  def complete
  end
  
  def newsletter_signup
    @contact = Contact.new
    @contact_instance = ContactInstance.new
  end
  
  def newsletter_complete
  end

protected

  def go_back(error="")
    logger.debug("redirecting")
    redirect_to :back, :notice => error and return
  end

  def find_all_contacts
    @contacts = Contact.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/contacts").first
  end

end
