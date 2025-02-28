+++
title = "WEB 3D Point Clouds Comparison"
date = 2025-02-27
template = "page.html"
+++

<table class="header">
 <tr>
    <td colspan="2" rowspan="2" class="width-auto">
      <h1 class="title">WEB 3D Point Clouds Comparison</h1>
      <span class="subtitle">WebGL vs P5.js vs Three.js</span>
    </td>
    <th>Version</th>
    <td class="width-auto">v0.0.4</td>
  </tr>
  <tr>
    <th>Updated</th>
    <td class="width-auto"><time style="white-space: pre;">2025-02-27</time></td>
  </tr>
  <tr>
    <th class="width-min">Author</th>
    <td class="width-auto"><a href="https://mainpage.me/catblue44"><cite> Juan José Peña Becerra
</cite></a></td>
    <th class="width-auto">License</th>
    <td>MIT</td>
  </tr>
</table>

##### COMPARISON OF 3D POINT CLOUD DEVELOPMENT: WEBGL, P5.js, AND THREE.js
<p>In recent years, integrating 3D point clouds in web applications has become more accessible thanks to several JavaScript libraries and APIs. This post compares three approaches—pure WebGL, P5.js, and Three.js—by examining their performance, ease of use, and suitability for interactive experiences.</p>

#### METHODOLOGY
<p>A series of tests were conducted to benchmark each tool, considering factors such as rendering speed and responsiveness. You can explore the interactive sketches for each tool using the links below:
</p>
<hr>

<div class="button-container" style="display: flex; gap: 10px; justify-content: center; align-items: center;">
    <a href="https://editor.p5js.org/jujpenabe/full/XV3EawH1b" target="_blank">
      <button style="margin: 0;">P5.js</button>
    </a>
    <a href="https://editor.p5js.org/jujpenabe/full/PzAJrh2a3" target="_blank">
      <button style="margin: 0;">Three.js</button>
    </a>
    <a href="https://editor.p5js.org/jujpenabe/full/O9QSgf-IM" target="_blank">
      <button style="margin: 0;">WebGL</button>
    </a>
</div>

#### FRAMEWORK OVERVIEW 
#### P5.JS

Is a higher-level library that simplifies graphics development. Although it’s primarily designed for 2D graphics, its 3D capabilities (including point clouds) make it a good choice for rapid prototyping and educational projects. However, handling very complex 3D data might be challenging.
#### THREE.JS

Is one of the most popular 3D libraries for the web. It abstracts much of the low-level complexity of WebGL while still providing extensive functionality. This balance makes Three.js suitable for production-level applications, especially when integrating modern web technologies like VR or AR.
#### PURE WEBGL

Provides low-level access to the GPU for 3D graphics, offering complete control over the rendering pipeline. This flexibility comes at the cost of increased complexity and the need for a strong background in 3D graphics programming.
<hr>

#### BENCHMARK RESULT

{{ image(src="/../blog/comparison.jpg", alt="comparison", style="border-radius: 8px;") }}

#### P5.JS

{{ image(src="/../blog/P5_500.jpeg", alt="500 points", style="border-radius: 8px;") }}

<table>
<thead>
<tr>
<th class="width-auto">
Points
</th>
<th class="width-auto">
FPS
</th>
</tr>
</thead>
<tbody>
  <tr>
    <td>
      500
    </td>
    <td>
        87.86
    </td>
  </tr>
  <tr>
    <td>
      1000
    </td>
    <td>
        54.01
    </td>
  </tr>
  <tr>
    <td>
      1500
    </td>
    <td>
       39.93.00
    </td>
  </tr>
    <tr>
     <td>2000</td>
     <td>
        31.19
     </td>
   </tr>
   <tr>
      <td> 2500</td>
      <td>
        25.80
      </td>
    </tr>
  </tbody>
</table>

#### THREE.JS

{{ image(src="/../blog/Three_1000.jpeg", alt="threejs", style="border-radius: 8px;") }}
<table>
  <thead>
  <tr>
  <th class="width-auto">
  Points
  </th>
  <th class="width-auto">
  FPS
  </th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      1000
    </td>
    <td>
       133.67
    </td>
  </tr>
  <tr>
    <td>
      1500
    </td>
    <td>
      57.92
    </td>
  </tr>
 <tr>
    <td>
      2000
    </td>
    <td>
        84.7
    </td>
  </tr>
   <tr>
      <td> 2500</td>
      <td>
          55.62
      </td>
    </tr>
   </tr>
</tbody>
</table>
 
#### WEBGL

{{ image(src="/../blog/WebGL_1000.jpeg", alt="webgl", style="border-radius: 8px;") }}
<table>
  <thead>
    <tr>
      <th class="width-auto">
        Points
      </th>
      <th class="width-auto">
        FPS
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        1,000
      </td>
      <td>
          144
      </td>
    </tr>
    <tr>
      <td>
        10,000
      </td>
      <td>
          148
      </td>
    </tr>

   <tr>
      <td>
        100,000
      </td>
      <td>
           147
      </td>
    </tr>
     <tr>
        <td> 1,000,000</td>
        <td>
            55
        </td>
      </tr>
      <tr>
       <td>10,000,000</td>
       <td>
            5
       </td>
     </tr>
  </tbody>
</table>
<hr>

#### CONCLUSIONS

<p>
Each tool offers distinct advantages:
<ul class="incremental">
<li> Pure WebGL provides maximum flexibility at the cost of complexity.</li>
<li> P5.js is great for rapid prototyping and simpler projects.</li>
<li> Three.js strikes an effective balance, making it ideal for robust, production-ready applications.</li>
</ul>
</p>
