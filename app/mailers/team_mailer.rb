class TeamMailer < ApplicationMailer
  def change_owner_mail(team)
    @team = team
    mail to: @team.owner.email, subject: I18n.t("views.messages.owner_has_moved")
  end
end
