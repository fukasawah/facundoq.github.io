# escriba un programa que imprima a  en la pantalla 
#alfanumerica


.data
a: .double 125.1234

dir_control: .word32 0x10000
dir_data: .word32 0x10008

.code
lwu $s0,dir_control($0)
lwu $s1,dir_data($0)

daddi $t0,$0,3 # t0 tiene el codigo de imprimir un entero

ld $t1,a($0) #cargo en un registro el valor a imprimir

sd $t1,0($s1)# cargo en data el valor a imprimir
sd $t0,0($s0) # mando el codigo 1 a CONTROL para que se haga la impresion


halt