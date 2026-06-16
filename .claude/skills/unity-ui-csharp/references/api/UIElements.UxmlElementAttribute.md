<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlElementAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Declares a custom control.

To create a custom control, you must add the UxmlElement attribute to the custom control class definition. You must declare the custom control class as a partial class and inherit it from VisualElement or one of its derived classes. When an element is marked with the UxmlElement attribute, a corresponding UxmlSerializedData class is generated in the partial class. This data class contains a SerializeField for each field or property that was marked with the UxmlAttributeAttribute attribute. This serialized data allows for the element to be serialized from UXML and supports editing in the Attributes field of the Inspector window in the UI Builder. The UxmlSerializedData includes a generated UxmlSerializedData.CreateInstance method that uses the default constructor. You can use the UxmlCreateInstanceMethodAttribute to replace the default behaviour and provide your own creation method. By default, the custom control appears in the Library tab in UI Builder. The `visibility` field can be used to control the visibility of the custom control in the Library tab.

 For an example of migrating a custom control from `UxmlFactory` and `UxmlTraits` to the `UxmlElement` and `UxmlAttributes` system, refer to Enhanced custom controls creation with UXML. 

The following example creates a custom control with multiple attributes:

```csharp
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;[UxmlElement]
public partial class ExampleVisualElement : VisualElement
{
    [UxmlAttribute]
    public string myStringValue { get; set; }    [UxmlAttribute]
    public int myIntValue { get; set; }    [UxmlAttribute]
    public float myFloatValue { get; set; }    [UxmlAttribute]
    public List<int> myListOfInts { get; set; }    [UxmlAttribute, UxmlTypeReference(typeof(VisualElement))]
    public Type myType { get; set; }    [UxmlAttribute]
    public Texture2D myTexture { get; set; }    [UxmlAttribute]
    public Color myColor { get; set; }
}
```

The following UXML document uses the custom control:

```csharp
<ui:UXML xmlns:ui="UnityEngine.UIElements">
    <ExampleElement my-string-value="Hello World" my-int-value="123" />
    <ExampleElement my-float-value="3.14" my-list-of-ints="1,2,3" />
    <ExampleElement my-string-value="Hello World" my-int-value="123" />
    <ExampleElement my-texture="project://database/Assets/MyTexture.png" />
    <ExampleElement my-color="#FF0000FF" />
    <ExampleElement my-type="UnityEngine.UIElements.Button, UnityEngine.UIElementsModule" />
</ui:UXML>
```

When you create a custom control, the default name used in UXML and UI Builder is the element type name (C# class name). However, you can customize the name to make it easier to refer to the element. 
 
 **Note**: You are still required to reference the classes' namespace in UXML. To create a custom name for an element, provide a value to the `name` property. 
 For example, if you create the following custom button:

```csharp
using UnityEngine.UIElements;namespace MyNamespace
{
    [UxmlElement("MyButton")]
    public partial class CustomButtonElement : Button
    {
    }
}
```

You can then reference the custom button in UXML with the custom name or its type:

```csharp
<ui:UXML xmlns:ui="UnityEngine.UIElements">
    <MyNamespace.MyButton />
    <MyNamespace.CustomButtonElement />
</ui:UXML>
```

Certain namespaces in Unity, specifically those starting with Unity, UnityEngine, and UnityEditor, are reserved. As a result, the elements within these namespaces are hidden from the UI Builder library by default. However, you can override this behavior by explicitly configuring the visibility of these elements:

```csharp
using UnityEngine.UIElements;namespace Unity.MyGame
{
    // This element is visible in the UI Builder library under "My Game/Inventory".
    [UxmlElement(libraryPath = "My Game/Inventory", visibility = LibraryVisibility.Visible)]
    public partial class VisibleItem : VisualElement
    {
        [UxmlAttribute]
        public string description { get; set; }
    }
}// This element is hidden from the UI Builder library.
// However, you can still use it in UXML or C# code.
[UxmlElement(visibility = LibraryVisibility.Hidden)]
public partial class HiddenItem : VisualElement
{
    [UxmlAttribute]
    public string description { get; set; }
}
```

### Properties

| Property | Description |
| --- | --- |
| libraryPath | Custom path to use when displaying the element in the UI Builder Library. Sub-paths can be created by using a forward slash (/). If no value is provided, the element namespace will be used. |
| name | Provides a custom name for an element. |
| visibility | Controls the visibility of the element in the UI Builder Library. |

### Constructors

| Constructor | Description |
| --- | --- |
| UxmlElementAttribute | Exposes a type of VisualElement to UXML and UI Builder |
