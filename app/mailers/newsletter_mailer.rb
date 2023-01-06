class NewsletterMailer < ApplicationMailer
  def newsletter_mailer
    @newsletter = Newsletter.all
    # Para que funcione fuerzo la fecha actual a una donde tengo registros
    # start_date = (Date.parse('18/11/2022')).beginning_of_week.strftime('%d/%m/%Y')
    # De normal, sería esta la sentencia a utilizar, donde se toma la fecha actual
    start_date = (Time.now).beginning_of_week.strftime('%d/%m/%Y')
    # Para que funcione fuerzo la fecha actual a una donde tengo registros
    # end_date = (Date.parse('18/11/2022')).end_of_week.strftime('%d/%m/%Y')
    # De normal, sería esta la sentencia a utilizar, donde se toma la fecha actual
    end_date = (Time.now).end_of_week.strftime('%d/%m/%Y')
    @sessions = Session.where('dates BETWEEN ? AND ?', start_date, end_date)
    emails = @newsletter.collect(&:email).join(', ')
    @movies = @sessions.map(&:movie).uniq

    mail to: emails, subject: 'Cartelera semanal en Cineópolis'
  end

end
