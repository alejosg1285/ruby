class ContactsPdf < Prawn::Document
  def initialize(contact, current_user)
    @contact = contact
    @current_user = current_user
    super()

    body_pdf
  end

  def body_pdf
    stroke_horizontal_rule
    pad(15) do
      text "Generando pdf con ruby"
    end

    stroke_horizontal_rule

    pad(10) do
      text "Usuario: #{@contact.name}"
      text "Telefono: #{@contact.phone}"
      text "Correo: #{@contact.email}"
    end

    stroke_horizontal_rule

    pad(10) do
      image "#{@contact.avatar.file.file}"
    end

    text "Este pdf fue creado por #{@current_user.email} a las: #{Time.now}"
  end
end