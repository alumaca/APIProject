
class Api::V1::RoversController < ApiController

  def index
    render json: {status: 'SUCCESS', message: 'Loaded all posts', data: Rover.all}, status: :ok
  end
end
