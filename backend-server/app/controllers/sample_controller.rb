class SampleController < ApplicationController

  def data
    token = request.headers['Authorization'].match(/Bearer (.*)/)[1]
    identity = Auth.identify!(token)

    render json: Post.where(identity_id: identity).all
  rescue Auth::AuthError
    head 401
  end

end
