varying mediump vec4 position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D tex1;
uniform lowp sampler2D tex2;
uniform lowp sampler2D tex3;
uniform lowp vec4 mult;

void main()
{
	vec4 a = texture2D(tex1, var_texcoord0.xy);
	vec4 b = texture2D(tex2, var_texcoord0.xy) + mult;
	vec4 c = texture2D(tex3, var_texcoord0.xy);
	gl_FragColor = a * b + c;
}
