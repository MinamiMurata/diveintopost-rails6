class AgendaMailer < ApplicationMailer
  def delete_agenda_mail(agenda, user, team)
    @agenda = agenda
    @user = user
    @team = team
    mail to: @user.email, subject: I18n.t("views.messages.delete_agenda")
  end
end
