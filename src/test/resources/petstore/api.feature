Feature: Validaciones a API (Petstore Swagger)

Background:
  * url 'https://petstore.swagger.io/v2'
  * def nuevaMascota = read('classpath:nuevaMascota.json')

 Scenario: (CA01) Adicionar nueva mascota con fichero JSON
   Given path 'pet'
   And request nuevaMascota
   When method POST
   Then status 200
   And match response.id == nuevaMascota.id
   And match response.name == nuevaMascota.name