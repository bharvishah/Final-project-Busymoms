RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

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

  # RailsAdmin.config do |config|
  #   config.model 'Order' do
  #     list do
  #       field :status
  #       field :Store
  #       field :allow_sub
  #       field :delivery_date
  #       field :delivery_window
  #       field :add_note
  #       field :address_line1
  #       field :address_line2
  #       field :city
  #       field :state
  #       field :zip
  #       field :country
  #       field :phone
  #     end
  #   end
  # end

  RailsAdmin.config do |config|
    config.model 'Order' do
      list do
        field :status
        field :store
        field :allow_sub
        field :delivery_date
        field :delivery_window
        field :add_note
        field :address_line1
        field :address_line2
        field :city
        field :state
        field :zip
        field :country
        field :phone
      end
    end
  end


end
