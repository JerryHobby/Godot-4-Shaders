shader_type canvas_item;
#include "colors.gdshaderinc"

const float SPEED = 5.0;

group_uniforms FlashSpeed;
	uniform float flash_speed:hint_range(0.0, 25.0, 0.5) = 2.0;
	uniform float stretch_speed:hint_range(0.0, 25.0, 0.5) = 4.0;

group_uniforms;

group_uniforms FlashColors;
	uniform vec4 color_1:source_color = vec4(WHITE, 1.0);
	uniform vec4 color_2:source_color = vec4(BLACK, 1.0);
group_uniforms;


void vertex() {
	float RANGE = abs(VERTEX.x) * 0.1;
	float speed = TIME * stretch_speed;

	if (stretch_speed > 0.0) {
		vec2 circle;
		circle = vec2(cos(speed) * RANGE, sin(speed) * RANGE);
		circle = vec2(cos(speed) * RANGE, 0.0);

		if (VERTEX.y < 0.0 && VERTEX.x < 0.0) {
			VERTEX += circle;
		}
		if (VERTEX.y > 0.0 && VERTEX.x > 0.0) {
			VERTEX += circle  * -1.0;
		}
		if (VERTEX.y > 0.0 && VERTEX.x < 0.0) {
			VERTEX += circle ;
		}
		if (VERTEX.y < 0.0 && VERTEX.x > 0.0) {
			VERTEX += circle * -1.0;
		}
	}
}


void fragment() {

	float speed = TIME * flash_speed;

	float mix_pct = (cos(speed)+1.0)/2.0;
	vec4 mix_color = mix(color_1, color_2, mix_pct);

	if (flash_speed > 0.0) {
		COLOR = texture(TEXTURE, UV) * mix_color;
	}
}


//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
