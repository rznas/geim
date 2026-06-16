<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-Texture3D-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to 3D textures

A 3D texture is a bitmap image that contains information in three dimensions rather than the standard two. 3D textures are commonly used to simulate volumetric effects such as fog or smoke, to approximate a volumetric 3D **mesh**, or to store animated textures and blend between them.

The source texture files for **2D Array** and **3D** Textures are divided into cells; these textures are called flipbook textures. When Unity imports flipbook textures, it places the contents of each cell into its own 2D array layer or 3D texture slice.

For example, an image with 8x8 cells of smoke effect frames looks like this as a default 2D texture:

But when you correctly import is as a 3D texture with 8 Columns and 8 Rows, it looks like this:
