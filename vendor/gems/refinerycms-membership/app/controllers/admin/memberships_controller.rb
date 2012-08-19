class Admin::MembershipsController < Admin::BaseController

  # POST /refinery/*_roles/create_multiple.json
  def create_multiple
    parse_roles(params) do |items, roles|
      items.each{|item| item.roles << [roles - item.roles]} unless items.nil? || roles.nil?
    end
  end

  # POST /refinery/*_roles/destroy_multiple.json
  def destroy_multiple
    parse_roles(params) do |items, roles|
      items.each{|item| item.roles.delete(roles) } unless items.nil? || roles.nil?
    end
  end

  def index
    @members = Member.find(:all, :order => "id DESC")
  end
  
  def show
    @member = Member.find(params[:id])
    @ba = @member.billing_address_from_db
    @ma = @member.mailing_address_from_db
    if !@member
      redirect_to :back, :notice => "That donor could not be found."
    end
  end
  
  def edit
    @member = Member.find(params[:id])
  end
  
  def edit_mailing
    @member = Member.find(params[:id])
    @ma = @member.mailing_address_from_db
  end
  
  def update_mailing
    @ma = Address.find(params[:id])
    
    if @ma.update_attributes(params[:address])
      redirect_to admin_membership_path(@ma.member.id), :notice => "Successfully updated member profile."
    else 
      redirect_to :back, :notice => "Failed to update member mailing address.  Please try again."
    end
  end
  
  def update
    @member = Member.find(params[:id])
    @billing = Address.find(params[:billing_id])
    
    @member.donor_number = params[:member][:donor_number]
    if @member.update_attributes(params[:member]) && @billing.update_attributes(params[:address])
      redirect_to admin_membership_path(@member.id), :notice => "Successfully updated member profile."
    else
      redirect_to :back, :notice => "Failed to update member profile.  Please try again."
    end
  end
  
  def edit_country_listing
    @countries = Country.all
  end
  
  def edit_country_item
    @country = Country.find(params[:id])
  end
  
  def update_country_item
    @country = Country.find(params[:id])
    if @country.update_attributes(params[:country])
      redirect_to "/refinery/memberships/edit_country_listing", :notice => "Successfully updated."
    else
      redirect_to :back, :error => "There was a problem updating this country.  Please try again."
    end
  end
  
  def destroy_country_item
    @country = Country.find(params[:id])
    if @country.destroy
      redirect_to "/refinery/memberships/edit_country_listing", :notice => "Successfully destroyed #{@country.country_name}."
    else
      redirect_to :back, :error => "There was a problem destroying this country.  Please try again."
    end
  end
  
  def new_country_item
    @country = Country.new
  end
  
  def create_country_item
    @country = Country.new(params[:country])
    if @country.save
      redirect_to "/refinery/memberships/edit_country_listing", :notice => "Successfully created #{@country.country_name}."
    else
      redirect_to :back, :error => "There was a problem creating this country.  Please try again."
    end
  end
  
  def export_to_csv
    @members = Member.all
    csv_string = CSV.generate do |csv|
      logger.debug("In generate")
      # header row
      csv << ["Donor Number", "Email", "Name", "Address 1", "Address 2", "City", "State", "Country", "Postal Code", "Verified?" ]
      
      # data rows
      @members.each do |member|
          csv << [
            (member.donor_number rescue ""),
            (member.email rescue ""),
            ("#{member.first_name rescue ""} #{member.last_name rescue ""}"),
            (member.billing_address_from_db.address_1 rescue ""),
            (member.billing_address_from_db.address_2 rescue ""),
            (member.billing_address_from_db.city rescue ""),
            (member.billing_address_from_db.state rescue ""),
            (member.billing_address_from_db.country.country_name rescue ""),
            (member.billing_address_from_db.postal_code rescue ""),
            (member.verified? rescue "false")
          ]
        end
      end
    
    # send it to the browsah
    send_data csv_string, 
      :type => "text/csv; charset=iso-8859-1; header=present", 
      :disposition => "attachment; filename=donor_export_#{Time.now.strftime("%b_%d_%Y")}.csv"
    logger.debug("done with sendfile")
  end
  
private
  def current_objects(params={})
    current_page = (params[:iDisplayStart].to_i/params[:iDisplayLength].to_i rescue 0)+1
    @current_objects = Member.paginate :page => current_page,
      # :include => :roles,
      :order => "#{datatable_columns(params[:iSortCol_0])} #{params[:sSortDir_0] || "DESC"}",
      :conditions => conditions,
      :per_page => params[:iDisplayLength]
  end

  def total_objects(params={})
    @total_objects = Member.count :conditions => conditions
  end

  def datatable_columns(column_id)
    case column_id.to_i
    when 0
      return "last_name"
    when 1
      return "organization"
    when 2
      return "email"
    when 3
      return "created_at"
    when 4
      return "paid_until"
    else
      return "last_name"
    end

  end

  def conditions
    conditions = []
    conditions << %Q(
        first_name LIKE '%#{params[:sSearch]}%' OR
        last_name LIKE '%#{params[:sSearch]}%' OR
        organization LIKE '%#{params[:sSearch]}%'OR
        email LIKE '%#{params[:sSearch]}%'
    ) unless params[:sSearch].blank?
    
    return conditions.join(" AND ")
  end

  def respond_to_json(&block)
    respond_to do |format|
      format.json {
        begin
          block.call
          render :text => '', :status => 200

        rescue Exception => e
          render :text => e.message, :status => 500

        end
      }
    end
  end

  def parse_roles(params, &block)
    respond_to_json do
      items = get_items(params)
      roles = Role.find(params[:role_ids])

      block.call(items, roles) unless items.blank? || roles.blank?
    end
  end

  # this wants a params[:controller] =~ '[admin/]#{kind}_roles'
  def get_items(params)
    kind = get_kind(params)
    klass = kind.camelize.constantize
    klass.find(params[:item_ids], :include => :roles) unless params[:item_ids].nil?
  end

  def get_kind(params)
    name = params["controller"] || params[:controller]
    name.split('/')[-1].split('_')[0]
  end

end