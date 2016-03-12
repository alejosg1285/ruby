class PersonaController < ApplicationController
  def index
    @personas = Persona.all
    @fecha = Time.now.strftime('%m-%d-%Y')
    @hora = Time.now.strftime('%X')
    #Para definir la vista se usa render
    render "persona/index"
  end

  def saludar
    @persona = Persona.first
    @saludo = "desde otro vista"
  end
end
