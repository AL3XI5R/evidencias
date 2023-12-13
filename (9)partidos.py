import math
import time

equipos = {
    'Colombia ': [33, 0, 0, 0, 0, 0, 0, 0, 0],
    'Argentina': [13, 0, 0, 0, 0, 0, 0, 0, 0],
    'Bolivia  ': [15, 0, 0, 0, 0, 0, 0, 0, 0],
    'Brasil   ': [28, 0, 0, 0, 0, 0, 0, 0, 0],
    'Chile    ': [45, 0, 0, 0, 0, 0, 0, 0, 0],
    'Ecuador  ': [73, 0, 0, 0, 0, 0, 0, 0, 0],
    'Paraguay ': [101, 0, 0, 0, 0, 0, 0, 0, 0],
    'Perú     ': [6, 0, 0, 0, 0, 0, 0, 0, 0],
    'Uruguay  ': [11, 0, 0, 0, 0, 0, 0, 0, 0],
    'Venezuela': [7, 0, 0, 0, 0, 0, 0, 0, 0]
}


print("""
        Estos son los equipos actuales:""")
for nombre, codigo in equipos.items():
    print(f'''        -{nombre}   Código: {codigo[0]}''')


listaEquipos = list(equipos.keys())
cantidadEquipos = len(listaEquipos)
print("")

for partido in range(1, len(listaEquipos)):
    equipoLocal = listaEquipos[partido - 1]
    equipoVisitante = listaEquipos[partido]
    print(f'''
          
        Del partido número {partido} ({equipoLocal.strip()} vs {equipoVisitante.strip()})
          ''')
    golesFavorLocal = int(input(f'        Ingrese la cantidad de goles a favor para {equipoLocal}: '))
    golesFavorVisitante = int(input(f'        Ingrese la cantidad de goles a favor para {equipoVisitante}: '))

    equipos[equipoLocal][5] += golesFavorLocal
    equipos[equipoLocal][6] += golesFavorVisitante
    equipos[equipoVisitante][6] += golesFavorLocal
    equipos[equipoVisitante][5] += golesFavorVisitante

    equipos[equipoLocal][1] = equipos[equipoLocal][1] + 1
    equipos[equipoVisitante][1] = equipos[equipoVisitante][1] + 1
    
    if golesFavorLocal > golesFavorVisitante:
        equipos[equipoLocal][2] += 1
        equipos[equipoVisitante][4] += 1
    elif golesFavorLocal < golesFavorVisitante:
        equipos[equipoVisitante][2] += 1
        equipos[equipoLocal][4] += 1
    elif golesFavorLocal == golesFavorVisitante:
        equipos[equipoVisitante][3] += 1
        equipos[equipoLocal][3] += 1

    equipos[equipoVisitante][7] = (equipos[equipoVisitante][2] * 3) + equipos[equipoVisitante][3]
    equipos[equipoLocal][7] = (equipos[equipoLocal][2] * 3) + equipos[equipoLocal][3]

    equipos[equipoVisitante][8] = equipos[equipoVisitante][5] - equipos[equipoVisitante][6]
    equipos[equipoLocal][8] = equipos[equipoLocal][5] - equipos[equipoLocal][6]

equipoFinal = listaEquipos[-1]
equipoPrimero = listaEquipos[0]
print(f'''
        Del partido número {cantidadEquipos} ({equipoFinal.strip()} vs {equipoPrimero.strip()})''')

golesFavorLocal = int(input(f'        Ingrese la cantidad de goles a favor para {equipoFinal}: '))
golesFavorVisitante = int(input(f'        Ingrese la cantidad de goles a favor para {equipoPrimero}: '))

listaEquipoFinal = equipos[equipoFinal]
listaEquipoPrimero = equipos[equipoPrimero]

listaEquipoFinal[5] += golesFavorLocal
listaEquipoPrimero[6] += golesFavorVisitante

listaEquipoFinal[6] += golesFavorLocal
listaEquipoPrimero[5] += golesFavorVisitante

listaEquipoFinal[1] += 1
listaEquipoPrimero[1] += 1

if golesFavorLocal > golesFavorVisitante:
    listaEquipoFinal[2] += 1
    listaEquipoPrimero[4] += 1
elif golesFavorLocal < golesFavorVisitante:
    listaEquipoPrimero[2] += 1
    listaEquipoFinal[4] += 1
elif golesFavorLocal == golesFavorVisitante:
    listaEquipoPrimero[3] += 1
    listaEquipoFinal[3] += 1

listaEquipoPrimero[7] = (listaEquipoPrimero[2] * 3) + listaEquipoPrimero[3]
listaEquipoFinal[7] = (listaEquipoFinal[2] * 3) + listaEquipoFinal[3]

listaEquipoPrimero[8] = listaEquipoPrimero[5] - listaEquipoPrimero[6]
listaEquipoFinal[8] = listaEquipoFinal[5] - listaEquipoFinal[6]


def leerConfirmacion():
    confirmacion = int(input(f'''
        Desea organizar los paises de mayor a menor según su puntaje? (0/1): '''))
    
    if confirmacion == 0:
        for nombre, lista in equipos.items():
            print(f'''
        --------{nombre.strip()}------
        
        Código de equipo: {lista[0]}
        
        Partidos Jugados: {lista[1]}
        Partidos Ganados: {lista[2]}
        Partidos Empatados: {lista[3]}
        Partidos Perdidos: {lista[4]}
        
        Goles realizados a Favor: {lista[5]}
        Goles realizados en contra: {lista[6]}
        Gol Diferencia: {lista[8]}

        PUNTOS TOTALES: {lista[7]}''')
            time.sleep(5)

    elif confirmacion == 1:
        equiposOrdenados = dict(sorted(equipos.items(), key=lambda x: x[1][-2], reverse=True))
        for nombre, lista in equiposOrdenados.items():
            if math.copysign(1, lista[8]) == -1:
                mensaje = "(Al equipo le realizaron más goles de los que él hizo)"
            else:
                mensaje = ""
            print(f'''
        --------{nombre.strip()}------
        
        Código de equipo: {lista[0]}
        
        Partidos Jugados: {lista[1]}
        Partidos Ganados: {lista[2]}
        Partidos Empatados: {lista[3]}
        Partidos Perdidos: {lista[4]}
        
        Goles realizados a Favor: {lista[5]}
        Goles realizados en contra: {lista[6]}
        Gol Diferencia: {lista[8]} {mensaje}

        PUNTOS TOTALES: {lista[7]}''')
            time.sleep(5)
    else:
        print("        Ingrese una opción válida (0/1)")
        leerConfirmacion()

leerConfirmacion()    






