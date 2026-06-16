<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-get-started-runtime-binding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Get started with runtime binding

**Version**: 6000.0+

Want to learn how to create runtime data binding? Use this example to get started. This example creates a data source asset and uses UI Builder to bind the data source to a UI.

To set a runtime binding in UI Builder:

1. Define the data source and the data source path in the **Inspector** panel of the UI control.
2. Bind the properties of the UI control to the properties of the data source asset.
3. Define the binding mode to configure how changes are replicated between the data source and the UI.
4. Define the update trigger to configure when changes are replicated between the data source and the UI.

## Example overview

This example creates a data source asset that contains a string property, and binds it to the Text property of a Label control in UI Builder. When you change the string property in the data source asset, the text of the label changes.

You can find the completed files that this example creates in this [GitHub repository](https://github.com/Unity-Technologies/ui-toolkit-manual-code-examples/tree/master/get-started-runtime-binding).

## Prerequisites

This guide is for developers familiar with the Unity Editor, UI Toolkit, and C# scripting. Before you start, get familiar with the following:

- UI Builder
- UXML

## Create a data source asset

Create a data source asset that contains the properties you want to bind to. In this example, you create a `ScriptableObject` asset named `ExampleObject` that contains a `string` property.

1. Create a project in Unity with any template.
2. In the `Assets` folder of your project, create a C# script named `ExampleObject.cs` with the following content:

```csharp
using Unity.Properties;
using UnityEngine;
using UnityEngine.UIElements;

#if UNITY_EDITOR
using UnityEditor;
#endif

[CreateAssetMenu]
public class ExampleObject : ScriptableObject
{
    [Header("Simple binding")]
    [CreateProperty]
    public string simpleLabel = "Hello World!";
}
```

## Create the example object asset

1. From the menu, select **Assets** > **Create** > **Example Object**. This creates an asset in the `Assets` folder of your project.
2. Rename the asset as `ExampleObject.asset`.

## Create the UI

Create a UI that binds to the data source asset you created in the previous step. In this example, you create a UXML file that contains a Label.

1. In the `Assets` folder of your project, create a UXML file named `ExampleObject.uxml`.
2. Double-click the `ExampleObject.uxml` file to open it in UI Builder.
3. In the Hierarchy panel, add a **Label** control.

## Bind a Label to the data source

Bind the UI to the data source asset you created in the previous step.

1. In the Inspector panel of the **Label**, from the **Bindings** > **Data Source** > **Object** list, select **ExampleObject**.
2. In the **Data Source Path** list, select **simpleLabel**.
3. Right-click the **Text** property and select **Add binding**.
4. From the **Binding Mode** list, select **To Target**. This updates the UI when the data source changes.
5. From the **Advanced Settings** > **Update Trigger** list, select **On Source Changed**, which is the default setting. This updates the UI when the data source changes.
6. Select **Add binding** to apply your changes.
7. Save and close UI Builder. Your `ExampleObject.uxml` file looks like the following:

```
<engine:UXML xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:engine="UnityEngine.UIElements" 
xmlns:editor="UnityEditor.UIElements" noNamespaceSchemaLocation="../../UIElementsSchema/UIElements.xsd" editor-extension-mode="False">
    <engine:Label text="Label" data-source="ExampleObject.asset" data-source-path="simpleLabel">
        <Bindings>
            <engine:DataBinding property="text" binding-mode="ToTarget" />
        </Bindings>
    </engine:Label>
</engine:UXML>
```

## Test the binding in UI Builder preview mode

Update the label text in the data source asset and check changes replicated in the UI.

1. In the `Assets` folder of your project, select `ExampleObject.asset`.
2. In the Inspector window, in the **Simple Label** field, enter text. The **Label** text in the UI Builder **Viewport** displays the text you entered.

## Additional resources

- Bind to multiple properties with runtime binding
- Create a runtime binding type converter
- Create runtime data binding
- Define a data source
