+++
title = "P5 retained mode vs Threejs"
date = 2025-02-10
template = "page.html"
+++

<table class="header">
 <tr>
    <td colspan="2" rowspan="2" class="width-auto">
      <h2 class="title">P5 retained mode vs Three.js</h2>
      <span class="subtitle">A WebGL benchmark of popular 3D web frameworks</span>
    </td>
    <th>Version</th>
    <td class="width-min">v0.1.0</td>
  </tr>
  <tr>
    <th>Updated</th>
    <td class="width-min"><time style="white-space: pre;">2025-03-10</time></td>
  </tr>
  <tr>
    <th class="width-min">Author</th>
    <td class="width-auto"><a href="https://mainpage.me/catblue44"><cite> Juan José Peña Becerra
</cite></a></td>
    <th class="width-min">License</th>
    <td>MIT</td>
  </tr>
</table>


#### METHODOLOGY
<p>To compare different rendering methods, a series of tests were conducted to evaluate performance in terms of rendering speed and responsiveness. Each test instantiated the same point cloud, represented as ellipses with 32 points by default. The only difference between the experiments was the rendering approach used:

- p5.js - Immediate Mode: Each frame, all points are redrawn from scratch using procedural rendering.
- p5.js - Retained Mode: Points are stored as objects and only updated when necessary, reducing redundant computations.
- Three.js - BufferGeometry: Points are stored in a single geometry buffer, minimizing draw calls and improving performance compared to immediate mode.
- Three.js - InstancedMesh: Instead of creating individual objects, a single mesh instance is reused multiple times, further optimizing rendering by leveraging GPU instancing.

Each test was executed under the same conditions, measuring frame rate, CPU usage, and responsiveness to user interaction.
</p>Explore the interactive sketches for each tool using the links below:
<hr>

<div class="button-container" style="display: flex; gap: 10px; justify-content: center; align-items: center;">
    <a href="https://editor.p5js.org/jujpenabe/full/-HC2R1oYt" target="_blank">
      <button style="margin: 0;">P5 immediate mode</button>
    </a>
    <a href="https://editor.p5js.org/jujpenabe/full/PzAJrh2a3" target="_blank">
      <button style="margin: 0;">P5 retained mode</button>
    </a>
    <a href="https://editor.p5js.org/jujpenabe/full/uaWCrVlPH" target="_blank">
      <button style="margin: 0;">Three.js Buffer geometry</button>
    </a>
    <a href="https://editor.p5js.org/jujpenabe/full/F10ioEqie" target="_blank">
      <button style="margin: 0;">Three.js Instanced Mesh</button>
    </a>
</div>

<hr>

#### P5.JS IMMEDIATE VS RETAINED MODE

P5.js API provides two modes for rendering:  <a href="https://p5js.org/contribute/webgl_mode_architecture/#rendering-shapes-immediate-and-retained-modes." target="_blank">Immediate and Retained Modes</a>.

p5.js - Immediate Mode: In this approach, each frame is redrawn from scratch, meaning all shapes are re-rendered in every rendering cycle. This method is straightforward to implement but can become inefficient as scene complexity increases.

In the draw() method we use beginShape and endShape to create a series of vertices that define the shape of the object.
  
```javascript
// Using immediate mode
beginShape(TRIANGLE_FAN);

// Center point
vertex(0, 0, 0);

// Draw points around ellipse
const segments = 32;
for (let i = 0; i <= segments; i++) {
  const angle = map(i, 0, segments, 0, TWO_PI);
  const x = cos(angle) * 20;
  const y = sin(angle) * 10;
  vertex(x, y, 0);
}

endShape();
```

p5.js - Retained Mode using p5.Geometry: While p5.js doesn't offer a native retained mode, you can simulate this behavior using the p5.Geometry class. This class allows you to create and store complex 3D geometries that can be rendered more efficiently. By constructing the geometry once and then drawing it as needed, you reduce redundant drawing operations, enhancing performance in complex scenes.

In the setup() method, we create a p5.Geometry object and store it in a variable called `ellipseGeom`.

```javascript 
let ellipseGeom;

function setup() {

// Rest of setup() code

// Create retained mode geometry (just once)
  ellipseGeom = buildEllipseGeometry();
}
```

We build the geometry similar to how we build a shape in immediate mode. and return it as a p5.Geometry object.

```javascript
function buildEllipseGeometry() {
  const ellipse = new p5.Geometry();

  // Center point
  ellipse.vertices.push(new p5.Vector(0, 0, 0));

  // Draw points around ellipse
  const segments = 32;
  for (let i = 0; i <= segments; i++) {
    const angle = map(i, 0, segments, 0, TWO_PI);
    const x = cos(angle) * 20;
    const y = sin(angle) * 10;
    geometry.vertices.push(new p5.Vector(x, y, 0));
  }
  
  for (let i = 1; i <= segments; i++) {
    ellipse.faces.push([0, i, i + 1]);
  }
  return ellipse;
}
```

In the draw() method, we use the p5.Geometry object to draw the ellipse.

```javascript
function draw() {
  background(0);
  
  // Draw the ellipse
  model(ellipseGeom);
}
```


#### BENCHMARK RESULT

{{ image(src="/../blog/p5ImmediateVsRetained.jpg", alt="comparison", style="border-radius: 8px;") }}

#### Threejs Buffer Geometry vs Instanced Mesh

Three.js is more especialized in rendering 3D scenes. It offers a wide range of features and tools for creating and manipulating 3D objects. It provides different methods for rendering complex 3D scenes, including BufferGeometry, InstancedMesh, and InstancedBufferGeometry.

BufferGeometry is a low-level API that provides direct access to GPU buffers. It offers fine-grained control over vertex data and can be used to create complex 3D scenes.

#### BENCHMARK RESULT

{{ image(src="/../blog/threejsBufferGeometryVsInstancedMesh.jpg", alt="comparison", style="border-radius: 8px;") }}

#### P5.js retained mode vs three.js buffer geometry

p5 retained mode uses p5.Geometry to simulate retained mode. You build the geometry once and reuse it for rendering, which reduces redundant drawing. However, it doesn't leverage full GPU-level optimizations.

A native, highly optimized solution that uses typed arrays to store vertex data. It offers better performance and fine-grained control for complex 3D scenes.
#### BENCHMARK RESULT

{{ image(src="/../blog/p5RetainedModeVSThreejsBufferGeometry.jpg", alt="comparison", style="border-radius: 8px;") }}

#### Future Work

- investigate why p5.js's retained mode using p5.Geometry underperforms compared to Three.js's BufferGeometry. By benchmarking these methods, we can identify specific inefficiencies in the retained mode approach. Additionally, exploring alternative techniques such as instancedMesh and instancedBufferGeometry may offer further performance improvements. Evaluating frameworks that leverage WebGPU could also uncover new strategies for optimizing complex 3D rendering workflows.

#### CONCLUSIONS

<p>
Each tool offers distinct advantages:
<ul class="incremental">
<li> P5.js is great for rapid prototyping and simpler projects. But it doesn't leverage full GPU-level optimizations.</li>
<li> Three.js strikes an effective balance, making it ideal for robust, production-ready WEB applications.</li>
</ul>
</p>
