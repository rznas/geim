<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IStyle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This interface provides access to a VisualElement inline style data.

Reading properties from this object will read from the inline style data for this element. To read the style data computed for the element use IStyle interface. Writing to a property will mask the value coming from USS with the provided value however other properties will still match the values from USS.

### Properties

| Property | Description |
| --- | --- |
| alignContent | Alignment of the whole area of children on the cross axis if they span over multiple lines in this container. |
| alignItems | Alignment of children on the cross axis of this container. |
| alignSelf | Similar to align-items, but only for this specific element. |
| aspectRatio | Sets a preferred aspect ratio for the box, which will be used in the calculation of auto sizes and some other layout functions. |
| backgroundColor | Background color to paint in the element's box. |
| backgroundImage | Background image to paint in the element's box. |
| backgroundPositionX | Background image x position value. |
| backgroundPositionY | Background image y position value. |
| backgroundRepeat | Background image repeat value. |
| backgroundSize | Background image size value. Transitions are fully supported only when using size in pixels or percentages, such as pixel-to-pixel or percentage-to-percentage transitions. |
| borderBottomColor | Color of the element's bottom border. |
| borderBottomLeftRadius | The radius of the bottom-left corner when a rounded rectangle is drawn in the element's box. |
| borderBottomRightRadius | The radius of the bottom-right corner when a rounded rectangle is drawn in the element's box. |
| borderBottomWidth | Space reserved for the bottom edge of the border during the layout phase. |
| borderLeftColor | Color of the element's left border. |
| borderLeftWidth | Space reserved for the left edge of the border during the layout phase. |
| borderRightColor | Color of the element's right border. |
| borderRightWidth | Space reserved for the right edge of the border during the layout phase. |
| borderTopColor | Color of the element's top border. |
| borderTopLeftRadius | The radius of the top-left corner when a rounded rectangle is drawn in the element's box. |
| borderTopRightRadius | The radius of the top-right corner when a rounded rectangle is drawn in the element's box. |
| borderTopWidth | Space reserved for the top edge of the border during the layout phase. |
| bottom | Bottom distance from the element's box during layout. |
| color | Color to use when drawing the text of an element. |
| cursor | Mouse cursor to display when the mouse pointer is over an element. |
| display | Defines how an element is displayed in the layout. |
| filter | Filter effects to apply to the element. |
| flexBasis | Initial main size of a flex item, on the main flex axis. The final layout might be smaller or larger, according to the flex shrinking and growing determined by the other flex properties. |
| flexDirection | Direction of the main axis to layout children in a container. |
| flexGrow | Specifies how the item will grow relative to the rest of the flexible items inside the same container. |
| flexShrink | Specifies how the item will shrink relative to the rest of the flexible items inside the same container. |
| flexWrap | Placement of children over multiple lines if not enough space is available in this container. |
| fontSize | Font size to draw the element's text, specified in point size. |
| height | Fixed height of an element for the layout. |
| justifyContent | Justification of children on the main axis of this container. |
| left | Left distance from the element's box during layout. |
| letterSpacing | Increases or decreases the space between characters. |
| marginBottom | Space reserved for the bottom edge of the margin during the layout phase. |
| marginLeft | Space reserved for the left edge of the margin during the layout phase. |
| marginRight | Space reserved for the right edge of the margin during the layout phase. |
| marginTop | Space reserved for the top edge of the margin during the layout phase. |
| maxHeight | Maximum height for an element, when it is flexible or measures its own size. |
| maxWidth | Maximum width for an element, when it is flexible or measures its own size. |
| minHeight | Minimum height for an element, when it is flexible or measures its own size. |
| minWidth | Minimum width for an element, when it is flexible or measures its own size. |
| opacity | Specifies the transparency of an element and of its children. |
| overflow | How a container behaves if its content overflows its own box. |
| paddingBottom | Space reserved for the bottom edge of the padding during the layout phase. |
| paddingLeft | Space reserved for the left edge of the padding during the layout phase. |
| paddingRight | Space reserved for the right edge of the padding during the layout phase. |
| paddingTop | Space reserved for the top edge of the padding during the layout phase. |
| position | Element's positioning in its parent container. |
| right | Right distance from the element's box during layout. |
| rotate | A rotation transformation. |
| scale | A scaling transformation. |
| textOverflow | The element's text overflow mode. |
| textShadow | Drop shadow of the text. |
| top | Top distance from the element's box during layout. |
| transformOrigin | The transformation origin is the point around which a transformation is applied. |
| transitionDelay | Duration to wait before starting a property's transition effect when its value changes. |
| transitionDuration | Time a transition animation should take to complete. |
| transitionProperty | Properties to which a transition effect should be applied. |
| transitionTimingFunction | Determines how intermediate values are calculated for properties modified by a transition effect. |
| translate | A translate transformation. |
| unityBackgroundImageTintColor | Tinting color for the element's backgroundImage. |
| unityEditorTextRenderingMode | TextElement editor rendering mode. |
| unityFont | Font to draw the element's text, defined as a Font object. |
| unityFontDefinition | Font to draw the element's text, defined as a FontDefinition structure. It takes precedence over -unity-font. |
| unityFontStyleAndWeight | Font style and weight (normal, bold, italic) to draw the element's text. |
| unityMaterial | Custom material to use on the element. |
| unityOverflowClipBox | Specifies which box the element content is clipped against. |
| unityParagraphSpacing | Increases or decreases the space between paragraphs. |
| unitySliceBottom | Size of the 9-slice's bottom edge when painting an element's background image. |
| unitySliceLeft | Size of the 9-slice's left edge when painting an element's background image. |
| unitySliceRight | Size of the 9-slice's right edge when painting an element's background image. |
| unitySliceScale | Scale applied to an element's slices. |
| unitySliceTop | Size of the 9-slice's top edge when painting an element's background image. |
| unitySliceType | Specifies the type of sclicing. |
| unityTextAlign | Horizontal and vertical text alignment in the element's box. |
| unityTextAutoSize | Overrides any explicit font-size to scale text within the defined minimum and maximum bounds, recalculating as needed to fit its container. |
| unityTextGenerator | Switches between Unity's standard and advanced text generator |
| unityTextOutlineColor | Outline color of the text. |
| unityTextOutlineWidth | Outline width of the text. |
| unityTextOverflowPosition | The element's text overflow position. |
| visibility | Specifies whether or not an element is visible. |
| whiteSpace | Word wrap over multiple lines if not enough space is available to draw the text of an element. |
| width | Fixed width of an element for the layout. |
| wordSpacing | Increases or decreases the space between words. |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Clears inline style properties of the element. |
