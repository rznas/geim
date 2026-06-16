<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of RGBA colors.

This structure is used throughout Unity to pass colors around. Each color component is a floating point value with a range from 0 to 1.

Components (r,g,b) define a color in RGB color space. Alpha component (a) defines transparency - alpha of one is completely opaque, alpha of zero is completely transparent.

```csharp
using UnityEngine;public class ColorExample : MonoBehaviour
{
    void Start()
    {
        // Initialize with RGB
        Color redColor = new Color(1f, 0f, 0f);        // Initialize with RGBA
        Color blueWithAlpha = new Color(0f, 0f, 1f, 0.5f);        // Initialize with hex
        ColorUtility.TryParseHtmlString("#00FF00", out Color greenFromHex);        // Initialize with HSV
        float hue = 0.6f;
        float saturation = 0.9f;
        float value = 0.7f;
        Color fromHSV = Color.HSVToRGB(hue, saturation, value);        // Use some of the preset colors
        Color cornflower = Color.cornflowerBlue;
        Color lawn = Color.lawnGreen;
        Color lemon = Color.lemonChiffon;
        Color violet = Color.violet;        // Create complementary color
        Color complementary = new Color(
            1f - redColor.r,
            1f - redColor.g,
            1f - redColor.b
        );
        // Lerp between colors
        Color lerpedColor = Color.Lerp(redColor, blueWithAlpha, 0.5f);        // Darken color
        Color darkercolor = lerpedColor * 0.8f;        // Lighten color
        Color lighterColor = lerpedColor + Color.white * 0.2f;
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| aliceBlue | Color Preset of RGBA(0.9411765f, 0.9725491f, 1f, 1f) |
| antiqueWhite | Color Preset of RGBA(0.9803922f, 0.9215687f, 0.8431373f, 1f) |
| aquamarine | Color Preset of RGBA(0.4980392f, 1f, 0.8313726f, 1f) |
| azure | Color Preset of RGBA(0.9411765f, 1f, 1f, 1f) |
| beige | Color Preset of RGBA(0.9607844f, 0.9607844f, 0.8627452f, 1f) |
| bisque | Color Preset of RGBA(1f, 0.8941177f, 0.7686275f, 1f) |
| black | Color Preset of RGBA(0f, 0f, 0f, 1f) |
| blanchedAlmond | Color Preset of RGBA(1f, 0.9215687f, 0.8039216f, 1f) |
| blue | Color Preset of RGBA(0f, 0f, 1f, 1f) |
| blueViolet | Color Preset of RGBA(0.5411765f, 0.1686275f, 0.8862746f, 1f) |
| brown | Color Preset of RGBA(0.6470588f, 0.1647059f, 0.1647059f, 1f) |
| burlywood | Color Preset of RGBA(0.8705883f, 0.7215686f, 0.5294118f, 1f) |
| cadetBlue | Color Preset of RGBA(0.372549f, 0.6196079f, 0.627451f, 1f) |
| chartreuse | Color Preset of RGBA(0.4980392f, 1f, 0f, 1f) |
| chocolate | Color Preset of RGBA(0.8235295f, 0.4117647f, 0.1176471f, 1f) |
| clear | Color Preset of RGBA(0f, 0f, 0f, 0f) |
| coral | Color Preset of RGBA(1f, 0.4980392f, 0.3137255f, 1f) |
| cornflowerBlue | Color Preset of RGBA(0.3921569f, 0.5843138f, 0.9294118f, 1f) |
| cornsilk | Color Preset of RGBA(1f, 0.9725491f, 0.8627452f, 1f) |
| crimson | Color Preset of RGBA(0.8627452f, 0.07843138f, 0.2352941f, 1f) |
| cyan | Color Preset of RGBA(0f, 1f, 1f, 1f) |
| darkBlue | Color Preset of RGBA(0f, 0f, 0.5450981f, 1f) |
| darkCyan | Color Preset of RGBA(0f, 0.5450981f, 0.5450981f, 1f) |
| darkGoldenRod | Color Preset of RGBA(0.7215686f, 0.5254902f, 0.04313726f, 1f) |
| darkGray | Color Preset of RGBA(0.6627451f, 0.6627451f, 0.6627451f, 1f) |
| darkGreen | Color Preset of RGBA(0f, 0.3921569f, 0f, 1f) |
| darkKhaki | Color Preset of RGBA(0.7411765f, 0.7176471f, 0.4196079f, 1f) |
| darkMagenta | Color Preset of RGBA(0.5450981f, 0f, 0.5450981f, 1f) |
| darkOliveGreen | Color Preset of RGBA(0.3333333f, 0.4196079f, 0.1843137f, 1f) |
| darkOrange | Color Preset of RGBA(1f, 0.5490196f, 0f, 1f) |
| darkOrchid | Color Preset of RGBA(0.6f, 0.1960784f, 0.8000001f, 1f) |
| darkRed | Color Preset of RGBA(0.5450981f, 0f, 0f, 1f) |
| darkSalmon | Color Preset of RGBA(0.9137256f, 0.5882353f, 0.4784314f, 1f) |
| darkSeaGreen | Color Preset of RGBA(0.5607843f, 0.7372549f, 0.5607843f, 1f) |
| darkSlateBlue | Color Preset of RGBA(0.282353f, 0.2392157f, 0.5450981f, 1f) |
| darkSlateGray | Color Preset of RGBA(0.1843137f, 0.3098039f, 0.3098039f, 1f) |
| darkTurquoise | Color Preset of RGBA(0f, 0.8078432f, 0.8196079f, 1f) |
| darkViolet | Color Preset of RGBA(0.5803922f, 0f, 0.8274511f, 1f) |
| deepPink | Color Preset of RGBA(1f, 0.07843138f, 0.5764706f, 1f) |
| deepSkyBlue | Color Preset of RGBA(0f, 0.7490196f, 1f, 1f) |
| dimGray | Color Preset of RGBA(0.4117647f, 0.4117647f, 0.4117647f, 1f) |
| dodgerBlue | Color Preset of RGBA(0.1176471f, 0.5647059f, 1f, 1f) |
| firebrick | Color Preset of RGBA(0.6980392f, 0.1333333f, 0.1333333f, 1f) |
| floralWhite | Color Preset of RGBA(1f, 0.9803922f, 0.9411765f, 1f) |
| forestGreen | Color Preset of RGBA(0.1333333f, 0.5450981f, 0.1333333f, 1f) |
| gainsboro | Color Preset of RGBA(0.8627452f, 0.8627452f, 0.8627452f, 1f) |
| ghostWhite | Color Preset of RGBA(0.9725491f, 0.9725491f, 1f, 1f) |
| gold | Color Preset of RGBA(1f, 0.8431373f, 0f, 1f) |
| goldenRod | Color Preset of RGBA(0.854902f, 0.6470588f, 0.1254902f, 1f) |
| gray | Color Preset of RGBA(0.5f, 0.5f, 0.5f, 1f) |
| gray1 | Color Preset of RGBA(0.1f, 0.1f, 0.1f, 1f) |
| gray2 | Color Preset of RGBA(0.2f, 0.2f, 0.2f, 1f) |
| gray3 | Color Preset of RGBA(0.3f, 0.3f, 0.3f, 1f) |
| gray4 | Color Preset of RGBA(0.4f, 0.4f, 0.4f, 1f) |
| gray5 | Color Preset of RGBA(0.5f, 0.5f, 0.5f, 1f) |
| gray6 | Color Preset of RGBA(0.6f, 0.6f, 0.6f, 1f) |
| gray7 | Color Preset of RGBA(0.7f, 0.7f, 0.7f, 1f) |
| gray8 | Color Preset of RGBA(0.8f, 0.8f, 0.8f, 1f) |
| gray9 | Color Preset of RGBA(0.9f, 0.9f, 0.9f, 1f) |
| green | Color Preset of RGBA(0f, 1f, 0f, 1f) |
| greenYellow | Color Preset of RGBA(0.6784314f, 1f, 0.1843137f, 1f) |
| grey | Color Preset of RGBA(0.5f, 0.5f, 0.5f, 1f) |
| honeydew | Color Preset of RGBA(0.9411765f, 1f, 0.9411765f, 1f) |
| hotPink | Color Preset of RGBA(1f, 0.4117647f, 0.7058824f, 1f) |
| indianRed | Color Preset of RGBA(0.8039216f, 0.3607843f, 0.3607843f, 1f) |
| indigo | Color Preset of RGBA(0.2941177f, 0f, 0.509804f, 1f) |
| ivory | Color Preset of RGBA(1f, 1f, 0.9411765f, 1f) |
| khaki | Color Preset of RGBA(0.9411765f, 0.9019608f, 0.5490196f, 1f) |
| lavender | Color Preset of RGBA(0.9019608f, 0.9019608f, 0.9803922f, 1f) |
| lavenderBlush | Color Preset of RGBA(1f, 0.9411765f, 0.9607844f, 1f) |
| lawnGreen | Color Preset of RGBA(0.4862745f, 0.9882354f, 0f, 1f) |
| lemonChiffon | Color Preset of RGBA(1f, 0.9803922f, 0.8039216f, 1f) |
| lightBlue | Color Preset of RGBA(0.6784314f, 0.8470589f, 0.9019608f, 1f) |
| lightCoral | Color Preset of RGBA(0.9411765f, 0.5019608f, 0.5019608f, 1f) |
| lightCyan | Color Preset of RGBA(0.8784314f, 1f, 1f, 1f) |
| lightGoldenRod | Color Preset of RGBA(0.9333334f, 0.8666667f, 0.509804f, 1f) |
| lightGoldenRodYellow | Color Preset of RGBA(0.9803922f, 0.9803922f, 0.8235295f, 1f) |
| lightGray | Color Preset of RGBA(0.8274511f, 0.8274511f, 0.8274511f, 1f) |
| lightGreen | Color Preset of RGBA(0.5647059f, 0.9333334f, 0.5647059f, 1f) |
| lightPink | Color Preset of RGBA(1f, 0.7137255f, 0.7568628f, 1f) |
| lightSalmon | Color Preset of RGBA(1f, 0.627451f, 0.4784314f, 1f) |
| lightSeaGreen | Color Preset of RGBA(0.1254902f, 0.6980392f, 0.6666667f, 1f) |
| lightSkyBlue | Color Preset of RGBA(0.5294118f, 0.8078432f, 0.9803922f, 1f) |
| lightSlateBlue | Color Preset of RGBA(0.5176471f, 0.4392157f, 1f, 1f) |
| lightSlateGray | Color Preset of RGBA(0.4666667f, 0.5333334f, 0.6f, 1f) |
| lightSteelBlue | Color Preset of RGBA(0.6901961f, 0.7686275f, 0.8705883f, 1f) |
| lightYellow | Color Preset of RGBA(1f, 1f, 0.8784314f, 1f) |
| limeGreen | Color Preset of RGBA(0.1960784f, 0.8039216f, 0.1960784f, 1f) |
| linen | Color Preset of RGBA(0.9803922f, 0.9411765f, 0.9019608f, 1f) |
| magenta | Color Preset of RGBA(1f, 0f, 1f, 1f) |
| maroon | Color Preset of RGBA(0.6901961f, 0.1882353f, 0.3764706f, 1f) |
| mediumAquamarine | Color Preset of RGBA(0.4f, 0.8039216f, 0.6666667f, 1f) |
| mediumBlue | Color Preset of RGBA(0f, 0f, 0.8039216f, 1f) |
| mediumOrchid | Color Preset of RGBA(0.7294118f, 0.3333333f, 0.8274511f, 1f) |
| mediumPurple | Color Preset of RGBA(0.5764706f, 0.4392157f, 0.8588236f, 1f) |
| mediumSeaGreen | Color Preset of RGBA(0.2352941f, 0.7019608f, 0.4431373f, 1f) |
| mediumSlateBlue | Color Preset of RGBA(0.482353f, 0.4078432f, 0.9333334f, 1f) |
| mediumSpringGreen | Color Preset of RGBA(0f, 0.9803922f, 0.6039216f, 1f) |
| mediumTurquoise | Color Preset of RGBA(0.282353f, 0.8196079f, 0.8000001f, 1f) |
| mediumVioletRed | Color Preset of RGBA(0.7803922f, 0.08235294f, 0.5215687f, 1f) |
| midnightBlue | Color Preset of RGBA(0.09803922f, 0.09803922f, 0.4392157f, 1f) |
| mintCream | Color Preset of RGBA(0.9607844f, 1f, 0.9803922f, 1f) |
| mistyRose | Color Preset of RGBA(1f, 0.8941177f, 0.882353f, 1f) |
| moccasin | Color Preset of RGBA(1f, 0.8941177f, 0.7098039f, 1f) |
| navajoWhite | Color Preset of RGBA(1f, 0.8705883f, 0.6784314f, 1f) |
| navyBlue | Color Preset of RGBA(0f, 0f, 0.5019608f, 1f) |
| oldLace | Color Preset of RGBA(0.9921569f, 0.9607844f, 0.9019608f, 1f) |
| olive | Color Preset of RGBA(0.5019608f, 0.5019608f, 0f, 1f) |
| oliveDrab | Color Preset of RGBA(0.4196079f, 0.5568628f, 0.1372549f, 1f) |
| orange | Color Preset of RGBA(1f, 0.6470588f, 0f, 1f) |
| orangeRed | Color Preset of RGBA(1f, 0.2705882f, 0f, 1f) |
| orchid | Color Preset of RGBA(0.854902f, 0.4392157f, 0.8392158f, 1f) |
| paleGoldenRod | Color Preset of RGBA(0.9333334f, 0.909804f, 0.6666667f, 1f) |
| paleGreen | Color Preset of RGBA(0.5960785f, 0.9843138f, 0.5960785f, 1f) |
| paleTurquoise | Color Preset of RGBA(0.6862745f, 0.9333334f, 0.9333334f, 1f) |
| paleVioletRed | Color Preset of RGBA(0.8588236f, 0.4392157f, 0.5764706f, 1f) |
| papayaWhip | Color Preset of RGBA(1f, 0.937255f, 0.8352942f, 1f) |
| peachPuff | Color Preset of RGBA(1f, 0.854902f, 0.7254902f, 1f) |
| peru | Color Preset of RGBA(0.8039216f, 0.5215687f, 0.2470588f, 1f) |
| pink | Color Preset of RGBA(1f, 0.7529413f, 0.7960785f, 1f) |
| plum | Color Preset of RGBA(0.8666667f, 0.627451f, 0.8666667f, 1f) |
| powderBlue | Color Preset of RGBA(0.6901961f, 0.8784314f, 0.9019608f, 1f) |
| purple | Color Preset of RGBA(0.627451f, 0.1254902f, 0.9411765f, 1f) |
| rebeccaPurple | Color Preset of RGBA(0.4f, 0.2f, 0.6f, 1f) |
| red | Color Preset of RGBA(1f, 0f, 0f, 1f) |
| rosyBrown | Color Preset of RGBA(0.7372549f, 0.5607843f, 0.5607843f, 1f) |
| royalBlue | Color Preset of RGBA(0.254902f, 0.4117647f, 0.882353f, 1f) |
| saddleBrown | Color Preset of RGBA(0.5450981f, 0.2705882f, 0.07450981f, 1f) |
| salmon | Color Preset of RGBA(0.9803922f, 0.5019608f, 0.4470589f, 1f) |
| sandyBrown | Color Preset of RGBA(0.9568628f, 0.6431373f, 0.3764706f, 1f) |
| seaGreen | Color Preset of RGBA(0.1803922f, 0.5450981f, 0.3411765f, 1f) |
| seashell | Color Preset of RGBA(1f, 0.9607844f, 0.9333334f, 1f) |
| sienna | Color Preset of RGBA(0.627451f, 0.3215686f, 0.1764706f, 1f) |
| silver | Color Preset of RGBA(0.7529413f, 0.7529413f, 0.7529413f, 1f) |
| skyBlue | Color Preset of RGBA(0.5294118f, 0.8078432f, 0.9215687f, 1f) |
| slateBlue | Color Preset of RGBA(0.4156863f, 0.3529412f, 0.8039216f, 1f) |
| slateGray | Color Preset of RGBA(0.4392157f, 0.5019608f, 0.5647059f, 1f) |
| snow | Color Preset of RGBA(1f, 0.9803922f, 0.9803922f, 1f) |
| softBlue | Color Preset of RGBA(0.1882353f, 0.682353f, 0.7490196f, 1f) |
| softGreen | Color Preset of RGBA(0.5490196f, 0.7882354f, 0.1411765f, 1f) |
| softRed | Color Preset of RGBA(0.8627452f, 0.1921569f, 0.1960784f, 1f) |
| softYellow | Color Preset of RGBA(1f, 0.9333334f, 0.5490196f, 1f) |
| springGreen | Color Preset of RGBA(0f, 1f, 0.4980392f, 1f) |
| steelBlue | Color Preset of RGBA(0.2745098f, 0.509804f, 0.7058824f, 1f) |
| tan | Color Preset of RGBA(0.8235295f, 0.7058824f, 0.5490196f, 1f) |
| teal | Color Preset of RGBA(0f, 0.5019608f, 0.5019608f, 1f) |
| thistle | Color Preset of RGBA(0.8470589f, 0.7490196f, 0.8470589f, 1f) |
| tomato | Color Preset of RGBA(1f, 0.3882353f, 0.2784314f, 1f) |
| turquoise | Color Preset of RGBA(0.2509804f, 0.8784314f, 0.8156863f, 1f) |
| violet | Color Preset of RGBA(0.9333334f, 0.509804f, 0.9333334f, 1f) |
| violetRed | Color Preset of RGBA(0.8156863f, 0.1254902f, 0.5647059f, 1f) |
| wheat | Color Preset of RGBA(0.9607844f, 0.8705883f, 0.7019608f, 1f) |
| white | Color Preset of RGBA(1f, 1f, 1f, 1f) |
| whiteSmoke | Color Preset of RGBA(0.9607844f, 0.9607844f, 0.9607844f, 1f) |
| yellow | Color Preset of RGBA(1f, 0.92f, 0.016f, 1f). |
| yellowGreen | Color Preset of RGBA(0.6039216f, 0.8039216f, 0.1960784f, 1f) |
| yellowNice | Color Preset of RGBA(1f, 0.92f, 0.016f, 1f) |

### Properties

| Property | Description |
| --- | --- |
| a | Alpha component of the color (0 is transparent, 1 is opaque). |
| b | Blue component of the color. |
| g | Green component of the color. |
| gamma | A version of the color that has had the gamma curve applied. |
| grayscale | The grayscale value of the color. (Read Only) |
| linear | A color value in linear space converted from an sRGB value. |
| maxColorComponent | Returns the maximum color component value: Max(r,g,b). |
| r | Red component of the color. |
| this[int] | Access the r, g, b,a components using [0], [1], [2], [3] respectively. |

### Constructors

| Constructor | Description |
| --- | --- |
| Color | Constructs a new Color with given r,g,b,a components. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Returns true if the given color is exactly equal to this color, i.e. if the red, green, blue, and alpha values are exactly the same. |
| GetHashCode | Returns the hash code for this color. This lets you use colors as keys in hash tables. |
| ToString | Returns a formatted string of this color. |

### Static Methods

| Method | Description |
| --- | --- |
| HSVToRGB | Creates an RGB colour from HSV input. |
| Lerp | Linearly interpolates between colors a and b using the interpolation ratio t. |
| LerpUnclamped | Linearly interpolates between colors a and b using the interpolation ratio t. |
| RGBToHSV | Calculates the hue, saturation and value of an RGB input color. |

### Operators

| Operator | Description |
| --- | --- |
| Color | Colors can be implicitly converted to and from Vector4. |
| operator - | Subtracts color b from color a. Each component is subtracted separately. |
| operator != | Returns true if colors are not equal. |
| operator * | Multiplies two colors together. Each component is multiplied separately. |
| operator / | Divides color a by the float b. Each color component is scaled separately. |
| operator + | Adds two colors together. Each component is added separately. |
| operator == | Returns true if two Colors are approximately equal. |
| Vector4 | Colors can be implicitly converted to and from Vector4. |
