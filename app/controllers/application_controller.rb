class ApplicationController < ActionController::Base
  def render_422
    render file: "app/public/422.html", status: 422

  end

  def render_404
    render file: "errors/not_found", status: 404

  end

  def render_500
    render file: "app/public/500.html", status: 500

  end

  def render_403
    render file: "app/public/403.html", status: 403

  end
end
