# Infinite-Map-OBJ-Example
This is an example obj in my .OBJ Parser for the [Infinite Map project](https://github.com/Mee12345/gmod-infinite-map)
Download and extract to your gmod addons folder to play it
This is NOT meant to be used as an on-the-fly object loader. It is meant as a MAP loader.

Please keep in mind:
- Make sure to optimize your .objs! Don't expect to be able to instantly port any model without lag.
- Visual objs can be optimized by combining surfaces while making sure the triangle count is UNDER 10,000.
- Objs with more than 10k tris per surface will break!
- Physical objs can be optimized just by making the tri count less.
- Triangles larger than 1 chunk will not have collision.
- Large and detailed OBJ files may take a while to load, just give it time!

# Making your own map .obj in 10 steps
1. Make a model using a modeling program. I used blender but things such as 3DS max work too.
![image](https://user-images.githubusercontent.com/73554599/215301141-5d4da68a-14f8-4e8d-92df-9f102879bdcb.png)

2. Create an empty hammer map. Feel free to use the hammer map used in this example.
![image](https://user-images.githubusercontent.com/73554599/215302472-2bb7d490-4d66-494a-8b6a-a31e85d98608.png)

3. Create a new addon with this structure
![image](https://user-images.githubusercontent.com/73554599/215301349-45ef6cd4-69c2-4216-9cba-b5f3b814e285.png)

4. Export your model AS AN OBJ to myaddon/maps/ (Just put it in the same file as the .bsp)

5. Make sure you export __with__ materials!
![image](https://user-images.githubusercontent.com/73554599/215302490-c0f85558-52c7-4224-8a2d-84fb2e060b42.png)

6. You should now have a .obj and .mtl file in (myaddon)/maps/
![image](https://user-images.githubusercontent.com/73554599/215302510-d89a1c33-01ca-454d-8fa4-688ebc212d78.png)

7. Because of workshop restrictions it is impossible to upload a .obj and .mtl file, in order to combat this turn the .obj and .mtl files into AIN files
I am aware this is kind of cursed, but I am at the mercy of gmpublisher.exe
If you do not wish to do this step, feel free to skip it. Just know that in order to upload to the workshop, you must change all .objs and .mtls into .AINs
![image](https://user-images.githubusercontent.com/73554599/215301558-9bff9bd4-1087-4bee-8e9c-220b17b90908.png)

8. Create a new LUA file in (myaddon)/lua/infmap/(mapname)/
![image](https://user-images.githubusercontent.com/73554599/215302627-7b801cc5-cc74-4e88-a8cf-e55fa1772c30.png)

9. Use the InfMap.parse_obj function (see linked image for more documentation)
![image](https://user-images.githubusercontent.com/73554599/215302636-573d6d5d-56f1-4535-9919-9c5b6d2429a4.png)

The shaders can be exchanged such as "nocull" or "alphatest" instead of "nocull alphatest"

10. Start gmod and enter your new amazing map!
![image](https://user-images.githubusercontent.com/73554599/215302667-6ea76fca-6394-4197-94bb-66fadbc46ff8.png)
