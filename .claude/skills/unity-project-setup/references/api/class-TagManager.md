<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-TagManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Tags and Layers

The **Tags and Layers** settings (main menu: **Edit** > **Project Settings**, then select the **Tags and Layers** category) allows you to set up Tags, Sorting Layers and Layers.

## Tags

**Tags** are marker values that you can use to identify objects in your Project (see documentation on Tags for further details). To add a new Tag, click the plus button (+) at the bottom-right of the list, and name your new Tag.

Note that once you have named a Tag, you cannot rename it. To remove a Tag, click on it and then click the minus (-) button at the bottom-right of the list.

## Sorting Layers

Sorting Layers are used in conjunction with Sprite graphics in the 2D system. *Sorting* refers to the overlay order of different Sprites.

To add and remove Sorting Layers, use the plus and minus (+/-) buttons at the bottom-right of the list. To change their order, drag the handle at the left-hand side of each Layer item.

## Layers

Use Layers throughout the Unity Editor as a way to create groups of objects that share particular characteristics (see documentation on Layers for further details). Use Layers primarily to restrict operations such as raycasting or rendering, so that they are only applied to the relevant groups of objects. Layers marked as **Builtin Layer** are default layers used by Unity, which you cannot edit. You can customise layers marked as **User Layer**.

To customise **User Layers**, type a custom name into the text field for each one you wish to use. Note that you can’t add to the number of Layers but, unlike Tags, you can rename Layers.

## Rendering Layers

If your project uses the Universal **Render Pipeline** (URP) or the High Definition Render Pipeline (HDRP), this section lists the names of Rendering Layers. Use Rendering Layers to configure which lights or decals affect which **GameObjects**. Refer to the following for more information:

- Rendering Layers in URP
- Rendering Layers in HDRP

The Built-In Rendering Pipeline doesn’t support Rendering Layers.

TagManager
