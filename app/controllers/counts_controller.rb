require "count_component/controls"

class CountsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: { data: [
      { id: 1, value: nil },
      { id: 2, value: nil },
      { id: 3, value: nil },
      { id: 4, value: nil },
      { id: 5, value: nil },
      { id: 6, value: nil },
    ] }
  end

  def update
    count_id = params[:id]
    is_decrement = params[:decrement]

    handler = CountComponent::Handlers::Commands.build

    if is_decrement
      decrement = CountComponent::Controls::Commands::Decrement.example(count_id: count_id)
      handler.handle_decrement(decrement)
    else
      increment = CountComponent::Controls::Commands::Increment.example(count_id: count_id)
      handler.handle_increment(increment)
    end

    head :ok
  end
end
