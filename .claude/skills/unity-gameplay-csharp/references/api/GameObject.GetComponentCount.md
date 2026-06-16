<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.GetComponentCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The number of components on the GameObject as an Integer value.

### Description

Retrieves the total number of components currently attached to the GameObject.

You can use `GetComponentCount` to iterate through component indices, which is especially convenient if used together with GameObject.GetComponentAtIndex. For example, you can iterate through the indices to find the index of a particular component you're interested in and then save the index for later use.

```csharp
using UnityEngine;public class IterateComponents : MonoBehaviour
{
int m_SavedComponentIndex = -1;    void Start()
    {
        //Iterate through components  on the GameObject
        for (int i = 0; i < gameObject.GetComponentCount(); i++)
        {
            var currComponent = gameObject.GetComponentAtIndex(i);
            
            //Check if it is a Rigidbody component
            if (currComponent.GetType() == typeof(Rigidbody) )
            {
                m_SavedComponentIndex = i;
            }
        }        Debug.Log(m_SavedComponentIndex != -1 ? $"Found component at index: {m_SavedComponentIndex}" : "Could not find component");
    }
}
```

Additional resources: GameObject.GetComponentAtIndex
