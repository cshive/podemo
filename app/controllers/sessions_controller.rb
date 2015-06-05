class SessionsController < Devise::SessionsController
  LDAP_USER = "LDAP"
  LOCAL_USER = "LOCAL"

  def create

    # Figure out which type of user we are authenticating.
    # The 'type_if_user' method is implementation specific, and not provided.

    user_class = nil
    error_string = 'Login failed'
    Rails.logger.info "HIHIHI "
    Rails.logger.info "#{request.params['user']} "
    type = request.params['user']['type']
    Rails.logger.info "request type = #{request.params['type'].inspect} "
    # Copy user data to ldap_user and local_user
    request.params['ldap_user'] = request.params['local_user'] = request.params['user']

    if request.params['type'] == "LocalUser"
      user_class = :local_user
      user = LocalUser.where(username: request.params['user']["username"]).first
      Rails.logger.info "user #{user.inspect} "
      error_string = 'Username or password incorrect'
      Rails.logger.info "Before warden authenticate "
      #self.resource = warden.authenticate! scope: user_class
      # For the LocalUser, call the warden authentication in the superclass
      self.resource = warden.authenticate!({ scope: resource_name, recall: "#{controller_path}#new" })
      set_flash_message(:notice, :signed_in) if is_flashing_format?
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
      Rails.logger.info "Result of warden authenticate = #{self.resource.inspect}"
    else
      user_class = :ldap_user
      user = LdapUser.where(username: request.params['user']["username"]).first
      Rails.logger.info "user #{user.inspect} "
      error_string = 'LDAP details incorrect'
      # Use Warden to authenticate the user, if we get nil back, it failed.
      Rails.logger.info "Before warden authenticate "
      self.resource = warden.authenticate! scope: user_class
      Rails.logger.info "Result of warden authenticate = #{self.resource.inspect}"
      if self.resource.nil?
        flash[:error] = error_string
        return redirect_to new_session_path
      end

      # Now we know the user is authenticated, sign them in to the site with Devise
      # At this point, self.resource is a valid user account.
      Rails.logger.info "#{self.resource.inspect}"
      sign_in(user_class, self.resource)
      respond_with self.resource, :location => after_sign_in_path_for(self.resource)
    end

  end

  def destroy
    # Destroy session
  end

  def new
    # Set up a blank resource for the view rendering
    #Rails.logger.info "#{self.inspect}"
    self.resource = User.new
    end
end
