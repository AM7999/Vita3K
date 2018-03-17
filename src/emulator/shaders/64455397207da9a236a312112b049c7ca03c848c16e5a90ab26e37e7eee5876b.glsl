// https://github.com/Rinnegatamante/vitaQuake/blob/master/shaders/modulate_fog_f.cg
#version 120

uniform sampler2D tex;
uniform vec4 vColor;
varying vec2 vTexcoord;
varying float vFog;

void main()
{
    vec4 c = texture2D(tex, vTexcoord) * vColor;
    c.rgb = c.rgb * vFog;
    gl_FragColor = c;
}
