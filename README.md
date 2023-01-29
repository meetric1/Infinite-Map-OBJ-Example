# Infinite-Map-OBJ-Example

This is an example obj in my .OBJ Parser for the [Infinite Map project](https://github.com/Mee12345/gmod-infinite-map)
Download and extract to your gmod addons folder to play it
This is NOT meant to be used as an on-the-fly object loader. It is meant as a MAP loader.

# Making your own map .obj
1. Make a model using a modeling program. I used blender but things such as 3DS max work too.![image](https://user-images.githubusercontent.com/73554599/215301141-5d4da68a-14f8-4e8d-92df-9f102879bdcb.png)
2. Create an empty hammer map. Feel free to use the hammer map used in this example.
3. Create a new addon with this structure![image](https://user-images.githubusercontent.com/73554599/215301349-45ef6cd4-69c2-4216-9cba-b5f3b814e285.png)
4. Export your model AS AN OBJ to myaddon/maps/ (Just put it in the same file as the .bsp)
5. Make sure you export __with__ materials!
6. You should now have a .obj and .mtl file in (myaddon)/maps/
7. Because of workshop restrictions it is impossible to upload a .obj and .mtl file, in order to combat this turn the .obj and .mtl files into AIN files![image](https://user-images.githubusercontent.com/73554599/215301558-9bff9bd4-1087-4bee-8e9c-220b17b90908.png)
I am aware this is kind of cursed, but I am at the mercy of gmpublisher.exe
If you do not wish to do this step, feel free to skip it. Just know that in order to upload to the workshop, you must change all .objs and .mtls into .AINs
8. Create a new LUA file in (myaddon)/lua/infmap/(mapname)/
9. Use the InfMap.parse_obj function
