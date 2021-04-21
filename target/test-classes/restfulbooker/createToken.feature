Feature: Create Token
  Este servicio es utilizado para la generacion del token
  donde le usuario se logueara el servicio realizadno un Sign In

  Background:
    * url baseURL
    * header Content-Type = 'application/json'

    Scenario: Verificar que al enviar todos los parametros correctos reciba codigo 200
      Given path '/auth'
      And request
      """
       {
         "username" : "admin",
          "password" : "password123"
       }
      """
      When method POST
      Then status 200


