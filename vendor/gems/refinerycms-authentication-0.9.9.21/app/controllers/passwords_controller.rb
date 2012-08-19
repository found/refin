class PasswordsController < ::Devise::PasswordsController
  layout 'application'

  # Rather than overriding devise, it seems better to just apply the notice here.
  after_filter :give_notice, :only => [:update]
  def give_notice
    unless %w(notice error alert).include?(flash.keys.map(&:to_s)) or @member.errors.any?
      flash[:notice] = t('successful', :scope => 'users.reset', :email => @member.email)
    end
  end
  protected :give_notice

  # GET /registrations/password/edit?reset_password_token=abcdef
  def edit
    if params[:reset_password_token] and (@member = Member.find_by_reset_password_token(params[:reset_password_token])).present?
      render_with_scope :edit
    else
      redirect_to(new_member_password_url, :flash => ({
        :error => t('code_invalid', :scope => 'users.reset')
      }))
    end
  end

  # POST /registrations/password
  def create
    if params[:member].present? and (email = params[:member][:email]).present? and
       (member = Member.find_by_email(email)).present?

      # Call devise reset function.
      member.send(:generate_reset_password_token!)
      MembershipMailer.reset_notification(member, request).deliver
      redirect_to new_member_session_path, :notice => "Please check the link in your email before trying to login." and return
    else
      # @member = Member.new(params[:member])
      redirect_to :back, :notice => "That account could not be located, please try again."
        
      # flash.now[:error] = if (email = params[:member][:email]).blank?
      #         t('blank_email', :scope => 'users.forgot')
      #       else
      #         t('email_not_associated_with_account_html', :email => email, :scope => 'users.forgot').html_safe
      #       end
      #       render_with_scope :new
    end
  end
end
