<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-imageContentsHash.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The hash value of the Texture.

Note: The hash is an Editor-only property.

The hash value is a 128-bit number computed in such a way that even slightly different Textures have different hash values. The principal use of the hash in this case is to detect when the Texture has changed. Unity updates the hash when changing or rendering into a Texture. Likewise, you must calculate a new hash when modifying the Texture contents so that Unity knows when the Texture changes. Changing the hash lets the Global Illumination system know that it needs to recalculate maps in the Scene that are affected by the Texture.

For regular Textures, Unity first computes the hash when the Texture is imported into the Editor, and updates the hash after light and reflections are "baked" into the Texture. If you subsequently render into a Texture which is used as an input for the Global Illumination system (such as sky, light or reflection probes), then you must update the Texture hash yourself.

Using the pixel values of the Texture to calculate the hash might be inefficient or impossible. A more efficient way of doing this is to hash the input parameters of the code you used to create the Texture. Whatever method you use, you must ensure that the resulting hash is different for different Textures, and the same for the identical Textures.

Additional resources: Hash128.Compute.
