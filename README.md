# Infinite-Map-OBJ-Example
This is an example obj in my .OBJ Parser for the [Infinite Map project](https://github.com/Mee12345/gmod-infinite-map)
You NEED the Infinite Map base in order to use this!

This is NOT meant to be used as an on-the-fly object loader. It is meant as a MAP loader.

Example of what the loader can do:
[Assetto Corsa Map](https://youtu.be/79IPC8lSkK4)

Please keep in mind:
- Make sure to optimize your .objs! Don't expect to be able to instantly port any model without lag.
- Visual .objs can be optimized by simpily having less objects in the scene. Just make sure the triangle count per object is under 32,768.
- Visual .objs with more than 32k tris per surface will break!
- Make sure each visual object has a material or it will combine models!
- Physical objs can be optimized just by making the tri count less.
- Triangles larger than 1 chunk (10,000 hammer units) and smaller than 10 hammer units will not have collision.
- Large and detailed OBJ files may take a while to load, just give it time!
- Due to a memory leak related to vectors (garry moment) the OBJ loader takes a lot of ram. If you occur crashing I suggest switching to the 64 Bit branch as it is more stable and allows more ram to be allocated to the game.
- Make sure to name your files to something unique or it may conflict with someone elses model!

# Making your own map .obj in 10 steps
1. Make a model using a modeling program. I used blender but things such as 3DS max work too.
![image](https://user-images.githubusercontent.com/73554599/215301141-5d4da68a-14f8-4e8d-92df-9f102879bdcb.png)

2. Create an empty hammer map. Feel free to use the hammer map used in this example.
![image](https://user-images.githubusercontent.com/73554599/215302472-2bb7d490-4d66-494a-8b6a-a31e85d98608.png)

3. Create a new addon with this structure
![image](https://user-images.githubusercontent.com/73554599/215301349-45ef6cd4-69c2-4216-9cba-b5f3b814e285.png)

4. Export your model AS AN OBJ to myaddon/maps/ (Just put it in the same file as the .bsp)

5. Make sure you export __with__ materials!
![image](https://user-images.githubusercontent.com/73554599/215304471-a9278c18-ed9d-4ef4-b4ac-5b63fbe8f4e5.png)

6. You should now have a .obj and .mtl file in (myaddon)/maps/
![image](https://user-images.githubusercontent.com/73554599/215302510-d89a1c33-01ca-454d-8fa4-688ebc212d78.png)

Now put your materials in (myaddon)/materials/infmap/ 
![image](https://user-images.githubusercontent.com/73554599/215345787-43e28adf-e8fa-4a70-9ee2-185ebeacadf7.png)

If the textures were exported in a folder (such as ./textures) just put that folder in (myaddon)/materials/infmap/

7. Because of workshop restrictions it is impossible to upload a .obj and .mtl file. In order to combat this, turn the .obj and .mtl files into AIN files.
I am aware this is kind of cursed, but I am at the mercy of gmpublisher.exe.
If you do not wish to do this step, feel free to skip it. Just know that in order to upload to the workshop, you must change all .objs and .mtls into .AINs
![image](https://user-images.githubusercontent.com/73554599/215301558-9bff9bd4-1087-4bee-8e9c-220b17b90908.png)

8. Create a new LUA file in (myaddon)/lua/infmap/(mapname)/
![image](https://user-images.githubusercontent.com/73554599/215302627-7b801cc5-cc74-4e88-a8cf-e55fa1772c30.png)

9. Use the InfMap.parse_obj function (see image for code)
![image](https://user-images.githubusercontent.com/73554599/215302636-573d6d5d-56f1-4535-9919-9c5b6d2429a4.png)

The shaders can be exchanged such as "nocull" or "alphatest" instead of "nocull alphatest"

10. Start gmod and enter your new amazing map!
![image](https://user-images.githubusercontent.com/73554599/215302667-6ea76fca-6394-4197-94bb-66fadbc46ff8.png)
