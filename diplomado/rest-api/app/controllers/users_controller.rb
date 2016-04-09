class UsersController < ApplicationController
  #Mostrar todos los registros.
  def index
    @users = User.all
    # render json: users, status: :ok
  end

#   Consulta un solo id.
  def show
    @user = User.find(params[:id]);
    # render json: user, status: :ok
  end


#   Creamos un nuevo usuario.
  def create
    puts "llego: #{params[:name]} #{params[:phone]}"
    user = User.new(user_params)

    if user.save
      render json: {status: "Se creo el usuario"}, status: :ok
    elsif
      render json: {status: "Error al crear el usuario", errors: user.errors}, status: :unprocessable_entity
    end
  end

  # Actualizar el usuario.
  def update
    user = User.find(params[:id])

    if user.count > 0
      if user.update(user_params)
        render json: {status: "Se actualizo el usuario"}, status: :ok
      elsif
        render json: {status: "Error al actualizar el usuario", errors: user.errors}, status: :unprocessable_entity
      end
    elsif
      render json: {status: "Usuario no encontrado", errors: user.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])

    if user.delete
      render json: {status: "Se elimino el usuario"}, status: :ok
    elsif
      render json: {status: "Error al eliminar el usuario", errors: user.errors}, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :phone)
  end
end
