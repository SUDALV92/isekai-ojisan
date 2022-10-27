//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() 
{
     lowp vec4 texture = texture2D( gm_BaseTexture, v_vTexcoord );
     float minColor = min( texture.g, texture.b );
     float mixValue = texture.r - minColor;
     gl_FragColor = vec4( v_vColour.rgb * mixValue + vec3( minColor ), texture.a * v_vColour.a );
}