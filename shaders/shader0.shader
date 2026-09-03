attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_texcoord;
varying vec4 v_color;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_color = in_Colour;
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;
varying vec4 v_color;

uniform float time;

void main()
{

    vec2 texCoord = v_texcoord;
        //texCoord.x = texCoord.x+cos(texCoord.y*10.0+time*0.05)*0.1;
        texCoord.x = texCoord.x+cos(texCoord.y*10.0+time*0.075)*0.05;        

  gl_FragColor = texture2D(gm_BaseTexture, texCoord);

}
