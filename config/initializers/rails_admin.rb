RailsAdmin.config do |config|

   config.main_app_name = ["Pinster"]
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  #config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration
  config.authorize_with do |controller|
      if !user_signed_in?
      flash[:error] = "You have not signed in as an admin!"
      redirect_to main_app.new_user_session_url 
      end

      if user_signed_in? && !current_user.admin?
      flash[:error] = "You are not an admin!"
      redirect_to main_app.pins_url  
      end
    end
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end        
end
