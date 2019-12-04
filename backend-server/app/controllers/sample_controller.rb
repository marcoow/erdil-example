class SampleController < ApplicationController

  def data
    render json: { some: 'data' }
  end
  
end
