# Laboratorio de Arquirectura de Computadores 2021-2
# Laboratorio 1: Instrucciones MIPS y Simulacion en MARS
# Nombre: John Serrano Carrasco
# Seccion: 13309-0-A-1
# Fecha: 30 de septiembre de 2021

addi $t0, $zero, 20 # int x = 20;
addi $t1, $t0, 5    # int y = x+5;
ori $t1, $t1, 2     # y = y | 2;

# Al ejecutar el programa, 20 se transoforma en 0x00000014 y se guarda en $t0. Luego, 
# en $t1 se guarda el resultado de 0x00000014 + 0x00000005, quedando en $t1 el valor
# 0x00000019. Finalmente, se realiza el or lógico, donde los números 0x00000019 y 
# 0x00000002 se transforman en binario, quedando 11001 y 10 respectivamente. Se 
# realiza la operación y en decimal da el número  27 y  en $t1 queda guardado el mismo 
# número pero en hexadecimal, quedando registrado el valor 0x0000001b y finalizando
# el programa.
#Por lo tanto, al finalizar el programa, los valores de #t0 y #t1 son:
#t0 = 0x00000014
#t1 = 0x0000001b