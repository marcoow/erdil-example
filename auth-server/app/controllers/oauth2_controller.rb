class Oauth2Controller < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    case params[:grant_type]
    when 'password'
      authenticate_with_credentials(params[:username], params[:password])
    else
      oauth2_error('unsupported_grant_type')
    end
  end

  def validate
    head 200
    #if params[:token] == 'secret!'
    #  head 200
    #else
    #  head 401
    #end
  end

  private

    def authenticate_with_credentials(identification, password)
      render json: { access_token: SecureRandom.hex(16) }
      #login = Login.where(identification: identification).first || LoginNotFound.new
      #
      #if login.authenticate(password)
      #  render json: { access_token: login.oauth2_token }
      #else
      #  oauth2_error('invalid_grant')
      #end
    end

end
