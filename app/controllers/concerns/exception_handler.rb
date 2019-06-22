module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from ActionController::ParameterMissing, with: :bad_request
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
  end

private

  def unprocessable_entity(error)
    render json: { message: error.message }, status: :unprocessable_entity
  end

  def not_found(error)
    render json: { message: 'test' }, status: :not_found
  end

  def bad_request(error)
    render json: { message: error.message }, status: :bad_request
  end
end
