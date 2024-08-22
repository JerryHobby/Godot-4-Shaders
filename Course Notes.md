https://docs.godotengine.org/en/stable/tutorials/shaders/introduction_to_shaders.html
https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/shading_language.html#

## Shaders
	- Run in the GPU
	- Run in parallel
	- Run in isolation - they don't know what other parallel processes are doing
	- Programmed using the Godot Shader Language.  This language is 
		syntactically more like C#, using {} and ; and return types before 
		the function names.


### Vertex Shaders
VERTEX Shaders - Run once on each vertex.

Each 3D model is made of a multitude of triangles. Each corner of each 
triangle is a vertex.

	- vertex - specific points in space - the corners of the triangles.
	- edges - the lines connecting two vertices
	- faces - the space enclosed by three edges of the triangle
	- polygons - the shape composed of one or more faces
	- surfaces - the color/texture for each polygon
	- model - the combination of all the polygons/surfaces making the shapes

### Fragment Shaders
FRAGMENT Shaders - Run once per fragment. Basically the same as a pixel.

It is used to convert a color for each fragment.

### Shader Types (shader_type)
	- canvas_item - 2D shader
	- spatial - 3D shader

### Shader Data Types
	- https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/shading_language.html
	- void
	- bool, bvec2, bvec3, bvec4, bool[5]
	- int, ivec2, ivec3, ivec4, int[5]   (x, y, z, w) or (r, g, b, a) (s, t, p, q)
	- uint, uvec2, uvec3, uvec4, uint[5]
	- float, vec2, vec3, vec4, float[5]
	- mat2, mat3, mat4 
	- sampler2D, sampler2DArray
	- isampler2D, isampler2DArray
	- usampler2D, usampler2DArray
	- samplerCube, samplerCubeArray
	- const
	
### Swizzling
	vec4 tst4 = vec4(1.0, 2.0, 3.0, 4.0);
	vec2 tst2 = tst4.xw;
	
### SIN/COS

> https://graphtoy.com/




	
