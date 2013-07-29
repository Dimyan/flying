module DeviseHelper
  def devise_error_messages!
    flash_alerts = []
    error_key = 'errors.messages.not_saved'

    if !flash.empty?
      flash_alerts.push(flash[:error]) if flash[:error]
      flash_alerts.push(flash[:alert]) if flash[:alert]
      flash_alerts.push(flash[:notice]) if flash[:notice]
      error_key = 'devise.failure.invalid'
    end

    return "" if resource.errors.empty? && flash_alerts.empty?
    errors = resource.errors.empty? ? flash_alerts : resource.errors.full_messages

    messages = errors.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t(error_key, :count    => errors.count,
                      :resource => resource.class.model_name.human.downcase)

    #html = <<-HTML
    #<div id="error_explanation">
    #  <h2>#{sentence}</h2>
    #  <ul>#{messages}</ul>
    #</div>
    #HTML
    html = <<-HTML
    <div id="error_explanation">
      <ul>#{messages}</ul>
    </div>
    HTML

    flash.now[:error] = html.html_safe
  end
=begin
  def devise_error_messages!
    return "" if resource.errors.empty?
    #messages = resource.errors.full_messages.map { |msg| flash.now[:error] = msg }.join(", ")
    flash.now[:error] = resource.errors.full_messages.join(", ")
  end
=end

end