require "count_component/controls"

class CountsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: { data: [
      { id: 1, value: 2 },
      { id: 2, value: 3 },
    ] }
  end

  def update
    count_id = params[:id]
    decrement = params[:decrement]

    if decrement
      CountComponent::Controls::Write::Decrement.(count_id: count_id)
    else
      CountComponent::Controls::Write::Increment.(count_id: count_id)
    end

    head :ok
  end
end
