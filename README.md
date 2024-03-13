# Tarea1_vlsi
## Parte 1
Para la obtención de la resistencia efectiva de los transistores a utilizar se utiliza la siguiente formula:

$$R = \frac{V_{DD}}{I_H + I_L}$$

En este caso $I_H$ es aproximada a la corriente de saturación e $I_L$ a la corriente de corte, por lo que la ecuación queda:
$$R_n = \frac{1.8V}{(475\mu A + 3pA)/\mu m} = 3789\Omega*\mu m$$ 
$$R_p = \frac{1.8V}{(170\mu A + 3pA)/\mu m} = 10588.24\Omega*\mu m$$
Y para eliminar los $\mu m$:
$$R_n=\frac{3789\mu m}{1*10^6\mu m}=3.789m\Omega$$
$$R_p=\frac{10588.24\mu m}{1*10^6\mu m}=10.588m\Omega$$
Luego se procede con la obtención de la capacitancia de compuerta. A pesar de tener una dependencia no lineal con el voltaje, se puede utilizar un valor promedio. Para un transistor de tamaño mínimo se puede estimar como $1fF/\mu m$ de ancho. Por lo que para nuestro transistor NMOS de $0.22\mu m$ la capacitancia sería de $0.22fF$ y el PMOS de $0.44\mu m$ sería $0.44fF$.<br>
Por último se obtiene la constante $RC$ para el proceso. Lo cual se ve de la siguiente manera:
$$RC_n=3.789m\Omega *0.22fF = 833.58*10^{-21}$$
$$RC_p=10.588m\Omega *0.44fF = 4.66*10^{-18}$$

## Parte 2
Para el diseño de un inversor de tamaño mínimo con margen de ruido simetríco se requiere de que $\beta_p=\beta_n$ que se logra obtener al mantener una relación PMOS/NMOS de $2/1$ del ancho del transistor. Las dimensiones de los transistores serían los siguientes:

|  Dimensión  |  NMOS  |  PMOS  |
|  :---  |  ---:  |  :---:  | 
|  W |  220 nm  |  440 nm  | 
|  L  |  180 nm  |  180 nm  | 

Siguiendo las reglas de escalabilidad y tomando $\lambda=25n$ se tiene las siguientes razones:
$$\frac{W_n}{L_n}=\frac{8.8}{7.2}\lambda$$
$$\frac{W_p}{L_p}=\frac{17.6}{7.2}\lambda$$

Para obtener el voltaje de umbral del inversor se debe tomar en cuenta la relación $\beta_p/\beta_n=r$. En este caso la relación $r$.  Al observar la curva característica, se observa que los transistores van a estar en la zona de saturación para transistores canal largo. Por lo que la ecuación se vería de la siguiente manera:
$$V_{inv}=\frac{V_{DD}+V_{tp}+V_{tn}\sqrt{\frac{1}{r}}}{1+\sqrt{\frac{1}{r}}}$$
$$V_{inv}=\frac{1.8-0.6+0.45}{2}=0.825V$$

Se puede calcular la diferencia de los tiempos de propagación para diferentes fanouts mantienendo la relación $P/N = 2/1$ y siguiendo la formula para los valores de $h=3$ y $h=4$: 
$$\Delta t_{pdr}= \frac{3}{2}R_pC = 6.99*10^{-18}s$$
$$\Delta t_{pdf}=3R_nC=2.5*10^{-18}s$$
