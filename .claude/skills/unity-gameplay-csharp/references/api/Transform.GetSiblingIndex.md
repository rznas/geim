<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.GetSiblingIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The index of this Transform, relative to its siblings.

### Description

Gets the index of this Transform, relative to its siblings.

When a GameObject has multiple direct children, these children are considered 'siblings' relative to each other. The sibling index describes the ordering of the children within the sibling group. The first child of the parent GameObject has index 0, the second child has index 1, and so on. Inactive GameObjects are still counted in the sibling group.

The sibling index affects the order in which children are shown in the Hierarchy window, and is also used by some components, such as the Layout Group components, to control the visual ordering of the objects. For more information about Layout Groups, refer to AutoLayout.

When calling Transform.GetChild, the parameter passed to that method is the same thing as the sibling index.

To set the sibling index of a GameObject, see Transform.SetSiblingIndex.

```csharp
//This script demonstrates how to return (GetSiblingIndex) and change (SetSiblingIndex) the sibling index of a GameObject.
//Attach this script to the GameObject you would like to change the sibling index of.
//To see this in action, make this GameObject the child of another GameObject, and create siblings for it.
using UnityEngine;public class TransformGetSiblingIndex : MonoBehaviour
{
    //Use this to change the hierarchy of the GameObject siblings
    int m_IndexNumber;    void Start()
    {
        //Initialise the Sibling Index to 0
        m_IndexNumber = 0;
        //Set the Sibling Index
        transform.SetSiblingIndex(m_IndexNumber);
        //Output the Sibling Index to the console
        Debug.Log("Sibling Index : " + transform.GetSiblingIndex());
    }    void OnGUI()
    {
        //Press this Button to increase the sibling index number of the GameObject
        if (GUI.Button(new Rect(0, 0, 200, 40), "Add Index Number"))
        {
            //Make sure the index number doesn't exceed the Sibling Index by more than 1
            if (m_IndexNumber <= transform.GetSiblingIndex())
            {
                //Increase the Index Number
                m_IndexNumber++;
            }
        }        //Press this Button to decrease the sibling index number of the GameObject
        if (GUI.Button(new Rect(0, 40, 200, 40), "Minus Index Number"))
        {
            //Make sure the index number doesn't go below 0
            if (m_IndexNumber >= 1)
            {
                //Decrease the index number
                m_IndexNumber--;
            }
        }
        //Detect if any of the Buttons are being pressed
        if (GUI.changed)
        {
            //Update the Sibling Index of the GameObject
            transform.SetSiblingIndex(m_IndexNumber);
            Debug.Log("Sibling Index : " + transform.GetSiblingIndex());
        }
    }
}
```
