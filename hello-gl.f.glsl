#version 110

uniform vec4  ball[10];
uniform int   numballs;
uniform float time;

varying vec2 texcoord;

float sqr(float x)  { return x*x;   }
float cube(float x) { return x*x*x; }

void main()
{
    float d = 0.0;
    for (int i = 0; i < numballs; i++)
    {
        float p = time * 0.001;
        vec2 pos = vec2(sin(p * ball[i].z) * ball[i].x, cos(p * ball[i].a) * ball[i].y);
        d += pow(0.1 / distance(texcoord, pos) + 0.0001, 1.5);
    }
    gl_FragColor = vec4(d, d, d, 1.0);
}
