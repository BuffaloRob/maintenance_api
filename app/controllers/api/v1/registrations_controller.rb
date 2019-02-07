class Api::V1::RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token
  respond_to :json

  def create
    build_resource(sign_up_params)
    resource.save
    render_resource(resource)
  end
  
end
