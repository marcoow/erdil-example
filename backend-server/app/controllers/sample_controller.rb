require 'httparty'

class SampleController < ApplicationController

  def data
    token = request.headers['Authorization'].match(/Bearer (.*)/)[1]
    response = HTTParty.post('http://localhost:3000/validate', { body: { token: token } })

    if response.code === 200
      render json: { some: 'data' }
    else
      head 401
    end
  end
  
end
