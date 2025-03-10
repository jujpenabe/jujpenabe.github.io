set terminal pngcairo size 1280,720 enhanced font "JetBrains Mono,14" background "#000000"
set output 'threejsBufferGeometryVsInstancedMesh.jpg'

# Configuración de los ejes y la cuadrícula
set logscale x 2
set grid lt 1 lc rgb "#444444"

set title "Performance Comparison: three.js Buffer Geometry vs Instanced Mesh" font ",20" textcolor rgb "#D3D3D3"
set xlabel "Number of Points" textcolor rgb "#D3D3D3" font ",14"
set ylabel "Frames Per Second (FPS)" textcolor rgb "#D3D3D3" font ",14"
set key textcolor rgb "#D3D3D3" outside bottom

set xtics textcolor rgb "#D3D3D3" font ",14"
set ytics textcolor rgb "#D3D3D3" font ",14"

# Definición de color para los ejes y la cuadrícula
# set grid xtics ytics lc rgb "#444444"
# set axis y color rgb "#D3D3D3"

# Definición de estilos de línea para cada framework
set style line 1 lc rgb "#0044FF" lw 3 pt 7   
set style line 2 lc rgb "#00FF00" lw 3 pt 7  

# Gráfica de los datos con los estilos definidos
plot "threejs_immediate.txt" using 1:2 with linespoints ls 1 title "three.js Buffer Geometry", \
     "threejs_retained.txt" using 1:2 with linespoints ls 2 title "three.js Instanced Mesh", \
     # "webgl.txt" using 1:2 with linespoints ls 3 title "WebGL"
