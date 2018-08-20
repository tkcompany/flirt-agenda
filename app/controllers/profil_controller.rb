class ProfilController < ApplicationController
    # This controller is reserved for all user authenticate users
    before_action :authenticate_user!
    
    layout "profil"
    def index
    end
end