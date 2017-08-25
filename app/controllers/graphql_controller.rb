class GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    query = "{products}" # parse graphQL query and use in this query
    operation_name = params[:operationName]
    context = {}
    result = TicketSchema.execute(query)

    render json: result
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end
end
