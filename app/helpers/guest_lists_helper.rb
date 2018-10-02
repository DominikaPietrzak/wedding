module GuestListsHelper
  def resource_name
  :guest
  end

  def resource
    @resource ||= Guest.find(params[:id])
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:guest]
  end
end
