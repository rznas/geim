<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2-operator_subtract.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Vector2** The difference between the two vectors, returned as a Vector2 struct.

### Description

Subtracts one vector from another.

Subtracts each component of `b` from `a`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create two vectors.
        Vector2 A = new Vector2(1, 2);
        Vector2 B = new Vector2(3, 2);
        
        // Subtract vector B from vector A.
        Vector2 C = A - B;
        
        // Print the result.
        print(C);
    }
}
```

### Returns

**Vector2** The negative of the vector, returned as a Vector2 struct.

### Description

Negates a vector.

Each component in the vector is negated, to obtain its negative value. The negative of a vector has the same magnitude but opposite direction

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
       // Create a vector.
       Vector2 A = new Vector2(1, 2);
       
       // Find the negative value.
       Vector2 B = - A;
  
       // Print the result.
        print(B + " is the negative of " + A);
    }
}
```
