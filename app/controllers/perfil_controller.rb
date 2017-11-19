class PerfilController < ApplicationController
  before_action :authenticate_user!
  before_action :set_perfil, except: [:index]

  def index
    unless current_user.perfil
      current_user.perfil = Perfil.create!({username: current_user.email.split("@").first})
    end
    
    @perfil = current_user.perfil
  end

  def edit
  end

  def create
    if  current_user.perfil.nil?
      @perfil = Perfil.new(perfil_params)

      respond_to do |format|
        if @perfil.save
          current_user.perfil = @perfil
          format.html { redirect_to @perfil, notice: 'perfil was successfully created.' }
        else
          format.html { render :new }
          format.json { render json: @perfil.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # patch 'perfil/update/:id'
  def update
      respond_to do | format |
      if @perfil.update(perfil_params)
        format.html { redirect_to '/perfil' }
      else
        format.html { render :new }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_perfil
    @perfil = Perfil.find(params[:id])
  end

  def perfil_params
    params.require(:perfil).permit(:username, :first_name, :last_name)
  end
end
