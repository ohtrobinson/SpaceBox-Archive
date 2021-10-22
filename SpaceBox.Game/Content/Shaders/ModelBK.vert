﻿in vec3 aPosition;
in vec2 aTexCoords;
in vec3 aNormal;

out vec2 frag_texCoords;
out vec3 frag_normal;
out vec3 frag_position;

uniform mat4 uModel;
uniform mat4 uView;
uniform mat4 uProjection;

void main() 
{
    gl_Position = vec4(aPosition, 1.0) * uModel * uView * uProjection;
    frag_position = vec3(vec4(aPosition, 1.0) * uModel);
    frag_normal = aNormal * mat3(transpose(inverse(uModel)));
    frag_texCoords = aTexCoords;
}
