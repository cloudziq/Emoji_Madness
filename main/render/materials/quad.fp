varying mediump vec4 position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D tex1;
uniform lowp sampler2D tex2;
uniform lowp vec4 tint;

void main()
{
	// Pre-multiply alpha since all runtime textures already are
	//lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
	vec4 a = texture2D(tex1, var_texcoord0.xy);
	//gl_FragColor = texture2D(tex1, var_texcoord0.xy);// * tint_pm;
	vec4 b = texture2D(tex2, var_texcoord0.xy);
	gl_FragColor = b * a;
}
