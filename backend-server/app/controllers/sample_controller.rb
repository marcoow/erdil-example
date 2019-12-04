class SampleController < ApplicationController

  def data
    token = request.headers['Authorization'].match(/Bearer (.*)/)[1]
    Auth.identify!(token)

    render json: Post.all
  rescue Auth::AuthError
    head 401
  end

end
