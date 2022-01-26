# Laboratorio de Arquirectura de Computadores 2021-2
# Laboratorio 1: Instrucciones MIPS y Simulacion en MARS
# Nombre: John Serrano Carrasco
# Seccion: 13309-0-A-1
# Fecha: 30 de septiembre de 2021

addi $t3, $zero, 1 # int x = 1;
addi $t4, $zero, 0 # int y = 0;
addi $t5, $t5, 1   # Esto sirve para el else if
beq $t3, $zero, A  # if (x == 0){
beq $t3, $t5, B    # } else if (x ==1 ) {
addi $t4, $t4, 100 # } else { y = 100; }
j END
A:

addi $t4, $t4, 1   # 	y++;
j END

B:

addi $t4, $t4, -1  # 	y--;
j END

END:               

# Al ejecutar el programa, se asigna en $t3 el valor de x00000001. En la siguiente linea,
# se asigna a $t4 el valor de 0x00000000. En la linea siguiente, se asigna el valor 0x00000001 al
# registro $t5. A pesar de que el enunciado no menciona a este registro, se hace esta 
# operacion ya que sera de ayuda para el else if. Luego de eso, se proecede a los branch
# equal. Si $t3 es igual a 0x00000000, entonces el programa salta a la etiqueta A, donde
# a $t4 se le suma uno, quedando con un valor 0x00000001 y finalizando el programa. Si $t3
# es igual a 0x00000001, entonces se salta a la etiqueta B, donde a $t4 se le resta 1 y queda
# con el valor 0xffffffff y finaliza el programa. En caso que $t3 sea otro valor distinto a 
# 0x00000001 o 0x00000000, a $t4 se le  asigna el valor 0x00000064 y finaliza el programa. 
# Para el caso, cuando $t3 es 0x00000001 (x = 1), $t4 finaliza con 0xffffffff
# Para el caso cuando $t3 es 0x00000000 (x = 0), $t4 finaliza con 0x00000001
# Para el caso cuando $t3 es 0x0000000c (x = 12), $t4 finaliza con 0x00000064
