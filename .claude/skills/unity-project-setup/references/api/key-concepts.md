<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/key-concepts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Key concepts

There are some concepts you rely on from the moment you open the Unity Editor. Use this page to refresh your memory as you work through tutorials and your first projects.

## GameObjects, components, and scenes

GameObjects represent everything in your game, including characters, props, and scenery. In the Unity Editor, all objects in a scene are GameObjects. In contrast, project assets are source files that you add to scenes. For example, C# **scripts**, textures, materials, 3D **model files**, and **prefabs**.

GameObjects exist in 2D or 3D environments called scenes. You can think of a scene as a game level, but it might also represent a menu, the credits at the end of the game, or a cutscene.

The behavior of GameObjects is defined by blocks of functionality called components. You can attach multiple components to GameObjects. The following components are fundamental for 3D games:

| Component | Impact on a GameObject |
| --- | --- |
| **Transform** | Determines the Position, Rotation, and Scale of each GameObject in the scene. Every GameObject has a **Transform component**. |
| **Mesh Filter** | Defines the shape of a 3D GameObject. |
| **Mesh Renderer** | Applies textures and handles how the 3D GameObject looks under lighting examples. |
| **Cameras** | Define GameObjects that capture and display the world to the player. |
| **Rigidbody** | Allow GameObjects to interact with the Physics system, including gravity and **collisions**. Refer to the Physics section of this guide. |
| **Colliders** | Defines the shape of a 3D GameObject for the purpose of physical collisions, which can be different from the 3D **mesh**’s visible shape. |

Back to Top

## Scripting

Use scripts to create complex game behavior, such as:

- Trigger game events, such as move the user to a win or lose scene in response to changes in the user’s game stats.
- Change component properties over time. For example, change the visibility of a hidden door, shrink and enlarge an object, or collapse a wall.
- Respond to user input to move their character, interact with objects, and select menu options.

To add a script to a GameObject, add the **Script** component, and reference your own script in it.

Unity supports the C# programming language natively.

- For details on how to use scripts in Unity, refer to Scripting Overview.
- To learn the fundamentals of scripting, follow the [Unity Learn Beginner Scripting course](https://learn.unity.com/course/beginner-scripting?utm_source=first-time&utm_medium=docs).
- For more in-depth guidance, refer to the example projects [Create with Code](https://learn.unity.com/course/create-with-code?utm_source=first-time&utm_medium=docs) and [Creator Kit: Beginner Code](https://learn.unity.com/project/creator-kit-beginner-code?utm_source=first-time&utm_medium=docs).

Back to Top

## 3D models

Models are 3D representations of objects. The majority of the visuals for 3D games consist of models, such as characters, interactive objects, and the world around the player.

You can use tools like [ProBuilder](https://docs.unity3d.com/Packages/com.unity.probuilder@latest?/) to create models in the Unity Editor. However, these work best for prototyping, rather than for your final product.

To add more polished 3D assets to your final product, create 3D models, along with their materials and textures, in 3D modeling software, then import them into the Editor.

Import models into the Editor to use them in your project. The Editor uses the `.fbx` format. You can also use other common native model formats (for example, `.max`, `.blend`, `.mb`, `.ma`); the Editor converts them into `.fbx` when you import them.

### Rendering meshes

A 3D mesh is the structural build of a 3D model. It’s made up of multiple polygon shapes. To add a 3D model to a GameObject, your GameObject needs two components:

1. The Mesh Filter component, which includes the actual mesh.
2. The Mesh Renderer component, which adds a material to the mesh to make the mesh visible in your scene.

### Materials

Materials combine information about the visual appearance of a surface, such as textures, color tints, and shaders. Use materials to define how to render surfaces.

- Textures are any 2D image files that you import into Unity. Use textures to wrap a mesh and add fine detail to a model. Use color tints to alter the color of the texture.
- Shaders set lighting input and material configuration to control how each **pixel** renders, which determines how a GameObject looks on a screen.

For [material design](https://learn.unity.com/tutorial/shading-material-design?utm_source=first-time&utm_medium=docs), refer to the Unity Learn Tutorial.

Back to Top

## Building in-game environments

Environment design is the process of creating the world the gameplay takes place in. You can design and build your environment in the Unity Editor, or you can design an environment outside of the Editor and import it.

To build an in-game environment, add GameObjects to the scene and position them to suit your preference and design. You can use ProBuilder to prototype the design and gameplay.

In addition to hand-placing your models in the scene, the Unity Editor includes a built-in set of **Terrain** features that allow you to add landscapes to your game. In the Editor, you can create multiple Terrain tiles, adjust the height or appearance of your landscape, and add trees or grass to it. Read more about Creating and Using Terrains.

Back to Top

## Animation

Animations describe how objects change based on game states, player interaction, time, and so on. They also give characters their movement, create cutscenes, and change the environment.

There are two ways to add animations to your game:

- Import animations made in other programs.
- Animate your assets directly in the Editor.

For more information, refer to the [Unity Learn animation topic](https://learn.unity.com/search/?k=%5B%22tag%3A5807188409091500644028e8%22%5D).

### Importing Animations

When you import a model with animation clips, you can choose which of its clips to import. This means you can animate models in a third-party application, then access and edit the clips in the Editor.

For more information, refer to the Animation tab of the **Model Import Settings** window.

### Animating Models in Unity

Use the Animation window to create and modify animation clips in the Editor.

To learn how animation works in the Editor, refer to Mecanim Animation system.

### The Animator window

You can use the Animator window to:

- Create and set up the Animation Controller.
- Create animator states with animation clips.
- Create animator parameters, which scripts can access or assign values to.
- Create animator transitions, which specify conditions (based on parameters) for state changes and how states blend.

### Controlling animations

To control which animation clips play, you can:

- Call them directly in a script with the Animator class.
- Create and modify an Animator Controller in the **Animator** window.

Back to Top

## Lighting

Light your scenes to add depth and mood to your environments.

All built-in scene templates, except the Empty template, include a single Light GameObject. For most scenes, you’ll want to create additional Light GameObjects to create the desired lighting.

For more information, refer to:

- Types of Light.
- Configuring Light components.
- The Unity Learn [Lighting in URP](https://learn.unity.com/project/creative-core-lighting?utm_source=first-time&utm_medium=docs) tutorial.

Back to Top

## Audio

To add background music and sound effects to your game, refer to Audio Overview. You’ll need to use third-party software to create your audio and import it into the Editor. Then, you can mix your sounds, place them in scenes, and create ambient sound.

Back to Top

## Physics

Use Unity’s physics system to control how objects interact with each other and with their environment. For example, you can:

- Use forces, such as gravity and mechanics, which define how GameObjects behave on collision.
- Create custom physics to fit the design of your game, which might not require an accurate simulation of Earth.

To learn how to use Unity’s physics system, you can refer to:

- The [2D Beginner: Adventure Game](https://learn.unity.com/course/2d-beginner-adventure-game?utm_source=first-time&utm_medium=docs) Unity Learn tutorial.
- The [Unity Learn physics topic](https://learn.unity.com/search?k=%5B%22q%3Aphysics%22%5D).
- The Physics section of the User Manual.

To apply the physics system to a GameObject, use the ****Rigidbody**** and ****Collider**** components:

| Component | Impact on a GameObject |
| --- | --- |
| **Rigidbody** | Allows your GameObject to be affected by the physics system, and react to things like gravity and collisions. |
| **Collider** | Enable GameObjects to interact with other GameObjects in the scene. For example, GameObjects with a collider can move or be moved by another GameObject with a collider. |
| **Collider with a trigger** | Call a function in code when two GameObjects intersect. |

Back to Top

## User Interface

To create interface elements, such as menus, gear lists, and information pop-ups, use UI Toolkit.

Back to Top

# Additional resources

- Get started with 3D game development
- Get started with 2D game development
