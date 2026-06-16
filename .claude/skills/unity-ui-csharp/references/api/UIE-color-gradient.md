<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-color-gradient.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Color gradients

You can apply gradients of up to four colors to text. When you add a color gradient, TextCore applies gradient colors to each character in a text string.

Use the `<gradient>` rich text tags to apply color gradient presets to text objects. A gradient preset overrides the text’s local gradient type and colors.

## Create a color gradient preset

To create a color gradient with one or more colors, and place it in a specific folder, follow these steps:

1. From the menu, select **Assets** > **create** > **Text Core** > **Color Gradient** to add a new color gradient preset.
2. In the Color Gradient’s **Inspector** window, select a color mode from the dropdown menu:
  - **Single**: Applies a single color.
  - **Horizontal Gradient**: Applies two colors and produces a side-to-side transition between them on each character.
  - **Vertical Gradient**: Applies two colors and produces an up-and-down transition between the two on each character.
  - **Four Corners Gradient:** Applies four colors. Each color radiates from its assigned corner of each character.
3. Set the gradient colors. The number of colors available in the **Colors** field depends on the gradient mode you choose. Each swatch corresponds to the color’s origin on a character **sprite**.
4. Place the color gradient asset into the path set for the **Color Gradient Presets** in the Panel Text Setting asset.

## Apply color gradient presets

To apply a color gradient preset to text, reference the color gradient by name as `<gradient="name-of-the-color-gradient">Your text</gradient>`. If you apply the color gradient like this, the color of the text is multiplied by the object’s current vertex colors.

To apply the pure gradient to a selection of text, use a `<color>` tag to reset the color to white. For example:

```
<color=white><gradient="Light to Dark Green - Vertical">Light to Dark Green gradient</gradient></color>
```

## Color gradient mode examples

The following shows color gradient examples for each mode.

### Single color

A single-color gradient.

### Horizontal gradients

A side-to-side gradient with two colors.

### Vertical gradients

An up-and-down gradient with two colors.

### Four corner gradients

A gradient with four colors. Each color radiates from one corner. This is the most versatile gradient type. You can vary some colors and keep others identical to create different kinds of gradients.

This example shows three corners with one color and the fourth with a different color.

This example shows pairs of adjacent corners with the same color to create horizontal or vertical gradients.

This example shows pairs of diagonally opposite corners the same color to create diagonal gradients.

This example creates horizontal and vertical three-color gradients with a dominant color at one end and a transition between two colors at the other.

This example gives two diagonally opposite corners the same color and the other two corners different colors to create a diagonal stripe three-color gradient.

## Additional resources

- Rich text tags
- Supported rich text tags
- Style sheets assets
- Sprites assets
