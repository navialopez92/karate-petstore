Feature: Validaciones a API (Petstore Swagger)

Background:
* url 'https://petstore.swagger.io/v2'
* def newPet = read('classpath:newPet.json')

Scenario: (CA01) Adicionar nueva mascota con fichero JSON
 Given path 'pet'
 And request newPet
 When method POST
 Then status 200
 And match response.id == newPet.id
 And match response.name == newPet.name