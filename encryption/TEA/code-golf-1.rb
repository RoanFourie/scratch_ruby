f=->v,w,a,b,c,d{s=0;m=2**32
32.times{s+=0x9e3779b9;s%=m;v+=w*16+a^w+s^w/32+b;v%=m;w+=v*16+c^v+s^v/32+d;w%=m;}
[v,w]}

k = [0, 0, 0, 0]

x = "hello"

f[*x, *k]
