Cubed's Unity Shaders
============

A compilation of custom shaders for Unity3D.  
You can get the latest release [here](https://github.com/cubedparadox/Cubeds-Unity-Shaders/releases)  
Currently built for Unity 5.6.3p1  
Installation: Add it to your unity assets (drag and drop in the package, or go to "Assets/Import Package/Custom Package" at the top and from there you can find it in your shaders drop down list automatically.

NOTE: These shaders are meant for use on avatars and do not support lightmapping.

## Shaders
* Flat Lit Toon  
![alt text](Media/Flat_Lit_Toon.png) ![alt text](Media/Flat_Lit_Toon__Inspector.png)
  * Looks like a unlit shader under good neutral lighting, but actually responds to full ambient and realtime lighting color, intensity and shadow. Single Pass with geometry shader outline, may not work on all platforms.
* Flat Lit Toon Lite  
  * Lightweight version of Flat Lit Toon, without the heavy geometry pass. Should work well on most systems.
* Flat Lit Toon Lite Double Sided  
  * Double sided varient of the lite shader.
* Unlit Shadowed  
![alt text](Media/Unlit_Shadowed_thumb.png)
  * A simple unlit texture shader, has inputs for main color tint and shadow color tint.
* Flat Lit Toon Rainbow  
![alt text](Media/Flat_Lit_Toon_Rainbow.gif)
  * An (old) version of 'Flat Lit Toon' with a cycling rainbow color. Hue and Saturation are exposed, Supports color mask.
* Flat Lit Toon Distance Fade  
![alt text](Media/Flat_Lit_Toon_Distance_Fade.gif)
  * An (old) version of 'Flat Lit Toon' that fades in based on proximity to camera. Uses noise to dither the fade effect into an alpha cutout. Dither amount, color tint, and color mask are exposed.
* Simple Gradient Sky  
![alt text](Media/Simple_Gradient_Sky__thumb.png)
  * A simple procedural skybox that fades from a sky color to a horizon color

## Notes
Project contains the following assets:  
* <a href="http://acegikmo.com/shaderforge/">ShaderForge</a> (gitignored)
* <a href="http://unity-chan.com/">SD UnityChan</a>
* <a href="http://saadkhawaja.com/instant-hi-res-screenshot/">Instant Screenshot</a>



