class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def thread_id
    (Thread.current.object_id % 0xffff).to_s(16)
  end
end
