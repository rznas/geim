<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/instantiating-prefabs-structure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Build a structure with prefabs

You can use code to procedurally generate copies of a **prefab** in a particular configuration. The following example creates a wall of block prefab instances.

## Create a block prefab asset

To create a wall of blocks, you must first have a block prefab asset to create the wall with.

1. In the Hierarchy, right-click and select **3D Object** > **Cube**.
2. Drag the cube into the **Assets** folder in the **Project window**. Unity creates a prefab asset of the cube.
3. Rename the prefab asset to `Block`.
4. Delete the original cube asset from the Hierarchy.

## Create a script that instantiates blocks

Create a MonoBehaviour script and name it `Wall`. Add the following code into the `Wall` script:

```csharp
using UnityEngine;
public class Wall : MonoBehaviour
{
   public GameObject block;
   public int width = 10;
   public int height = 4;
  
   void Start()
   {
       for (int y=0; y<height; ++y)
       {
           for (int x=0; x<width; ++x)
           {
               Vector3 pos = transform.position + new Vector3(x, y, 0);
               Instantiate(block, pos, Quaternion.identity);
           }
       }       
   }
}
```

## Attach the script to an empty GameObject

1. Create an empty **GameObject**. Right-click on the Hierarchy and select **Create Empty**.
2. Attach the `Wall` script to the empty GameObject.
3. Drag the `Block` prefab asset into the **Block** field,
4. Enter Play mode and Unity generates a wall with the `Block` prefab.

You can also use code to place prefabs in a grid or other configurations. The following example places the cubes in a circular formation:

```csharp
using UnityEngine;
public class CircleFormation : MonoBehaviour

{
    // Instantiates prefabs in a circle formation

    public GameObject prefab;
    public int numberOfObjects = 20;
    public float radius = 5f;

    void Start() 
    {
        for (int i = 0; i < numberOfObjects; i++)
        {
            float angle = i * Mathf.PI * 2 / numberOfObjects;
            float x = Mathf.Cos(angle) * radius;
            float z = Mathf.Sin(angle) * radius;
            Vector3 pos = transform.position + new Vector3(x, 0, z);
            float angleDegrees = -angle*Mathf.Rad2Deg;
            Quaternion rot = Quaternion.Euler(0, angleDegrees, 0);
            Instantiate(prefab, pos, rot);
        }
    }
}
```

When you attach the script to an empty GameObject and enter Play mode, Unity generates the cubes in the following formation:

## Additional resources

- Instantiate projectiles and explosions
- `Instantiate` API reference
