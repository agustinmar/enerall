class Contact < ActionMailer::Base
  default from: "info@enerall.biz"

  Contact.recepcion.deliver

  def micorreo(parametros)
  	enviar_correo(parametros,"info@enerall.biz","Nuevo mensaje")
  end

  def enviar(parametros)
  	enviar_correo(parametros,parametros[:correo],"Gracias por contactar con Enerall")
  end

  private
  def enviar_correo(parametros,correo,asunto)
  	@nombre = parametros[:nombre]
  	@correo = parametros[:correo]
  	@comentario = parametros[:comentario]

  	mail:to => correo, :subject => asunto
  end
end