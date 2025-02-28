set terminal pngcairo size 1280,720 enhanced font "JetBrains Mono,14" background "#000000"
set output 'comparison.jpg'

# Configuración de los ejes y la cuadrícula
set logscale x 10
set grid lt 1 lc rgb "#444444"

# Títulos y etiquetas con colores y tamaños ajustados
set title "Performance Comparison: p5.js vs Three.js vs WebGL" textcolor rgb "#D3D3D3"
set xlabel "Number of Points" textcolor rgb "#D3D3D3" font ",14"
set ylabel "Frames Per Second (FPS)" textcolor rgb "#D3D3D3" font ",14"
set key textcolor rgb "#D3D3D3" outside bottom

set xtics textcolor rgb "#D3D3D3" font ",14"
set ytics textcolor rgb "#D3D3D3" font ",14"

# Definición de color para los ejes y la cuadrícula
# set grid xtics ytics lc rgb "#444444"
# set axis y color rgb "#D3D3D3"

# Definición de estilos de línea para cada framework
set style line 1 lc rgb "#FF69B4" lw 3 pt 7   # p5.js: rojo-rosado
set style line 2 lc rgb "#00FF00" lw 3 pt 7   # Three.js: verde
set style line 3 lc rgb "#0000FF" lw 3 pt 7   # WebGL: azul

# Gráfica de los datos con los estilos definidos
plot "p5js.txt" using 1:2 with linespoints ls 1 title "p5.js", \
     "threejs.txt" using 1:2 with linespoints ls 2 title "Three.js", \
     "webgl.txt" using 1:2 with linespoints ls 3 title "WebGL"
