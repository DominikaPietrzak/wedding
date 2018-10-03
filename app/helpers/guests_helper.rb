module GuestsHelper
  def resource_name
  :guest
  end

  def resource
    @resource ||= Guest.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:guest]
  end
end
