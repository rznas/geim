<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/create-lens-flare.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a lens flare

Create a flare and apply it to a **lens flare** component, then configure it to be visible by cameras.

**Note:** This workflow is compatible only with the Built-in **Render Pipeline**. For similar functionality in other render pipelines, see Lens flares and halos.

## Apply a Flare asset

1. Assign the Flare asset to a Light component or a Lens flare component.
  - If you assign it to the **Flare** property of a Light component, Unity automatically tracks the position and direction of the Light and uses those values to configure the appearance of the lens flare.
  - If you assign it to the **Flare** property of a Lens flare component, you can use the Lens Flare component to configure additional values for more precise control.
2. If you want a Camera to see lens flares, select the camera then select **Add Component** > **Flare Layer**.  **Note:** The Flare Layer component has no properties.
3. To see the lens flare effect in the **Scene View**, enable the Effect toggle in the **Scene** View **toolbar** and, in the drop-down, enable **Flares**.

## Create a lens flare with the Lens Flare component

1. Create a new **GameObject** (menu bar: **GameObject > Create Empty**).
2. In the Inspector, click **Add Component > Effects > Lens Flare**.
3. Assign a Flare Asset to the **Flare** property.
4. If you want a Camera to see lens flares, select the camera then select **Add Component** > **Flare Layer**.  **Note:** The Flare Layer component has no properties.
5. To see the lens flare effect in the **Scene View**, enable the Effect toggle in the Scene View toolbar and, in the drop-down, enable **Flares**.
