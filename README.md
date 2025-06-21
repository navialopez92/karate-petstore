<!-- @format -->

# Pasos para correr los tests:

1. Clonar repositorio
2. Instalar dependencias
3. Ejecutar tests
4. Verificar resultados

# Nota:

Es imposible que todos los tests functionen a la misma vez. El API está implementado para que aleatoriamente cambie los datos. He hecho test de todos los tipos, unas veces me fallaban a la hora de verificar el nombre de la mascota actualizada, otras veces cuando la borraba, y otras cuando le hacía el segundo request. Probé con otros dos nombres como "Manolo" y "Pepe" y si me funcionó, al parecer el API tiene algo extraño dentro ya que me dí cuenta haciendo request a la mascota con id = 1 que unas veces devolvía name "doggie" y otras veces not found.


# Herrameintas

Maven, mvn -version
