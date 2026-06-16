<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-ElementRef.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Visual elements reference

The following tables outline the **visual elements** available in the `UnityEngine.UIElements` and `UnityEditor.UIElements` namespaces.

## Base elements

| **Element** | **Namespace** | **C# class** |
| --- | --- | --- |
| **`BindableElement`** | `UnityEngine.UIElements` | `UnityEngine.UIElements.BindableElement` |
| **`VisualElement`** | `UnityEngine.UIElements` | `UnityEngine.UIElements.VisualElement` |

## Built-in controls

The following table is a reference of all built-in controls available for UI Toolkit.

| **Element** | **Bindable** | **Data type** | **Namespace** | **C# class** |
| --- | --- | --- | --- | --- |
| **`BoundsField`** | Yes | `UnityEngine.Bounds` | `UnityEngine.UIElements` | `UnityEngine.UIElements.BoundsField` |
| **`BoundsIntField`** | Yes | `UnityEngine.BoundsInt` | `UnityEngine.UIElements` | `UnityEngine.UIElements.BoundsIntField` |
| **`Box`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.Box` |
| **`Button`** | Yes | `string` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Button` |
| **`ColorField`** | Yes | `UnityEngine.Color` | `UnityEditor.UIElements` | `UnityEditor.UIElements.ColorField` |
| **`CurveField`** | Yes | `UnityEngine.AnimationCurve` | `UnityEditor.UIElements` | `UnityEditor.UIElements.CurveField` |
| **`DoubleField`** | Yes | `double` | `UnityEngine.UIElements` | `UnityEngine.UIElements.DoubleField` |
| **`DropdownField`** | Yes | `string` | `UnityEngine.UIElements` | `UnityEngine.UIElements.DropdownField` |
| **`EnumField`** | Yes | `Enum` | `UnityEngine.UIElements` | `UnityEngine.UIElements.EnumField` |
| **`EnumFlagsField`** | Yes | `Enum` | `UnityEditor.UIElements` | `UnityEditor.UIElements.EnumFlagsField` |
| **`FloatField`** | Yes | `float` | `UnityEngine.UIElements` | `UnityEngine.UIElements.FloatField` |
| **`Foldout`** | Yes | `boolean` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Foldout` |
| **`GradientField`** | Yes | `UnityEngine.Gradient` | `UnityEditor.UIElements` | `UnityEditor.UIElements.GradientField` |
| **`GroupBox`** | Yes |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.GroupBox` |
| **`Hash128Field`** | Yes | `UnityEngine.Hash128` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Hash128Field` |
| **`HelpBox`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.HelpBox` |
| **`IMGUIContainer`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.IMGUIContainer` |
| **`Image`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.Image` |
| **`InspectorElement`** | Yes |  | `UnityEditor.UIElements` | `UnityEditor.UIElements.InspectorElement` |
| **`IntegerField`** | Yes | `int` | `UnityEngine.UIElements` | `UnityEngine.UIElements.IntegerField` |
| **`Label`** | Yes | `string` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Label` |
| **`LayerField`** | Yes | `int` | `UnityEditor.UIElements` | `UnityEditor.UIElements.LayerField` |
| **`LayerMaskField`** | Yes | `int` | `UnityEditor.UIElements` | `UnityEditor.UIElements.LayerMaskField` |
| **`ListView`** | Yes | `IList` | `UnityEngine.UIElements` | `UnityEngine.UIElements.ListView` |
| **`LongField`** | Yes | `long` | `UnityEngine.UIElements` | `UnityEngine.UIElements.LongField` |
| **`Mask64Field`** | Yes | [`System.UInt64`](https://learn.microsoft.com/en-us/dotnet/api/system.uint64) | `UnityEditor.UIElements` | `UnityEditor.UIElements.Mask64Field` |
| **`MaskField`** | Yes | `int` | `UnityEditor.UIElements` | `UnityEditor.UIElements.MaskField` |
| **`MinMaxSlider`** | Yes | `UnityEngine.Vector2` | `UnityEngine.UIElements` | `UnityEngine.UIElements.MinMaxSlider` |
| **`MultiColumnListView`** | Yes |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.MultiColumnListView` |
| **`MultiColumnTreeView`** | Yes |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.MultiColumnTreeView` |
| **`ObjectField`** | Yes | `UnityEngine.Object` | `UnityEditor.UIElements` | `UnityEditor.UIElements.ObjectField` |
| **`PopupWindow`** | Yes | `string` | `UnityEngine.UIElements` | `UnityEngine.UIElements.PopupWindow` |
| **`ProgressBar`** | Yes | `float` | `UnityEngine.UIElements` | `UnityEngine.UIElements.ProgressBar` |
| **`PropertyField`** |  |  | `UnityEditor.UIElements` | `UnityEditor.UIElements.PropertyField` |
| **`RadioButton`** | Yes | `boolean` | `UnityEngine.UIElements` | `UnityEngine.UIElements.RadioButton` |
| **`RadioButtonGroup`** | Yes | `int` | `UnityEngine.UIElements` | `UnityEngine.UIElements.RadioButtonGroup` |
| **`RectField`** | Yes | `UnityEngine.Rect` | `UnityEngine.UIElements` | `UnityEngine.UIElements.RectField` |
| **`RectIntField`** | Yes | `UnityEngine.RectInt` | `UnityEngine.UIElements` | `UnityEngine.UIElements.RectIntField` |
| **`RenderingLayerMaskField`** | Yes | [`System.UInt32`](https://learn.microsoft.com/en-us/dotnet/api/system.uint32) | `UnityEditor.UIElements` | `UnityEditor.UIElements.RenderingLayerMaskField` |
| **`RepeatButton`** | Yes | `string` | `UnityEngine.UIElements` | `UnityEngine.UIElements.RepeatButton` |
| **`ScrollView`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.ScrollView` |
| **`Scroller`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.Scroller` |
| **`Slider`** | Yes | `float` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Slider` |
| **`SliderInt`** | Yes | `int` | `UnityEngine.UIElements` | `UnityEngine.UIElements.SliderInt` |
| **`Tab`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.Tab` |
| **`TabView`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.TabView` |
| **`TagField`** | Yes | `string` | `UnityEditor.UIElements` | `UnityEditor.UIElements.TagField` |
| **`TemplateContainer`** | Yes |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.TemplateContainer` |
| **`TemplateContainer`** | Yes |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.TemplateContainer` |
| **`TextElement`** | Yes | `string` | `UnityEngine.UIElements` | `UnityEngine.UIElements.TextElement` |
| **`TextField`** | Yes | `string` | `UnityEngine.UIElements` | `UnityEngine.UIElements.TextField` |
| **`Toggle`** | Yes | `boolean` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Toggle` |
| **`ToggleButtonGroup`** | Yes | `UnityEngine.UIElements.ToggleButtonGroupState` | `UnityEngine.UIElements` | `UnityEngine.UIElements.ToggleButtonGroup` |
| **`Toolbar`** |  |  | `UnityEditor.UIElements` | `UnityEditor.UIElements.Toolbar` |
| **`ToolbarBreadcrumbs`** |  |  | `UnityEditor.UIElements` | `UnityEditor.UIElements.ToolbarBreadcrumbs` |
| **`ToolbarButton`** | Yes |  | `UnityEditor.UIElements` | `UnityEditor.UIElements.ToolbarButton` |
| **`ToolbarMenu`** | Yes |  | `UnityEditor.UIElements` | `UnityEditor.UIElements.ToolbarMenu` |
| **`ToolbarPopupSearchField`** |  | `string` | `UnityEditor.UIElements` | `UnityEditor.UIElements.ToolbarPopupSearchField` |
| **`ToolbarSearchField`** |  | `string` | `UnityEditor.UIElements` | `UnityEditor.UIElements.ToolbarSearchField` |
| **`ToolbarSpacer`** |  |  | `UnityEditor.UIElements` | `UnityEditor.UIElements.ToolbarSpacer` |
| **`ToolbarToggle`** | Yes | `boolean` | `UnityEditor.UIElements` | `UnityEditor.UIElements.ToolbarToggle` |
| **`TreeView`** | Yes |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.TreeView` |
| **`TwoPaneSplitView`** |  |  | `UnityEngine.UIElements` | `UnityEngine.UIElements.TwoPaneSplitView` |
| **`UnsignedIntegerField`** | Yes | [`System.UInt32`](https://learn.microsoft.com/en-us/dotnet/api/system.uint32) | `UnityEngine.UIElements` | `UnityEngine.UIElements.UnsignedIntegerField` |
| **`UnsignedLongField`** | Yes | [`System.UInt64`](https://learn.microsoft.com/en-us/dotnet/api/system.uint64) | `UnityEngine.UIElements` | `UnityEngine.UIElements.UnsignedLongField` |
| **`Vector2Field`** | Yes | `UnityEngine.Vector2` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Vector2Field` |
| **`Vector2IntField`** | Yes | `UnityEngine.Vector2Int` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Vector2IntField` |
| **`Vector3Field`** | Yes | `UnityEngine.Vector3` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Vector3Field` |
| **`Vector3IntField`** | Yes | `UnityEngine.Vector3Int` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Vector3IntField` |
| **`Vector4Field`** | Yes | `UnityEngine.Vector4` | `UnityEngine.UIElements` | `UnityEngine.UIElements.Vector4Field` |

## C# only controls

The following table lists the controls that are only available in C# and do not have a UXML representation.

| **Name** | **Bindable** | **Namespace** | **C# class** |
| --- | --- | --- | --- |
| **`GenericDropdownMenu`** | No | `UnityEngine.UIElements` | `UnityEngine.UIElements.GenericDropdownMenu` |

## Templates

| **Element** | **Description** | **Namespace** | **Permitted child elements** | **Attributes** |
| --- | --- | --- | --- | --- |
| `Template` | A reference to another UXML template that can be instantiated using the `Instance` element. | `UnityEngine.UIElements` | None | `name`: A unique string identifier for this element `path`: The path of the UXML file to load |
| `Instance` | Instance of a `Template` | `UnityEngine.UIElements` | None | `template`: The `name` of the `Template` to instantiate |

## UxmlObject attributes

| **Element** | **Description** | **Namespace** | **Permitted child elements** | **Attributes** |
| --- | --- | --- | --- | --- |
| `Columns` | Contains descriptions of columns. Must be a child of a parent that supports it, such as MultiColumnListView or MultiColumnTreeView. | `UnityEngine.UIElements` | `Column` | None |
| `Column` | Describes a column. Must be a child of `Columns`. | `UnityEngine.UIElements` | None | `name`: The name of this column in code `title`: The name displayed in the header of this column `width`: The default width of this column in pixels |
