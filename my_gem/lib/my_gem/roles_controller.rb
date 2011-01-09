module MyGem
  class RolesController < ActionController::Base
    protect_from_forgery

    # Use the gem's directory to find views
    before_filter { prepend_view_path File.join(File.dirname(__FILE__), '..') }

    # GET /roles
    # GET /roles.xml
    def index
      @roles = Role.all
  
      respond_to do |format|
        format.html { render :layout => 'application' } # use client application's layout
        format.xml  { render :xml => @roles }
      end
    end
  
    # GET /roles/Admin
    # GET /roles/Admin.xml
    def show
      @role = Role.find_by_name(params[:name])
      @role_authorities = @role.authorities
  
      respond_to do |format|
        format.html { render :layout => 'application' } # use client application's layout
        format.xml  { render :xml => @role }
      end
    end
  
    # GET /roles/Admin/edit
    def edit
      @role = Role.find_by_name(params[:name])
      @all_authorities = Authority.all
      render :layout => 'application' # use client application's layout
    end
  
    # PUT /roles/Admin
    # PUT /roles/Admin.xml
    # This only updates AuthorityRole, not Role. It always succeeds (or at
    # least it fails silently).
    def update
      @role = Role.find_by_name(params[:name])
  
      respond_to do |format|
        @role.authorities = Authority.find_by_name(params[:authority_names])
        format.html { redirect_to(my_gem_role_path(@role.name),
             :notice => 'Role was successfully updated.') }
        format.xml  { head :ok }
      end
    end
  
  end
end
