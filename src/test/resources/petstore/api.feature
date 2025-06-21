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

Scenario: (CA02) Verificar que la mascota se adicionó satisfactoriamente
 Given path 'pet/' + newPet.id
 When method GET
 Then status 200
 And match response.name == newPet.name

 Scenario: (CA03) Actualizar el nombre de la mascota
   * def updatedPet = newPet
   * def newName = 'PugCarlino_Luna'
   * updatedPet.name = newName

   Given path '/pet'
   And request updatedPet
   When method PUT
   Then status 200
   And match response.name == 'PugCarlino_Luna'