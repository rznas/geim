<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/Glossary.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Glossary

| 0–9 | A | B | C | D | E | F | G | | H | I-J | K | L | M | N | O | P | | Q | R | S | T | U | V | W | X-Z |

## 0–9

#### 1D Blend Tree:

A Blend Tree for 1D blending, which blends motion according to a single Animation Parameter.

#### 2D Blend Tree:

A Blend Tree for 2D blending, which blends motion according to two **Animation Parameters**.

#### 2D Object:

A 2D **GameObject** such as a **tilemap** or **sprite**.

#### 3D Object:

A 3D **GameObject** such as a cube, **terrain** or ragdoll.

## A

#### Accelerator:

The Unity **Accelerator** is an external tool that provides an asset cache that keeps copies of a team’s imported assets. The goal of the **Accelerator** is to speed up teamwork and reduce iteration time by coordinating asset sharing so that you don’t need to reimport portions of your project.

#### active users:

#### Ad ARP:

#### ad revenue:

#### ad starts:

#### ADB:

#### ads per DAU:

#### age 14 and under:

#### all spenders:

#### ambient light:

Light that doesn’t come from any specific direction, and contributes equal light in all directions to the **Scene**.

#### ambient occlusion:

A method to approximate how much **ambient light** (light not coming from a specific direction) can hit a point on a surface.

#### analytics events:

#### Analytics:

Abbreviation of **Unity Analytics**

#### anchor:

#### Android Keystore:

An Android system that lets you store cryptographic key entries for enhanced device security.

#### Animation Blend Shape:

Enables you to make an object change its form by blending between two separate meshes.

#### Animation Blend Tree:

Used for continuous blending between similar **Animation Clips** based on float **Animation Parameters**.

#### Animation Clip:

Animation data that can be used for animated characters or simple animations. It is a simple “unit” piece of motion, such as (one specific instance of) “Idle”, “Walk” or “Run”.

#### Animation Clip Node:

A node in a Blend Tree graph that contains an **animation clip**, such as a run or walk animation.

#### animation compression:

The method of compressing animation data to significantly reduce file sizes without causing a noticeable reduction in motion quality. Animation **compression** is a trade off between saving on memory and image quality.

#### Animation Curves:

Allows you to add data to an imported clip so you can animate the timings of other items based on the state of an animator. For example, for a game set in icy conditions, you could use an extra animation curve to control the emission rate of a **particle** system to show the player’s condensing breath in the cold air.

#### Animation Event:

Allows you to add data to an imported clip which determines when certain actions should occur in time with the animation. For example, for an animated character you might want to add events to walk and run cycles to indicate when the footstep sounds should play.

#### Animation Key:

The value of an animatable property, set at a specific point in time. Setting at least two keys for the same property creates an animation.

#### Animation Layer:

An **Animation Layer** contains an Animation **State Machine** that controls animations of a model or part of it. An example of this is if you have a full-body layer for walking or jumping and a higher layer for upper-body motions such as throwing an object or shooting. The higher layers take precedence for the body parts they control.

#### Animation Parameters:

Used to communicate between scripting and the **Animator Controller**. Some parameters can be set in scripting and used by the controller, while other parameters are based on Custom Curves in **Animation Clips** and can be sampled using the scripting API.

#### Animation State Machine:

A graph within an **Animator Controller** that controls the interaction of Animation States. Each state references an **Animation Blend Tree** or a single **Animation Clip**.

#### Animation Transition:

Allows a **state machine** to switch or blend from one animation state to another. Transitions define how long a blend between states should take, and the conditions that activate them.

#### Animator Component:

A component on a model that animates that model using the Animation system. The component has a reference to an **Animator Controller** asset that controls the animation.

#### Animator Controller:

Controls animation through **Animation Layers** with Animation **State Machines** and **Animation Blend Trees**, controlled by **Animation Parameters**. The same **Animator Controller** can be referenced by multiple models with **Animator components**.

#### Animator Override Controller:

Allows you to create multiple variants of an **Animator Controller**, with each variant using a different set of animations, while retaining the original Controller’s structure, parameters and logic.

#### Animator Window:

The window where the **Animator Controller** is visualized and edited.

#### Aniso Level:

The anisotropic filtering (AF) level of a texture. Allows you to increase texture quality when viewing a texture at a steep angle. Good for floor and ground textures.

#### antialiasing:

A technique for decreasing artifacts, like jagged lines (jaggies), in images to make them appear smoother.

#### AOT Compilation:

Ahead of Time (AOT) compilation is an optimization method used by all platforms except iOS for optimizing the size of the built player. .

#### APK:

The Android Package format output by Unity. An APK is automatically deployed to your device when you select File > Build & Run.

#### application version:

#### AR:

Augmented Reality

#### ARPDAU:

#### ARPPU:

#### aspect ratio:

The relationship of an image’s proportional dimensions, such as its width and height.

#### asset package:

A collection of files and data from Unity projects, or elements of projects, which are compressed and stored in one file, similar to Zip files, with the `.unitypackage` extension. **Asset packages** are a handy way of sharing and re-using Unity projects and collections of assets.

#### Asset Server:

Legacy - An asset and **version control** system with a graphical user interface integrated into Unity. Enables team members to work together on a project on different computers.

#### asset:

Any media or data that can be used in your game or project. An asset may come from a file created outside of Unity, such as a 3D Model, an audio file or an image. You can also create some asset types in Unity, such as an **Animator Controller**, an Audio Mixer or a **Render Texture**.

#### Asset Store:

A growing library of free and commercial assets created by Unity and members of the community. Offers a wide variety of assets, from textures, models and animations to whole project examples, tutorials and Editor extensions.

#### Asset Store package:

A bundled collection of assets or tools available for purchase or download on the Unity **Asset Store**, compressed and stored as an **asset package** (`.unitypackage` extension) or a **UPM package**. You can manage your packages from the **Asset Store** either on the online store or through the Package Manager window.

#### Audio Clip:

A container for audio data in Unity. Unity supports mono, stereo and multichannel audio assets (up to eight channels). Unity can import .aif, .wav, .mp3, and .ogg audio file format, and .xm, .mod, .it, and .s3m tracker module formats.

#### Audio Distortion Filter:

An **audio filter** that distorts the sound from an **Audio Source** or sounds reaching the **Audio Listener** by simulating the sound of a low quality radio transmission.

#### Audio Effect:

Any effect that can modify the output of Audio Mixer components, such as filtering frequency ranges of a sound or applying reverb.

#### Audio Filter:

Any **audio filter** that distorts the sound from an **Audio Source** or sounds reaching an **Audio Listener**.

#### Audio High Pass Filter:

An **audio filter** that passes high frequencies of an AudioSource and cuts off signals with frequencies lower than the Cutoff Frequency.

#### Audio Listener:

A component that acts like a microphone, receiving sound from **Audio Sources** in the **scene** and outputting to the computer speakers.

#### Audio Low Pass Filter:

An **audio filter** that passes low frequencies of an **Audio Source** or all sound reaching an **Audio Listener** while removing frequencies higher than the Cutoff Frequency.

#### Audio Source:

A component which plays back an **Audio Clip** in the **scene** to an **audio listener** or through an audio mixer.

#### Audio Spatializer:

A **plug-in** that changes the way audio is transmitted from an **audio source** into the surrounding space. It takes the source and regulates the gains of the left and right ear contributions based on the distance and angle between the AudioListener and the AudioSource.

#### Augmented Reality:

Augmented Reality (AR) uses computer graphics or video composited on top of a live video feed to augment the view and create interaction with real and virtual objects.

#### Avatar Mask:

A specification for which body parts to include or exclude for an animation rig. Used in **Animation Layers** and in the importer.

#### Avatar:

An interface for **retargeting** animation from one rig to another.

## B

#### baked lights:

Light components whose Mode property is set to Baked. Unity pre-calculates the illumination from **Baked Lights** before runtime, and does not include them in any runtime lighting calculations.

#### billboard:

A textured **2D object** that rotates so that it always faces the **Camera**.

#### Bind-pose:

The pose at which the character was modeled.

#### Blend Node:

A node in a Blend Tree graph that blends **animation clip** nodes.

#### blend:

Transition from one animation to another smoothly and seamlessly, such as blending a character’s walking and running animations according to the character’s speed.

#### blit:

A shorthand term for “bit block transfer”. A **blit** operation is the process of transferring blocks of data from one place in memory to another.

#### Bloom:

A **post-processing** effect used to reproduce an imaging artifact of real-world **cameras**. The effect produces fringes of light extending from the borders of bright areas in an image, contributing to the illusion of an extremely bright light overwhelming the **camera** or eye capturing the **scene**.

#### Body Transform:

The mass center of the character. It is used in for animation **retargeting** and provides the most stable displacement model.

#### Body Type:

Defines a fixed behavior for a 2D **Rigidbody**. Can be Dynamic (the body moves under simulation and is affected by forces like gravity), Kinematic (the body moves under simulation, but isn’t affected by forces like gravity) or Static (the body doesn’t move under simulation).

#### bounding volume:

A closed shape representing the edges and faces of a **collider** or trigger.

#### Box Collider:

A cube-shaped **collider** component that handles **collisions** for **GameObjects** like dice and ice cubes.

#### broad phase collision detection:

A **collision** detection phase that computes pairs of potentially overlapping objects by judging only their respective **bounding volumes**.

#### Build Automation:

#### build profile:

A set of customizable configuration settings to use when creating a build for your target platform.

#### build:

The process of compiling your project into a format that is ready to run on a specific platform or platforms.

#### built-in package:

*Built-in* packages allow users to toggle Unity features on or off through the Package Manager. Enabling or disabling a package reduces the run-time build size. For example, most projects don’t use the legacy **Particle** System. By removing the abstracted package of this feature, the related code and resources are not part of the final built product. Typically, these packages contain only the **package manifest** and are bundled with Unity (rather than available on the package registry).

#### bump map:

An image texture used to represent geometric detail across the surface of a **mesh**, for example bumps and grooves. Can be represented as a **heightmap** or a **normal map**.

#### bundled package:

Unity stores *bundled* packages in the global cache when you install Unity. You can install these packages in your project even if you are completely offline (not currently connected to the internet or a local network).

## C

#### Cache API:

#### call stack:

A list of methods that were called at run time, organized as a last-in-first-out stack.

#### Camera:

A component which creates an image of a particular viewpoint in your **scene**. The output is either drawn to the screen or captured as a texture.

#### Canvas Group:

#### Canvas Renderer:

#### Canvas Scaler:

#### Canvas:

#### Capsule Collider:

A capsule-shaped **collider** component that handles **collisions** for **GameObjects** like barrels and character limbs.

#### category:

A **Profiler category** identifies the workload data for a Unity subsystem (for example, Rendering, Scripting and Animation categories). Unity applies color-coding to categories to help visually distinguish the types of data in the Profiler window.

#### center of mass:

Represents the average position of all mass in a **Rigidbody** for the purposes of physics calculations. By default it is computed from all **colliders** belonging to the **Rigidbody**, but can be modified via script.

#### Character Controller:

A simple, capsule-shaped **collider** component with specialized features for behaving as a character in a game. Unlike true **collider** components, a **Rigidbody** is not needed and the momentum effects are not realistic.

#### Character Joint:

An extended ball-socket **joint** which allows a **joint** to be limited on each axis. Mainly used for Ragdoll effects.

#### churn:

#### clipping plane:

A plane that limits how far or close a **camera** can see from its current position. A **camera**’s viewable range is between the far and near **clipping planes**. See far **clipping plane** and near **clipping plane**.

#### closed platform:

Includes platforms that require confidentiality and legal agreements with the platform provider for using their developer tools and hardware. These platforms aren’t open to development unless you have an established relationship with the provider. For example PlayStation®, Game Core for Xbox®, and Nintendo®.

#### Cloth:

A component that works with the Skinned **Mesh** Renderer to provide a physics-based solution for simulating fabrics.

#### cohort:

#### collider:

An invisible shape that is used to handle physical **collisions** for an object. A **collider** doesn’t need to be exactly the same shape as the object’s **mesh** - a rough approximation is often more efficient and indistinguishable in gameplay.

#### collision detection:

An automatic process performed by Unity which determines whether a moving **GameObject** with a **Rigidbody** and **collider** component has come into contact with any other **colliders**.

#### collision:

A **collision** occurs when the **physics engine** detects that the **colliders** of two **GameObjects** make contact or overlap, when at least one has a **Rigidbody** component and is in motion.

#### component:

A functional part of a **GameObject**. A **GameObject** can contain any number of components. Unity has many built-in components, and you can create your own by writing **scripts** that inherit from MonoBehaviour.

#### compression:

A method of storing data that reduces the amount of storage space it requires. See Texture Compression, Animation Compression, Audio Compression, Build Compression.

#### Configurable Joint:

An extremely customizable **joint** that other **joint** types are derived from. It can be used to create anything from adapted versions of existing **joints** to custom designed and highly specialized **joints**.

#### Console window:

A Unity Editor window that shows errors, warnings and other messages generated by Unity, or your own **scripts**.

#### console:

Abbreviation of **game console**

#### Constant Force:

A simple component for adding a **constant force** or torque to game objects with a **Rigidbody**.

#### constraints:

Settings on **Joint** components which limit movement or rotation. The type and number of constraints vary depending on the type of **Joint**.

#### contact distance:

A **joint** limit property that sets the minimum distance tolerance between the **joint** position and the limit at which the limit will be enforced.

#### continuous collision detection:

A **collision** detection method that calculates and resolves **collisions** over the entire physics simulation step. This can prevent fast-moving objects from tunnelling through walls during a simulation step.

#### conversion rate:

#### COPPA:

#### core events:

#### CTR:

#### Cubemap:

A collection of six square textures that can represent the reflections in an environment or the **skybox** drawn behind your geometry. The six squares form the faces of an imaginary cube that surrounds an object; each face represents the view along the directions of the world axes (up, down, left, right, forward and back).

#### Culling Mask:

Allows you to include or omit objects to be rendered by a **Camera**, by Layer.

#### custom events:

## D

#### damping ratio:

A **joint** setting to control spring oscillation. A higher **damping ratio** means the spring will come to rest faster.

#### Data Explorer:

#### DAU per MAU:

#### DAU:

#### day 1 retention:

#### day 30 retention:

#### day 7 retention:

#### default package:

Unity automatically pre-installs a select number of *default* packages (for example, the Analytics Library, Unity Timeline, etc.) when you create a new project. This differs from a **bundled package** because you don’t need to install it and it differs from a **built-in package** because it extends Unity’s features rather than being able to enable or disable them.

#### deferred shading:

A **rendering path** in the Built-in **Render Pipeline** that places no limit on the number of Lights that can affect a **GameObject**. All Lights are evaluated per-pixel, which means that they all interact correctly with **normal maps** and so on. Additionally, all Lights can have cookies and shadows.

#### demographics:

#### depth buffer:

A memory store that holds the z-value depth of each **pixel** in an image, where the z-value is the depth for each rendered **pixel** from the projection plane.

#### depth of field:

A **post-processing** effect that simulates the focus properties of a **camera** lens.

#### development build:

A **development build** includes debug symbols and enables the Profiler.

#### dimetric projection:

A form of parallel projection where the dimensions of a **3D object** are projected onto a 2D plane, and only two of the three angles between the axes are equal to each other. This form of projection is commonly used in isometric video games to simulate three-dimensional depth.

#### Direct Blend Tree:

A Blend Tree that allows you to map animator parameters directly to the weight of a Blend Tree child. This is useful when you want to have exact control over the animations that are being blended rather than blend them indirectly using one or two parameters (in the case of 1D and 2D blend trees).

#### Direct dependency:

A **direct** dependency occurs when your project “requests” a specific package version. To create a **direct dependency**, you add that package and version to the **dependencies** property in your **project manifest** (expressed in the form `package_name@package_version`).

#### discrete collision detection:

A **collision** detection method that calculates and resolves **collisions** based on the pose of objects at the end of each physics simulation step.

#### Distance Shadowmask:

A version of the **Shadowmask** lighting mode that includes high quality shadows cast from static **GameObjects** onto dynamic **GameObjects**.

#### distortion effect:

An **audio effect** that modifies the sound by squashing and clipping the waveform to produce a rough, harsh result.

#### dolphins:

#### doppler factor:

An audio setting that allows you to control how much the velocity of an object (relative to the audio listener) affects the pitch of any **audio sources** attached to it.

#### dry level:

An audio setting that allows you to set the mix level of unprocessed signal in output in mB.

#### dry mix:

An audio setting that allows you to set the volume of the original signal to pass to output.

#### dynamic batching:

An automatic Unity process which attempts to render multiple meshes as if they were a single **mesh** for optimized graphics performance. The technique transforms all of the **GameObject** vertices on the CPU and groups many similar vertices together.

#### dynamic friction:

A **Physics Material** property that defines the friction for a **Rigidbody** when it’s in motion. Lower values mean less friction, so a setting of zero represents slipping on ice.

#### dynamic resolution:

A **Camera** setting that allows you to dynamically scale individual render targets to reduce workload on the GPU.

## E

#### eCPM:

#### Editor scripts:

C# source files composed entirely of code that runs in the Unity Editor only and not in the runtime Player build. Keep such **scripts** in dedicated Editor assemblies either by placing them in a parent folder called Editor or creating an Editor-only assembly definition.

#### embedded package:

An *embedded* package is a **mutable** package that you store under the `Packages` directory at the root of a Unity project. This differs from most packages which you download from a package server and are **immutable**.

#### Emscripten:

#### engagement:

#### Enlighten:

#### ETC:

(Ericsson Texture Compression) A block-based **texture format** that compresses textures to significantly reduce file sizes without causing a noticeable reduction in image quality.

#### Event System:

A way of sending events to objects in the application based on input, be it keyboard, mouse, touch, or custom input. The **Event System** consists of a few components that work together to send events.

#### exponential fog:

A fog model that emulates realistic fog behavior by simulating light absorption over distance by a certain attenuation factor.

#### exposure value:

A value that represents a combination of a **camera**’s shutter speed and f-number. It is essentially a measurement of exposure such that all combinations of shutter speed and f-number that yield the same level of exposure have the same EV.

#### extrapolate:

See **Extrapolation**

#### extrapolation:

The process of storing the last few known values and using them to predict future values. Used in animation, physics and multiplayer.

#### Extrude Edges:

A Texture property that enables you to define how much area to leave around a **sprite** in a generated **mesh**.

## F

#### F2P:

#### far clipping plane:

The maximum draw distance for a **camera**. Geometry beyond the plane defined by this value is not rendered. The plane is perpendicular to the **camera**’s forward (Z) direction.

#### FBX:

Autodesk’s proprietary format that Unity uses to import and export Models, animation, and more.

#### feature set:

A feature set is a collection of related packages that you can use to achieve specific results in the Unity Editor. You can manage feature sets directly in Unity’s Package Manager.

#### fill rate:

#### first person shooter:

A common game genre, featuring a first-person view of a 3D world, and gun-based combat with other players or NPCs.

#### Fixed Joint:

A **joint** type that is completely constrained, allowing two objects to be held together. Implemented as a spring so some motion may still occur.

#### Fixed Joint 2D:

A 2D **joint** type which is completely constrained, allowing two objects to be held together. Implemented as a spring so some small motion may still occur.

#### fixed timestep:

A customizable frame-rate-independent interval that dictates when physics calculations and FixedUpdate() events are performed.

#### flythrough mode:

A **Scene** view navigation mode that allows you to fly around the **scene** in first-person, similar to how you would navigate in many games.

#### FMOD:

Audio in Unity is built on top of a middleware called FMOD. FMOD is integrated with the Unity engine for creating and playing back interactive audio.

#### fog:

A **post-processing** effect that overlays a color onto objects depending on the distance from the **camera**. Use this to simulate fog or mist in outdoor environments, or to hide clipping of objects near the **camera**’s far clip plane.

#### forward kinematics:

A method of posing a skeleton for animation by rotating the **joint** angles to predetermined values. The position of a child **joint** changes according to the rotation of its parent and so the end point of a chain of **joints** can be determined from the angles and relative positions of the individual **joints** it contains.

#### Forward Rendering:

A **rendering path** that renders each object in one or more passes, depending on lights that affect the object. Lights themselves are also treated differently by **Forward Rendering**, depending on their settings and intensity.

#### FPS:

See **first person shooter**, **frames per second**.

#### frame:

A single image from a sequence of images that represent moving graphics. While your game is running, the **camera** in your game renders frames to the screen as fast as possible. May also refer to a frame from a video clip, or **sprite** animation frames. See **frames per second** (FPS).

#### frames per second:

The frequency at which consecutive frames are displayed in a running game.

#### Fresnel Effect:

An effect representing the increase in reflectivity on objects when light hits at grazing angles.

#### frustum:

The region of 3D space that a perspective **camera** can see and render. In the **Scene** view, the frustum is represented by a truncated rectangular pyramid with its top at the **camera__’s near**clipping plane__ and its base at the **camera__’s far**clipping plane__.

#### funnel:

## G

#### game console:

A device that runs and displays video games.

#### game controller:

A device to control objects and characters in a game.

#### GameObject:

The fundamental object in Unity **scenes**, which can represent characters, props, scenery, **cameras**, waypoints, and more. A **GameObject**’s functionality is defined by the Components attached to it.

#### geography:

#### GI Cache:

The cached intermediate files used when Unity precomputes lighting data. Unity keeps this cache to speed up computation.

#### Git dependency:

The Package Manager retrieves **Git dependencies** from a Git repository directly rather than from a package registry. **Git dependencies** use a Git URL reference instead of a version, and there’s no guarantee about the package quality, stability, validity, or even whether the version stated in its `package.json` file respects Semantic Versioning rules with regards to officially published releases of this package.

#### Gizmo:

A graphic overlay associated with a **GameObject** in a **Scene**, and displayed in the **Scene** View. Built-in **scene** tools such as the move tool are **Gizmos**, and you can create custom **Gizmos** using textures or scripting. Some **Gizmos** are only drawn when the **GameObject** is selected, while other **Gizmos** are drawn by the Editor regardless of which **GameObjects** are selected.

#### global illumination:

A group of techniques that model both direct and indirect lighting to provide realistic lighting results.

#### Gradle:

An Android build system that automates several build processes. This automation means that many common build errors are less likely to occur.

#### Gravity Modifier:

A **Particle** System property that scales the gravity value set in the physics manager. A value of zero switches gravity off.

## H

#### Halo:

The glowing light areas around light sources, used to give the impression of small dust **particles** in the air.

#### hard shadows:

A shadow property that produces shadows with a sharp edge. Hard shadows are not particularly realistic compared to Soft Shadows but they involve less processing, and are acceptable for many purposes.

#### HDR:

high dynamic range

#### HDRI:

high dynamic range image

#### heightmap:

A greyscale Texture that stores height data for an object. Each **pixel** stores the height difference perpendicular to the face that **pixel** represents.

#### high twist limit:

The higher limit of a Character **Joint**.

#### Hinge Joint:

A **joint** that groups together two **Rigidbody** components, constraining them to move like they are connected by a hinge. It is perfect for doors, but can also be used to model chains, pendulums and so on.

#### HLAPI:

Abbreviation of **High Level API**.

#### host:

In a multiplayer network game without a dedicated server, one of the peers in the game acts as the center of authority for the game. This peer is called the “host”. It runs a server and a “local client”, while the other peers each run a “remote client”.

#### Human template:

A pre-defined bone-mapping. Used for matching bones from FBX files to the **Avatar**.

#### Humanoid animation:

An animation using humanoid skeletons. Humanoid models generally have the same basic structure, representing the major articulate parts of the body, head and limbs. This makes it easy to map animations from one humanoid skeleton to another, allowing **retargeting** and inverse **kinematics**.

## I-J

#### IAP:

See **In App Purchase**

#### ignore file:

A special file used in many **Version Control** Systems which specifies files to be excluded from being placed under **version control**. In Unity projects there are a number of files which could be excluded from **version control**, and using an Ignore File is the best way to achieve this.

#### IL2CPP:

A Unity-developed scripting back-end which you can use as an alternative to Mono when building projects for some platforms.

#### Image control:

#### immutable:

You cannot change the contents of an **immutable** (read-only) package. This is the opposite of **mutable**. Most packages are **immutable**, including packages downloaded from the package registry or by Git URL.

#### impressions:

#### in app purchase:

Revenue from “micro-transactions” within a game.

#### indirect dependency:

An **indirect**, or transitive dependency occurs when your project requests a package which itself “depends on” another package. For example, if your project depends on the `alembic@1.0.7` package which in turn depends on the `timeline@1.0.0` package, then your project has an **direct dependency** on Alembic and an **indirect dependency** on Timeline.

#### input key:

A key on a keyboard relating to the Input class.

#### Input Manager:

Settings where you can define all the different input axes, buttons and controls for your project.

#### Inspector:

A Unity window that displays information about the currently selected **GameObject**, asset or **project settings**, allowing you to inspect and edit the values.

#### Interactable:

#### interpolate:

See **Interpolation**

#### interpolation:

The process of calculating values in-between two defined values. Used in animation (between keyframes), physics (between physics time-steps), and multiplayer (between network updates)

#### inverse kinematics (IK):

The automatic calculation of **joint** angles (eg. the shoulder and elbow joint of an arm) so that the end point (eg. the hand) reaches a desired point in space. In contrast to **Forward Kinematics**

#### Irradiance Budget:

A **lightmap** property that determines the precision of the incoming light data used to light each texel in the **lightmap**

#### Irradiance Quality:

A **lightmap** property that sets the number of rays that are cast and used to compute which clusters affect a given output **lightmap** texel.

#### isometric projection:

A form of parallel projection where the dimensions of a **3D object** are projected onto a 2D plane, and the angles between all three axes are equal to each other. This form of projection is commonly used in isometric video games to simulate three-dimensional depth.

#### joint:

A physics component allowing a dynamic connection between **Rigidbody** components, usually allowing some degree of movement such as a hinge.

#### Joy Num:

An **Input Manager** property that defines which joystick will be used.

## K

#### Keyframe Reduction:

A process that removes redundant **keyframes**.

#### keyframe:

A frame that marks the start or end point of a transition in an animation. Frames in between the **keyframes** are called inbetweens.

#### kinematics:

The geometry that describes the position and orientation of a character’s **joints** and bodies. Used by inverse **kinematics** to control character movement.

## L

#### Layer Mask:

A value defining which layers to include or exclude from an operation, such as rendering, **collision** or your own code.

#### layer:

Layers in Unity can be used to selectively opt groups of **GameObjects** in or out of certain processes or calculations. This includes **camera** rendering, lighting, physics **collisions**, or custom calculations in your own code.

#### Lens Flare:

A component that simulates the effect of lights refracting inside a **camera** lens. Use a **Lens Flare** to represent very bright lights or add atmosphere to your **scene**.

#### level of detail:

The *Level Of Detail* (LOD) technique is an optimization that reduces the number of triangles that Unity has to render for a **GameObject** when its distance from the **Camera** increases.

#### Light Mode:

A Light property that defines the use of the Light. Can be set to Realtime, Baked and Mixed.

#### Light Probe Group:

A component that enables you to add **Light Probes** to **GameObjects** in your **scene**.

#### Light Probe Proxy Volume:

A component that allows you to use more lighting information for large dynamic **GameObjects** that cannot use baked **lightmaps** (for example, large Particle Systems or skinned Meshes).

#### Light Probe:

Light probes store information about how light passes through space in your **scene**. A collection of **light probes** arranged within a given space can improve lighting on moving objects and static **LOD** scenery within that space.

#### lightmap texture:

Final rendered texture containing lighting data. **Lightmap** textures store baked lighting information such as indirect illumination and shadowing, and are applied to meshes via their UVs.

#### Lightmap:

A pre-rendered texture that contains the effects of light sources on static objects in the **scene**. **Lightmaps** are overlaid on top of **scene** geometry to create the effect of lighting.

#### Lightmapper:

A tool in Unity that bakes **lightmaps** according to the arrangement of lights and geometry in your **scene**.

#### Line Renderer:

A component that takes an array of two or more points in 3D space and draws a straight line between each one. You can use a single **Line Renderer** component to draw anything from a simple straight line to a complex spiral.

#### local package:

A *local* package already exists on the file system, usually outside the project folder. To install the package, notify the Package Manager of its location through the **Packages** window.

#### LOD Group:

A component to manage **level of detail** (LOD) for **GameObjects**.

#### LOD:

See **level of detail**

#### Loop Pose:

An **animation clip** setting that blends the end and start of an animation to create a seamless join.

#### Low Twist Limit:

A **joint** property that sets the lower limit of a **joint**.

#### LTV:

## M

#### Main Editor Player:

The Unity Player that exists in the main Unity Editor.

#### managed plug-in:

A managed .NET assembly that is created with tools like Visual Studio for use in Unity.

#### manifest:

There are two types of manifest files: **project manifest****s** and **package manifest****s**.

#### margin:

Minimum distance between UV charts within the same layout. Margin helps prevent texture bleeding between charts during filtering and mipmapping, and is usually specified in texels at the target resolution.

#### marker:

A Unity Profiler API structure that describes a CPU or GPU event, such as a button click. Each event marker appears as a vertical lines or label in the Profiler window.

#### mask:

#### Material:

An asset that defines how a surface should be rendered.

#### MAU:

#### mcs:

The Mono C# compiler file format.

#### Mesh Collider:

A free-form **collider** component which accepts a **mesh** reference to define its **collision** surface shape.

#### Mesh Filter:

A **mesh** component that takes a **mesh** from your assets and passes it to the **Mesh** Renderer for rendering on the screen.

#### Mesh Renderer:

A **mesh** component that takes the geometry from the **Mesh** Filter and renders it at the position defined by the object’s **Transform component**.

#### Mesh:

The main graphics primitive of Unity. Meshes make up a large part of your 3D worlds. Unity supports triangulated or Quadrangulated polygon meshes. Nurbs, Nurms, Subdiv surfaces must be converted to polygons.

#### minnow:

#### Mixed Lights:

Light components whose Mode property is set to Mixed. Some calculations for Mixed Lights are performed in advance, and some calculations for Mixed Lights are performed at runtime. The behavior of all Mixed Lights in a **Scene** is determined by the **Scene**’s Lighting Mode.

#### mixed reality:

Mixed Reality (MR) combines its own virtual environment with the user’s real-world environment and allows them to interact with each other.

#### model file:

A file containing a 3D data, which may include definitions for meshes, bones, animation, materials and textures.

#### model:

A 3D model representation of an object, such as a character, a building, or a piece of furniture.

#### Mono:

A **scripting backend** used in Unity.

#### MonoDevelop:

#### MR:

Mixed Reality

#### muscle definition:

This allows you to have more intuitive control over the character’s skeleton. When an **Avatar** is in place, the Animation system works in muscle space, which is more intuitive than bone space.

#### mutable:

You can change the contents of a **mutable** package. This is the opposite of **immutable**. Only **Local package****s** and **Embedded package****s** are **mutable**.

## N

#### narrow phase collision detection:

A **collision** detection phase that determines whether the pairs of objects found in the broad phase will actually collide. It then computes the contact points for those pairs and gives them to the solver to use when solving **collisions**.

#### native plug-in:

A platform-specific native code library that is created outside of Unity for use in Unity. Allows you can access features like OS calls and third-party code libraries that would otherwise not be available to Unity.

#### NavMesh:

#### near clipping plane:

A plane that limits how close a **camera** can see from its current position. The plane is perpendicular to the **camera**’s forward (Z) direction.

#### networking:

The Unity system that enables multiplayer gaming across a computer network.

#### never monetized:

#### new users:

#### normal map:

A type of **Bump Map** texture that allows you to add surface detail such as bumps, grooves, and scratches to a model which catch the light as if they are represented by real geometry.

#### normal:

The direction perpendicular to the surface of a **mesh**, represented by a Vector. Unity uses normals to determine object orientation and apply shading.

#### number of unverified transactions:

#### number of users:

#### number of verified transactions:

## O

#### object:

See **GameObject**.

#### occlusion culling:

A process that disables rendering **GameObjects** that are hidden (occluded) from the view of the **camera**.

#### ODR:

On-demand resources (ODR) is a feature available for the iOS and tvOS platforms, from version 9.0 of iOS and tvOS onwards. It allows you to reduce the size of your application by separating the core assets (those that are needed from application startup) from assets which may be optional, or which appear in later levels of your game.

#### orthographic 3D:

A common type of **camera** view used in games that give you a bird’s-eye view of the action, and is sometimes called “2.5D”.

#### overhead:

The amount of supporting code that the Profiler needs to run. This overhead might affect the performance of your application.

## P

#### package manifest:

Each package has a *manifest*, which provides information about the package to the Package Manager. The manifest contains information such as the name of the package, its version, a description for users, dependencies on other packages (if any), and other details.

#### package:

A container that stores various types of features and assets for Unity, including Editor or Runtime tools and libraries, Asset collections, and project templates. Packages are self-contained units that the Unity Package Manager can share across Unity projects. Most of the time these are called *packages*, but occasionally they are called **Unity Package Manager (UPM) packages**. The Unity Package Manager (UPM) can display, add, and remove packages from your project. These packages are native to the Unity Package Manager and provide a fundamental method of delivering Unity functionality. However, the Unity Package Manager can also display Asset Store packages that you downloaded from the **Asset Store**.

#### padding:

Minimum distance between different UV layouts in the atlas, specified in texels. Padding prevents cross-object bleeding within a UV atlas to accommodate filtering and mip levels.

#### parent:

An object that contains child objects in a hierarchy. When a **GameObject** is a Parent of another **GameObject**, the Child **GameObject** will move, rotate, and scale exactly as its Parent does. You can think of parenting as being like the relationship between your arms and your body; whenever your body moves, your arms also move along with it.

#### particle system:

A component that simulates fluid entities such as liquids, clouds and flames by generating and animating large numbers of small 2D images in the **scene**.

#### particle:

A small, simple image or **mesh** that is emitted by a **particle** system. A **particle** system can display and move **particles** in great numbers to represent a fluid or amorphous entity. The effect of all the **particles** together creates the impression of the complete entity, such as smoke.

#### percentage of population:

#### Perforce:

A **version control** system for file change management.

#### PhotoCapture:

An API that enables you to take photos from a HoloLens web **camera** and store them in memory or on disk.

#### physically based shading:

An advanced lighting model that simulates the interactions between materials and light in a way that mimics reality.

#### physics engine:

A system that simulates aspects of physical systems so that objects can accelerate correctly and be affected by **collisions**, gravity and other forces.

#### Physics Material 2D:

Use this to adjust the friction and bounce that occurs between 2D physics objects when they collide

#### Physics Material:

A physics asset for adjusting the friction and bouncing effects of colliding objects.

#### ping pong:

To repeatedly play an animation to the end, then in reverse back to the beginning, in a loop.

#### pixel:

The smallest unit in a computer image. **Pixel** size depends on your screen resolution. **Pixel** lighting is calculated at every screen **pixel**.

#### Play On Awake:

Set this to true to make an **Audio Source** start playing on awake

#### Playable Graph:

An API for controlling **Playables**. **Playable Graphs** allow you to create, connect and destroy **playables**.

#### Playables:

An API that provides a way to create tools, effects or other gameplay mechanisms by organizing and evaluating data sources in a tree-like structure known as the PlayableGraph.

#### player log:

The .log file created by a Standalone Player that contains a record of events, such as script execution times, the compiler version, and AssetImport time. Log files can help diagnose problems.

#### Player Settings:

Settings that let you set various player-specific options for the final game built by Unity.

#### plug-in:

A set of code created outside of Unity that creates functionality in Unity. There are two kinds of **plug-ins** you can use in Unity: Managed **plug-ins** (managed .NET assemblies created with tools like Visual Studio) and Native **plug-ins** (platform-specific native code libraries).

#### post-processing:

A process that improves product visuals by applying filters and effects before the image appears on screen. You can use post-processing effects to simulate physical camera and film properties, for example Bloom and Depth of Field.  post processing, postprocessing, postprocess

#### prefab:

An asset type that allows you to store a **GameObject** complete with components and properties. The **prefab** acts as a template from which you can create new object instances in the **scene**.

#### preview package:

A *preview* package is in development and not yet ready for production. A package in preview might be at any stage of development, from the initial stages to near completion.

#### Profiler category:

Identifies the workload data for a Unity subsystem (for example, Rendering, Scripting and Animation categories). Unity applies color-coding to categories to visually distinguish between the types of data in the **Profiler** window.

#### profiler counter:

#### profiler marker:

#### profiler sample:

A set of data associated with a **Profiler marker**, that the Profiler has recorded and collected.

#### Profiler:

A window that helps you to optimize your game. It shows how much time is spent in the various areas of your game. For example, it can report the percentage of time spent rendering, animating, or in your game logic.

#### Progressive Web App:

#### project manifest:

Each Unity project has a *project manifest*, which acts as an entry point for the Package Manager. This file must be available in the `<project>/Packages` directory. The Package Manager uses it to configure many things, including a list of dependencies for that project, as well as any package repository to query for packages.

#### Project Settings:

A broad collection of settings which allow you to configure how Physics, Audio, **Networking**, Graphics, Input and many other areas of your project behave.

#### Project window:

A window that shows the contents of your `Assets` folder (Project tab)

#### project:

In Unity, you use a project to design and develop a game. A project stores all of the files that are related to a game, such as the asset and **Scene** files.

#### Property Drawer:

A Unity feature that allows you to customize the look of certain controls in the **Inspector** window by using attributes on your **scripts**, or by controlling how a specific Serializable class should look

#### pseudo-depth:

A visual simulation of three-dimensional characteristics on a two-dimensional object or environment. This effect is sometimes called “2.5D”.

## Q

#### Quad:

A primitive object that resembles a plane but its edges are only one unit long, it uses only 4 vertices, and the surface is oriented in the XY plane of the local coordinate space.

#### Quaternion:

Unity’s standard way of representing rotations as data. When writing code that deals with rotations, you should usually use the **Quaternion** class and its methods.

## R

#### rasterization:

The process of generating an image by calculating **pixels** for each polygon or triangle in the geometry. This is an alternative to **ray tracing**.

#### Raw Image:

#### ray tracing:

The process of generating an image by tracing out rays from the Camera through each pixel and recording the color contribution at the hit point. This is an alternative to rasterization. raytracing

#### Realtime Lights:

Light components whose Mode property is set to Realtime. Unity calculates and updates the lighting of **Realtime Lights** every frame at runtime. No **Realtime Lights** are precomputed.

#### Reflection Probe:

A rendering component that captures a spherical view of its surroundings in all directions, rather like a **camera**. The captured image is then stored as a **Cubemap** that can be used by objects with reflective materials.

#### Relative Joint 2D:

A 2D **joint** that allows two game objects controlled by **Rigidbody** physics to maintain in a position based on each other’s location. Use this **joint** to keep two objects offset from each other, at a position and angle you decide

#### Remote Settings:

#### render pipeline:

A series of operations that take the contents of a **Scene**, and displays them on a screen. Unity lets you choose from pre-built **render pipelines**, or write your own.

#### Render Texture:

A special type of Texture that is created and updated at runtime. To use them, first create a new **Render Texture** and designate one of your **Cameras** to render into it. Then you can use the **Render Texture** in a Material just like a regular Texture.

#### rendering layer:

A layer that defines how specific effects are applied across different objects. Rendering layers don’t define draw order. They’re selection groups you assign objects to. Rendering layers let lights, decals, shadows, and custom passes include or ignore specific objects.

#### rendering layer mask:

A bitmask that aggregates multiple rendering layers. By assigning one or more rendering layers to an object’s MeshRenderer or an effect such as light, decals, or APVs, you can control how and where Unity applies the effect in the **scene**.

#### rendering path:

The technique that a **render pipeline** uses to render graphics. Choosing a different **rendering path** affects how lighting and shading are calculated. Some **rendering paths** are more suited to different platforms and hardware than others.

#### retargeting:

Applying animations created for one model to another.

#### rig:

A skeletal hierarchy of **joints** for a **mesh**.

#### rigging:

The process of building a skeleton hierarchy of **joints** for your **mesh**. Performed with an external tool, such as Blender or Autodesk Maya.

#### Rigidbody:

A component that allows a **GameObject** to be affected by simulated gravity and other forces.

#### Root Motion:

Motion of character’s **root node**, whether it’s controlled by the animation itself or externally.

#### Root node:

A transform in an animation hierarchy that allows Unity to establish consistency between **Animation clips** for a generic model. It also enables Unity to properly blend between Animations that have not been authored “in place” (that is, where the whole Model moves its world position while animating).

#### Root Transform:

The Transform at the top of a hierarchy of Transforms. In a **Prefab**, the **Root Transform** is the topmost Transform in the **Prefab**. In an animated humanoid character, the **Root Transform** is a projection on the Y plane of the Body Transform and is computed at run time. At every frame, a change in the **Root Transform** is computed, and then this is applied to the **GameObject** to make it move.

## S

#### Scene View:

An interactive view into the world you are creating. You use the **Scene** View to select and position scenery, characters, **cameras**, lights, and all other types of Game Object.

#### Scene:

A **Scene** contains the environments and menus of your game. Think of each unique **Scene** file as a unique level. In each **Scene**, you place your environments, obstacles, and decorations, essentially designing and building your game in pieces.

#### Scripting Backend:

A framework that powers scripting in Unity. Unity supports three different **scripting backends** depending on target platform: Mono, .NET and **IL2CPP**. Universal Windows Platform, however, supports only two: .NET and **IL2CPP**.

#### Scripting Event:

A way of allowing a user-driven callback to persist from edit time to run time without the need for additional programming and script configuration

#### Scripts:

A piece of code that allows you to create your own Components, trigger game events, modify Component properties over time and respond to user input in any way you like.

#### ScrollView:

A UI Control which displays a large set of Controls in a viewable area that you can see by using a scrollbar.

#### segment:

#### Self Collision:

A cloth property that prevents cloth from penetrating itself.

#### Services:

A Unity facility that provides a growing range of complimentary services to help you make games and engage, retain and monetize audiences.

#### session:

#### sessions per user:

#### Shader object:

An instance of the **Shader** class, a **Shader** object is container for **shader** programs and GPU instructions, and information that tells Unity how to use them. Use them with materials to determine the appearance of your **scene**.

#### shader variant:

A verion of a **shader** program that Unity generates according to a specific combination of **shader** keywords and their status. A **Shader** object can contain multiple **shader** variants.

#### shader:

A program that runs on the GPU.

#### ShaderLab:

Unity’s language for defining the structure of **Shader** objects.

#### Shadow:

#### Shadowmask:

A **shadowmask** texture uses the same UV layout and resolution as its corresponding **lightmap** texture.

#### Skinning:

The process of binding bone **joints** to the vertices of a character’s **mesh** or ‘skin’. Performed with an external tool, such as Blender or Autodesk Maya.

#### Skybox:

A special type of Material used to represent skies. Usually six-sided.

#### Soft Particles:

Particles that create semi-transparent effects like smoke, fog or fire. Soft **particles** fade out as they approach an opaque object, to prevent intersections with the geometry.

#### Soft Shadows:

A shadow property that produces shadows with a soft edge. Soft shadows are more realistic compared to Hard Shadows and tend to reduce the “blocky” aliasing effect from the shadow map, but they require more processing.

#### Spatial Mapping:

The process of mapping real-world surfaces into the virtual world.

#### specular color:

The color of a specular highlight.

#### specular highlight

A bright spot of light that appears on the surface of shiny objects when illuminated.

#### speculative continuous collision detection:

A **collision** detection method that inflates broad phase AABB of moving objects according to their velocities. This enables support for effects like rotations.

#### Sphere Collider:

A sphere-shaped **collider** component that handles **collisions** for **GameObjects** like balls or other things that can be roughly approximated as a sphere for the purposes of physics.

#### Spring Joint:

A **joint** type that connects two **Rigidbody** components together but allows the distance between them to change as though they were connected by a spring.

#### Sprite Atlas:

**Graphics:** A utility that packs several **sprite** textures tightly together within a single texture known as an atlas. . **2D:** A texture that is composed of several smaller textures. Also referred to as a texture atlas, image **sprite**, **sprite** sheet or packed texture. .

#### Sprite Mask:

A texture which defines which areas of an underlying image to reveal or hide.

#### Sprite Renderer:

A component that lets you display images as **Sprites** for use in both 2D and 3D **scenes**.

#### Sprite:

A 2D graphic objects. If you are used to working in 3D, **Sprites** are essentially just standard textures but there are special techniques for combining and managing **sprite** textures for efficiency and convenience during development.

#### standard event:

#### State Machine Behaviour:

A script that attaches to a state within a **state machine** to control what happens when the **state machine** enters, exits or remains within a state, such as play sounds as states are entered.

#### State Machine:

The set of states in an **Animator Controller** that a character or animated **GameObject** can be in, along with a set of transitions between those states and a variable to remember the current state. The states available will depend on the type of gameplay, but typical states include things like idling, walking, running and jumping.

#### Static Batching:

A technique Unity uses to draw **GameObjects** on the screen that combines static (non-moving) **GameObjects** into big Meshes, and renders them in a faster way.

#### static receiver:

A static **GameObject** that is receiving a shadow from another static or dynamic **GameObject**

#### stencil buffer:

A memory store that holds an 8-bit per-pixel value. In Unity, you can use a **stencil buffer** to flag **pixels**, and then only render to **pixels** that pass the stencil operation.

#### stencil masking meshes:

Overflow hidden with either rounded corners or vector image background.

#### Sticky Factor:

#### Surface Shader:

A streamlined way of writing **shaders** for the Built-in **Render Pipeline**.

#### Swing Axis:

A **joint** property that defines the axis around which the **joint** can swing.

#### Swing Limit:

A **joint** property that limits the rotation around one element of the defined **Swing Axis**.

## T

#### T-pose:

The pose in which the character has their arms straight out to the sides, forming a “T”. The required pose for the character to be in, in order to make an **Avatar**.

#### tag:

#### target matching:

A scripting function that allows you to move characters in such a way that a hand or foot lands in a certain place at a certain time. For example, the character may need to jump across stepping stones or jump and grab an overhead beam.

#### target position:

A **joint** property to set the **target position** that the **joint**’s drive force should move it to.

#### target velocity:

A **joint** property to set the desired velocity with which the **joint** should move to the **Target Position** under the drive force.

#### Terrain Collider:

A terrain-shaped **collider** component that handles **collisions** for **collision** surface with the same shape as the **Terrain** object it is attached to.

#### Terrain:

The landscape in your **scene**. A **Terrain** **GameObject** adds a large flat plane to your **scene** and you can use the **Terrain**’s **Inspector** window to create a detailed landscape.

#### Test Framework,Test Runner:

#### Text Input Field:

#### Text Mesh:

A **Mesh** component that displays a Text string

#### Text:

#### TextField control:

A **TextField control** displays a non-interactive piece of text to the user, such as a caption, label for other GUI controls, or instruction.

#### texture compression:

3D Graphics hardware requires Textures to be compressed in specialized formats which are optimized for fast Texture sampling.

#### texture format:

A file format for handling textures during real-time rendering by 3D graphics hardware, such as a graphics card or mobile device.

#### Texture Import Inspector:

An **Inspector** that allows you to define how your images are imported from your project’s `Assets` folder into the Unity Editor.

#### texture overrides:

Platform-specific settings that allow you to set the resolution, file size with associated memory size requirements, **pixel** dimensions, and quality of your textures for each target platform.

#### texture space:

The coordinate system that defines a texture’s bounds.

#### texture:

An image used when rendering a **GameObject**, **Sprite**, or UI element. Textures are often applied to the surface of a **mesh** to give it visual detail.

#### tile:

A simple class that allows a **sprite** to be rendered on a **Tilemap**.

#### Tilemap:

A **GameObject** that allows you to quickly create 2D levels using tiles and a grid overlay.

#### Time Manager:

A Unity Settings Manager that lets you set a number of properties that control timing within your game.

#### Toggle:

A checkbox that allows the user to switch an option on or off.

#### tonemapping:

The process of remapping **HDR** values of an image into a range suitable to be displayed on screen.

#### toolbar:

A row of buttons and basic controls at the top of the Unity Editor that allows you to interact with the Editor in various ways (e.g. scaling, translation).

#### total daily playing time per active user:

#### total daily playing time:

#### total IAP revenue:

#### total sessions today:

#### total verified revenue:

#### Trail Renderer:

A visual effect that lets you to make trails behind **GameObjects** in the **Scene** as they move.

#### Transform component:

A **Transform component** determines the Position, Rotation, and Scale of each object in the **scene**. Every **GameObject** has a Transform.

#### transition:

The blend from one state to another in a **state machine**, such as transitioning a character from a walk to a jog animation. Transitions define how long the blend between states should take, and the conditions that activate the blend.

#### Translate DoF:

The three degrees-of-freedom associated with translation (movement in X,Y & Z) as opposed to rotation.

#### Tree:

A **GameObject** and associated Component that allows you to add tree assets to your **Scene**. You can add branch levels and leaves to trees in the Tree **Inspector** window.

## U

#### UI Mask:

#### Unity Analytics:

#### Unity Build Automation:

See **Build Automation**

#### Unity Cloud Diagnostics:

#### Unity IAP:

Abbreviation of Unity **In App Purchase**

#### Unity Remote:

A downloadable app designed to help with Android, iOS and tvOS development. The app connects with Unity while you are running your project in Play Mode from the Unity Editor.

#### Unity unit:

The unit size used in Unity projects. By default, 1 **Unity unit** is 1 meter. To use a different scale, set the Scale Factor in the Import Settings when importing assets.

#### unknown gender:

#### unverified IAP revenue:

#### UPM package:

A **Package** managed by the **Unity Package Manager**. Refer to **Packages**.

#### UV atlas:

Collection of multiple UV layouts packed together. A UV atlas combines several meshes’ layouts into a single texture space to reduce draw calls and optimize baking workflows like lightmapping.

#### UV chart:

Individual unwrapped section within a UV layout. UV charts are contiguous islands of faces that share a continuous mapping. Their placement determines seams, distortion, and packing efficiency. Also known as a UV island.

#### UV layout:

The 2D representation of a single **mesh**’s UV coordinates. A UV layout defines how the **mesh**’s surface maps to texture space and influences **lightmap** unwrapping, texture sampling, and packing.

## V

#### VBlank:

Vertical blanking interval (VBlank) is the time between the end of the final visible line of a frame and the beginning of the first visible line of the next frame. This is the refresh interval as defined by a screen’s refresh rate.

#### vector field:

#### velocity:

A vector that defines the speed and direction of motion of a Rigidbody

#### verified IAP revenue:

#### verified package:

When a package passes release cycle testing for a specific version of Unity, it receives the *Verified For* designation. This means that these packages are guaranteed to work with the designated version of Unity.

#### verified paying users:

#### version control:

A system for managing file changes. You can use Unity in conjunction with most common **version control** tools, including **Perforce**, Git, Mercurial and PlasticSCM.

#### vertex shader:

A program that runs on each vertex of a 3D model when the model is being rendered.

#### VideoCapture:

A Unity API that allows you to record videos directly to the file system in the MP4 format.

#### viewport:

The user’s visible area of an app on their screen.

#### Virtual Player:

#### virtual reality:

Virtual Reality (VR) immerses users in an artificial 3D world of realistic images and sounds, using a headset and motion tracking.

#### visual component:

#### visual element:

A node of a **visual tree** that instantiates or derives from the C# `VisualElement` class. You can style the look, define the behaviour, and display it on screen as part of the UI.

#### visual tree:

An object graph, made of lightweight nodes, that holds all the elements in a window or panel. It defines every UI you build with the UI Toolkit.

#### VR:

Virtual Reality

#### VSync:

## W

#### WebGL:

A JavaScript API that renders 2D and 3D graphics in a web browser. The Unity Web build option allows Unity to publish content as JavaScript programs which use HTML5 technologies and the **WebGL** rendering API to run Unity content in a web browser.

#### whales:

#### Wheel Collider:

A special **collider** for grounded vehicles. It has built-in **collision** detection, wheel physics, and a slip-based tire friction model. It can be used for objects other than wheels, but it is specifically designed for vehicles with wheels.

#### wind zone:

A **GameObject** that adds the effect of wind to your **terrain**. For instance, Trees within a **wind zone** will bend in a realistic animated fashion and the wind itself will move in pulses to create natural patterns of movement among the tree.

#### world:

The area in your **scene** in which all objects reside. Often used to specify that coordinates are world-relative, as opposed to object-relative.

#### WYSIWYG:

What You See Is What You Get. A term used to describe a system where the user interface closely resembles the final output.

## X-Z

#### XR:

An umbrella term encompassing **Virtual Reality** (VR), **Augmented Reality** (AR) and **Mixed Reality** (MR) applications. Devices supporting these forms of interactive applications can be referred to as **XR** devices.

#### zoom:

A **camera** control that lets you scale the view on your screen. To zoom a **camera** in the Unity Editor, press Alt + right click and drag.
