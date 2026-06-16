<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-pie-chart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a pie chart in the Editor and runtime UI

**Version**: 2023.2+

This example demonstrates how to use the Vector API to create graphs in the Editor and runtime UI.

## Example overview

This example generates a pie chart onto a `VisualElement`, and displays it in the Editor and runtime UI.

You can find the completed files that this example creates in this [GitHub repository](https://github.com/Unity-Technologies/ui-toolkit-manual-code-examples/tree/2023.2/pie-chart).

## Prerequisites

This guide is for developers familiar with the Unity Editor, UI Toolkit, and C# scripting. Before you start, get familiar with the following:

- Generate 2D visual content
- `MeshGenerationContext`

## Create the pie chart graph

Create a C# script that uses the `Arc` and `Fill` methods in the Vector API to draw a pie chart into a **visual element**.

1. Create a Unity project with any template.
2. Create a folder named `pie-chart` to store your files.
3. In the `pie-chart` folder, create a C# script named `PieChart.cs` with the following content:

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

[UxmlElement]
public partial class PieChart : VisualElement
{
    float m_Radius = 100.0f;
    float m_Value = 40.0f;

    public float radius
    {
        get => m_Radius;
        set
        {
            m_Radius = value;
        }
    }

    public float diameter => m_Radius * 2.0f;

    public float value {
        get { return m_Value; }
        set { m_Value = value; MarkDirtyRepaint(); }
    }

    public PieChart()
    {
        generateVisualContent += DrawCanvas;
    }

    void DrawCanvas(MeshGenerationContext ctx)
    {
        var painter = ctx.painter2D;
        painter.strokeColor = Color.white;
        painter.fillColor = Color.white;

        var percentage = m_Value;

        var percentages = new float[] {
            percentage, 100 - percentage
        };
        var colors = new Color32[] {
            new Color32(182,235,122,255),
            new Color32(251,120,19,255)
        };
        float angle = 0.0f;
        float anglePct = 0.0f;
        int k = 0;
        foreach (var pct in percentages)
        {
            anglePct += 360.0f * (pct / 100);

            painter.fillColor = colors[k++];
            painter.BeginPath();
            painter.MoveTo(new Vector2(m_Radius, m_Radius));
            painter.Arc(new Vector2(m_Radius, m_Radius), m_Radius, angle, anglePct);
            painter.Fill();

            angle = anglePct;
        }
    }
}
```

## Add the pie chart in the Editor UI

1. Create a folder named `Editor` to store your files.
2. In the `Editor` folder, create a C# script named `PieChartWindow.cs` with the following contents:

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class PieChartWindow : EditorWindow
{
    [MenuItem("UI Toolkit Examples/PieChart Window")]
    public static void ShowExample()
    {
        PieChartWindow wnd = GetWindow<PieChartWindow>();
        wnd.titleContent = new GUIContent("PieChartWindow");
    }

    public void CreateGUI()
    {
        VisualElement root = rootVisualElement;
            
        root.Add(new PieChart());
    }
}
```

To view the pie chart in the Editor window, from the menu, select **Tools** > **PieChart Window**.

## Add the pie chart in the runtime UI

Add the pie chart in the UIDocument **GameObject** in the SampleScene. To do so, first, create a C# script named `PieChartComponent.cs` in the `pie-chart` folder with the following content:

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

[RequireComponent(typeof(UIDocument))]
public class PieChartComponent : MonoBehaviour
{
    PieChart m_PieChart;

    void OnEnable()
    {
        m_PieChart = new PieChart();
        GetComponent<UIDocument>().rootVisualElement.Add(m_PieChart);
    }
}
```

To view the pie chart in runtime:

1. In the SampleScene, select **GameObject** > **UI Toolkit** > **UI Document**.
2. Select the **UIDocument** GameObject in the hierarchy.
3. Add **PieChartComponent.cs** as a component of the UIDocument GameObject.
4. Enter Play mode to view the pie chart in the **scene**.

## Additional resources

- Use Vector API to create a radial progress
