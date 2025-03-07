+++
title = "The Rosetta Code"
date = 2025-03-07
template = "page.html"
+++

#### The Rosetta Stone

Just as the Rosetta Stone served as a bridge between ancient languages, enabling the deciphering of Egyptian hieroglyphs by providing parallel texts in Greek and Demotic scripts, modern 3D web frameworks like p5.js, Three.js, and WebGL act as intermediaries, translating complex graphics programming into more accessible forms for developers. These tools, built atop the WebGL API, have empowered developers to create intricate visual experiences on the web.

![rosetta stone](https://sketchplanations.com/_next/image?url=https%3A%2F%2Fimages.prismic.io%2Fsketchplanations%2Fec6046c3-6ec9-46ae-9625-53f2c12376bc_129239825802.jpg%3Fauto%3Dcompress%2Cformat&w=1080&q=75)

Similarly, the 3D Web frameworks described here can be "translated" between each other. Is importan to note that basically, most of the current 3D web frameworks are based on the WebGL API, which is a low-level API that exposes the OpenGL ES 3.0 API. So in a degree it is just a matter of preference to choose which framework to use. or at least it should be demonstrated in the next benchmark post. In this case we are comparing p5.JS, Three.js and WebGL.  


##### COMPARISON OF 3D POINT CLOUD DEVELOPMENT: WEBGL, P5.js, AND THREE.js
<p>In recent years, integrating 3D point clouds in web applications has become more accessible thanks to several JavaScript libraries and [APIs](https://en.wikipedia.org/wiki/API). This post compares three approaches—pure WebGL, P5.js, and Three.js—by examining their performance, ease of use, and suitability for interactive experiences.</p>

#### FRAMEWORK OVERVIEW 
#### P5.JS

[p5.js](https://github.com/processing/p5.js) is a client-side JS platform that empowers artists, designers, students, and anyone to learn to code and express themselves creatively on the web. It is based on the core principles of Processing.

Is a higher-level library that simplifies graphics development. Although it’s primarily designed for 2D graphics, its 3D capabilities (including point clouds) make it a good choice for rapid prototyping and educational projects. However, handling very complex 3D data might be challenging.

P5 is actively developed and maintained by a vibrant community of developers, and its ecosystem of libraries and plugins is constantly evolving.
#### THREE.JS

Is one of the most popular 3D libraries for the web. It abstracts much of the low-level complexity of WebGL while still providing extensive functionality. This balance makes Three.js suitable for production-level applications, especially when integrating modern web technologies like VR or AR.
#### PURE WEBGL

Provides low-level access to the GPU for 3D graphics, offering complete control over the rendering pipeline. This flexibility comes at the cost of increased complexity and the need for a strong background in 3D graphics programming.

WebGL is based on OpenGL ES, a low-level API for rendering 2D and 3D graphics on the web. It's a low-level API, which means that it's not as easy to use as higher-level APIs like Three.js or P5.js. The latest version of WebGL, WebGL 2.0 exposes the OpenGL ES 3.0 API.


#### METHODOLOGY
<p>The experimet consist of the intantiaton of 3D point clouds in the browser using the Three.js, P5.js and WebGL libraries. the purpose is to check the accessibility of the three frameworks, their performance and ease of use to create interactive experiences.
</p>
<hr>

You can test the interactive sketches for each tool using the links below:
<div class="button-container" style="display: flex; gap: 10px; justify-content: center; align-items: center;">
    <a href="https://aijs-code-editor-user-content.web.app/Jt0mD7CW0uQHkOj4GzIUIHLkc4h2/Projects/P5_WebCloud/index.html" target="_blank">
      <button style="margin: 0;">P5.js</button>
    </a>
    <a href="https://editor.p5js.org/jujpenabe/full/PzAJrh2a3" target="_blank">
      <button style="margin: 0;">Three.js</button>
    </a>
    <a href="https://editor.p5js.org/jujpenabe/full/O9QSgf-IM" target="_blank">
      <button style="margin: 0;">WebGL</button>
    </a>
</div>
