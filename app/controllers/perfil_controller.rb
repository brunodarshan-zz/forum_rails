class PerfilController < ApplicationController
  before_action :authenticate_user!
  before_action :set_perfil

  def index
    unless @perfil
      @perfil = Perfil.create!({username: current_user.email.split("@").first})
    end
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

  def update
    respond_to do |format|
      if @perfil.save
        format.html { redirect_to @perfil }

      else
        format.html { render :new }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_perfil
    @perfil = current_user.perfil
  end
end
