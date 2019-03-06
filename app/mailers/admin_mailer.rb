class AdminMailer < ApplicationMailer
default from: 'no-reply@monsite.fr'
 
  def user_order(user, order)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 
	@order = order
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://cbdrone.herokuapp.com/'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Quelqu un a commandé quelque chose !') 
  end
end
