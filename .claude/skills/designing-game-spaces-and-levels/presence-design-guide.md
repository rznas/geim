# Presence Design Guide for VR/AR Experiences

## What Is Presence?

**Presence** is the pervasive sense of being somewhere—the feeling that your body is actually present in a virtual environment.

### Proprioception: The Sense of Self

Presence works through **proprioception** - your sense of where your body is and how it's positioned. This sense defines much of our identity and determines what feels real.

**Why it matters:** We think not just with our brains, but with our bodies. Traditional games use only fingertips; VR/AR engage the whole body.

### The Magic of Presence

Players in VR will unconsciously:
- Lean on virtual tables (then realize and catch themselves)
- Duck under virtual objects
- Flinch from virtual threats
- Reach for virtual objects

This happens because some subconscious part of the mind treats the virtual world as real—**this is presence**.

## The Central Importance of Presence

**Critical principle:** In VR/AR, presence can be more important than gameplay.

### Why This Matters

- **Broken presence = broken experience** - If presence breaks, players become aware they're in a headset
- **Players will tolerate weak gameplay with strong presence** - They enjoy fiddling with a world they feel present in (Lens of the Toy)
- **Strong gameplay cannot save broken presence** - Annoying awareness of the headset ruins everything

**This is inconceivable to many developers** who believe gameplay comes first no matter what. But in VR/AR, the point IS the illusion of presence.

## Presence Breakers (What to Avoid)

### 1. Motion Sickness

**The Problem:** When visual motion doesn't match inner ear signals, the brain thinks you're poisoned and triggers nausea.

**Why vomiting?** The "toxicology hypothesis" - evolutionary poison control mechanism.

**Critical:** Motion sickness can create **permanent aversion**. Players will avoid your games for life if their subconscious associates them with poison.

#### Solutions:

**A. Keep Framerate High**
- **Minimum:** 60 FPS (absolute lowest acceptable)
- **Target:** 90+ FPS
- **Why:** Your head and eyes move fast; low framerates make the brain sense something wrong

**Test:** Shake your mouse cursor. If you see discrete positions, imagine that stuttering in VR when you move your head.

**B. Avoid Virtual Camera Movement**
- **The Rule:** Any disconnect between eye movement and inner ear signals = nausea
- **Impact:** This eliminates many traditional game types (FPS, racing, space dogfights)
- **Opportunity:** Focus on what VR adds (body movement, hand manipulation) rather than what it takes away

**C. If You Must Move Camera, Don't Accelerate**
- **Key Fact:** Inner ear hairs detect acceleration, not velocity
- **Implication:** Constant velocity = less sickness than speeding up/slowing down
- **Example:** *Aladdin's Magic Carpet VR* used linear motion to minimize sickness
- **Caveat:** Even linear motion causes issues over long sessions (>5 minutes)

**D. Hide the Edges (Vignette)**
- **Why:** Brain uses visual field edges to sense motion
- **How:** Darkens or blurs edges during movement
- **Example:** *Eagle's Flight* pioneered this technique
- **When to use:** During focused movement toward specific location
- **Caution:** Can distract if used at wrong times

**E. Teleport Sparingly**
- **Upside:** No motion sickness
- **Downside:** **Major presence breaker**
- **Why:** Mind builds 3D model by looking at space; teleporting puts you in un-looked-at space
- **Effect:** You have no presence until you look around again
- **Quote:** "A cheap and nasty form of space travel" (*Doctor Who* paraphrased)

**F. Never Roll the Horizon**
- **Warning:** Barrel rolls = fastest route to nausea
- **Rule:** Avoid virtual rotation where camera rotates separately from player's head
- **VR Advantage:** Players can turn around for real—use real rotation!

### 2. Counter-Intuitive Interactions

**The Problem:** Confusing or unrealistic interactions shatter presence instantly.

#### Why Physical Interactions Matter More in VR

**Screen games:** Objects are often single-purpose (screwdriver only unscrews)
**VR games:** When presence kicks in, players expect real-world richness

#### Case Study: *I Expect You To Die*

**Problem:** Players tried using knife as screwdriver (realistic!)
**Initial Response:** Silent failure (major presence break)
**Better Solution:** Narrator acknowledges: "I don't think turning screws will be among them"
**Best Solution:** Actually allow it (requires puzzle redesign)

**Success Examples:**
- Shooting champagne bottle → it shatters → broken glass cuts things
- Lighting money on fire → it burns
- Using objects on other objects naturally

#### Design Principles

1. **Small world with rich interactions > big world with weak interactions**
2. **Playtest extensively** - find what players try to do
3. **Acknowledge failed attempts** - at minimum, don't silently ignore
4. **Support natural physics** - objects should work like in reality
5. **The only way to find these:** Repetitive playtesting

### 3. Intensity Overload

**The Problem:** VR is more intense than screens—what's thrilling in 2D can be overwhelming in VR.

#### Why VR Is More Intense

**Special brain nucleus:** Activates when objects come close to face
- Traditional games: Cannot activate this
- VR/AR: Fully activate proximity alertness

#### Overwhelming Experiences

VR can make players feel:
- Falling from great heights
- Drowning
- Bees swarming face
- Monsters touching them

**These can be thrilling BUT also overwhelming.**

#### The Breaking Point

**Moment player thinks:** "This is too much—I want this to stop"

**Result:** Inner voice repeats "it's only pretend... it's only pretend..."
- Actively fighting against presence
- Presence destroyed
- Player lost

#### Design Guidance

- **Thrill vs. Terror:** Find the line for your audience
- **Build up slowly:** Don't overwhelm at start
- **Give players control:** Ability to step back or slow down
- **Watch for stress signals:** Playtesting shows when it's too much

### 4. Unrealistic Audio

**The Problem:** Missing or wrong sounds break presence.

#### Why Audio Matters for Presence

**Hearing is believing:** Sound closely relates to touch
**Your mind uses sound to decide where your body is**

#### Example

**Picking up virtual coin:**
- Looks realistic → Immersed
- Drop it, no sound → Presence destroyed
- Drop it, realistic "ping" and "ching" → Presence maintained

#### Design Principles

1. **Every interaction needs sound** - Silence is a presence breaker
2. **Contextual sounds matter** - Coin on wood ≠ coin on glass
3. **Spatial audio critical** - Sounds from specific locations
4. **Environmental context** - Small room sounds ≠ large room sounds
5. **Double your sound design effort** - VR needs twice the audio work

### 5. Proprioceptive Disconnect

**The Problem:** Virtual body not matching real body position/state.

#### Seated vs. Standing Mismatch

**Scenario:** Seated player, virtual body standing 6 feet tall
**Result:** Body knows if you stood up, you'd be 8 feet tall
**Effect:** World feels tiny, or you feel like you're floating

#### Objects Penetrating Body

**Players hate virtual objects passing through their body:**
- First reaction: Disconcerting subconscious fear
- Continued exposure: Presence break

#### The Uncanny Valley of VR Avatars

**Worst:** Virtual hands/feet not positioned where real ones are
**Effect:** Mind rejects reality as fake
**Better:** No visible body at all
**Rule:** No body > misaligned body

#### Design Principles

1. **Match real and virtual posture** - Seated play needs seated scenarios
2. **Prevent body penetration** - Objects shouldn't pass through player
3. **Hide misaligned body parts** - Better invisible than wrong
4. **Test proprioceptive alignment** - Does virtual match real?

### 6. Lack of Identity

**The Problem:** To be somewhere, you must be someone.

#### Why Identity Matters

**Presence and identity are entwined:**
- Feeling present → Wondering who you are
- No answer → Reminded you're not really there

#### VR Film Problem

**Screen movie:** Two people talking at table → normal
**VR movie:** Same scene → "Why are they ignoring me? Can't they see I'm here?"

**The issue:** In VR, your body is present, raising identity questions

#### Design Principles

1. **Address player's identity** - Who are they in this world?
2. **Explain why others react (or don't)** - Give narrative reason
3. **Give player a role** - Even if just "observer"
4. **Acknowledge player's presence** - Characters should see you (or explain why not)

## Presence Builders (What to Include)

### 1. Hand Presence

**The Power of Hands:** Humans interact with world primarily through hands.

#### Why Hands Are Special

**"Manipulate" = "manus" (hand):** Our definition of play involves hands
**Lucid dreaming technique:** Stare at your dream hand to stabilize the dream
**VR parallel:** Seeing your hands convinces mind the world is real

#### Looking vs. Touching

**World of difference:**
- Just looking → Limited presence
- Reaching out and touching → Powerful presence

**"Hand presence":** Special term for the power of seeing and using your hands

#### Design Principles

1. **Hand tracking required** - See your hands in VR
2. **Meaningful manipulation** - Actually affect the environment
3. **Natural interactions** - Hands work like in reality
4. **Tool use special case:**
   - Mind goes to tip of tool
   - Acceptable to make hands invisible during tool use
   - Players won't notice

5. **Deep design required** - Understanding mind-hand relationship

### 2. Social Presence

**The Power:** Being with another person in VR/AR feels very real.

#### Why Social Presence Is Strong

**Human brains dedicated to processing:**
- Faces
- Gestures
- Body language
- Social cues

**VR/AR advantage:** More natural than screen-based video calls

#### Elements

1. **Eye contact** - Powerful presence builder
2. **Gestures and movement** - See how they move
3. **Shared space** - Feel like you're together
4. **Object exchange** - Handing things back and forth
5. **Natural conversation** - Speak and gesture freely

#### Future

When connected headsets exceed 10 million, social presence will become very common.

### 3. Familiarity

**The Power:** Familiar places build presence quickly.

#### Why Familiarity Works

**Unfamiliar place:** Must look around to build mental 3D model
**Familiar place:** Brain fills in details without looking

#### Familiar Spaces

- Car interiors
- Fast food counters
- Basketball courts
- Living rooms
- Offices

**If already familiar, presence builds surprisingly fast**

#### Design Principles

1. **Use familiar archetypes** - Don't reinvent everything
2. **Balance novelty and familiarity** - Novel world, familiar elements
3. **Immediate surroundings familiar** - Where player stands/sits
4. **Leverage player expectations** - Brain knows how these spaces work

### 4. Realistic Audio

**Already covered in "Presence Breakers" - so important it goes both ways**

#### Building Presence Through Audio

1. **Spatialized sound** - Sounds from specific locations
2. **Contextual collisions** - Right sounds for right materials
3. **Environmental echo** - Small room ≠ large room
4. **Subtle ambient sounds** - Make world feel alive
5. **Responsive interactions** - Every touch makes a sound

**Effort required:** Double your typical sound design work

### 5. Proprioceptive Alignment

**The Power:** Real and virtual bodies strongly aligned.

#### *I Expect You To Die* Example

**Design:** Seated scenarios (desk, car)
**Result:** Strong presence from body alignment

#### Examples of Alignment

**Archery games:**
- Arrows stored in quiver on back
- Reach over shoulder to grab
- Natural, proprioceptively aligned

**Seated experiences:**
- Player sitting → character sitting
- Perfect alignment

#### Future

As technology improves:
- Foot tracking
- Full body tracking
- Even stronger alignment
- Even stronger presence

### 6. Comedy

**The Power:** Easier to build presence in comedic world than serious world.

#### Why Comedy Helps Presence

**Serious world:** Everything must work perfectly (breaks easily)
**Comedy world:** Discovering weird rules is the delight

#### Case Study: *Job Simulator*

**Scene:** Kitchen with knife and vegetables
**Problem:** Cutting creates arbitrary geometry (technically challenging)
**Solution:** Knife shatters when used on vegetables
**Result:** Weird comic moment, problem avoided

**In serious world:** This would break presence
**In comedy world:** Reinforces the strange rules, builds presence

#### Design Principles

1. **Cartoonish comedy allows imperfection** - Not everything works "right"
2. **Discovery is the fun** - Finding the weird rules
3. **Consistent weirdness** - Strange but predictable
4. **Presence through character** - Weird world feels more real when it's consistently weird

## Encouraging Looking Around

### The Problem

**Players hesitate to turn heads in VR:**
- Lifetime training: Screen media enjoyed by sitting still
- Low framerate experiences trained players: Keep head still = less sickness
- Subtle art form: Many designers don't get it right

### Why Looking Around Matters

**Builds presence:** Mind builds 3D model of space
**The more looking, the stronger the presence**

### Design Techniques

#### 1. Hold Players in Place

**Principle:** If players can move forward, they look forward
**Solution:** Hold them in one spot initially

**Example:** *I Expect You To Die* car level
- Player in driver's seat (parked car)
- First examine front: steering wheel, pedals
- Nothing happens → start exploring
- Gearshift, glove box, passenger seat
- Eventually: What's in back seat?

**Result:** Most players startled by how real it feels
**Why:** Familiarity + looking around = presence

#### 2. Give Reasons to Look

**Not just interesting things:**
- Items in back seat
- Multiple glove boxes
- Fine print (lean in to read)
- Physics (items fall to floor)
- Threats (laser from above)

#### 3. Encourage Head Movement

**Not just turning:**
- Looking up/down
- Leaning forward/back
- Leaning side-to-side
- Peeking around corners

**Avoid:** Making everything visible from starting point
**Instead:** Use positional tracking power

#### 4. Create Necessity

**Retinal scanner example (*I Expect You To Die*):**
- Demands you lean forward
- Then tries to kill you with laser
- Must move head to dodge

## Brownboxing: Prototyping in Reality

### The Technique

**Invented by:** Shawn Patton
**Concept:** Use cardboard boxes to simulate VR scenes in reality

### Process

1. **Build with cardboard:** Use boxes to create the scene
2. **Playtest physically:** Someone acts as game master
3. **Test interactions:** Touch, pick up, manipulate objects
4. **Check reach:** What can players actually touch?
5. **Measure everything:** Record dimensions
6. **Hand to modeler:** Excellent basis for digital prototype

### Why It Works

**You're simulating reality → prototype in reality!**

**Benefits:**
- Fast iteration
- Discover interaction patterns
- Understand reach limitations
- No coding required initially
- Haptic feedback (actually touching things)

### What You Can Test

- Object placement
- Interaction sequences
- Reachability
- Hand ergonomics
- Spatial relationships

### What You Can't Test

- Visual effects
- Perfect physics
- Audio
- Complex systems

**But you learn a lot quickly about core interactions**

## Hardware Considerations

### Different Inputs = Different Experiences

**Major differences:**
- Gamepad vs. hand controllers vs. hand tracking
- Standing vs. seated vs. room-scale
- Processing power
- Audio delivery
- Field of view

### Design Approach

1. **Choose your target platform first**
2. **Design specifically for that input system**
3. **Accept limited portability**

**Result:** Great on chosen platform vs. mediocre on all platforms

**Remember:** Lens of Transparency applies here too

## Lens #93½: Presence

Presence is invisible, ephemeral, fragile, and central to VR/AR experience.

### Questions to Ask

- **Is my player experiencing presence?** Could it be stronger?
- **What is diminishing or breaking presence?** Identify and fix
- **What is building or strengthening presence?** Do more of this

### Diagnostic Process

1. **Playtest and observe** - Watch for presence breaks
2. **Check all six breakers** - Which ones apply?
3. **Check all six builders** - Which could be stronger?
4. **Iterate** - Remove breakers, strengthen builders
5. **Test again** - Presence is fragile, test extensively

## Scale and Perspective Considerations

### Know How Big

**The Problem:** Virtual scales are not clear without real-world cues

**Missing cues in VR:**
- Limited lighting
- Simplified shadows
- Reduced texture detail
- No stereo vision depth (limited)
- No body reference (unless avatared)

#### Solution: Use Familiar Units

**Recommendation:** Use feet or meters
**Why:** Relate directly to real world
**Example:** If car is 30 feet long, you know something's wrong

#### Common Scale Problems

1. **Eye height** - Too high (>7 feet) or too low (<5 feet)
2. **People and doorways** - Strongest scale cues
3. **Texture scaling** - Bricks too big, tiles too small

### Third-Person Distortion

**The Problem:** Third-person view makes normal rooms feel crowded

**Our brains:** Allow us to be in two places at once (in body, 8 feet behind body)
**Result:** Wide open scenes feel fine; interior spaces feel cramped

#### Solutions Tested

**Solution 1:** Scale up room and furniture
- **Result:** Avatar feels tiny like a child

**Solution 2:** Scale up room, keep furniture normal
- **Result:** Cavernous room, lonely furniture clusters

**Solution 3:** Scale up room, spread furniture
- **Result:** Strangely sparse, unnaturally large gaps

**Solution 4 (Max Payne - WORKS):**
- Scale up room
- Scale up furniture a little bit
- Spread furniture out
- **Result:** Counteracts distortion effectively

## Summary: Presence Checklist

### Before Launch, Verify:

**Presence Breakers Removed:**
- [ ] Framerate ≥60fps (90+ ideal)
- [ ] Minimal or no virtual camera movement
- [ ] No barrel rolls or horizon rotation
- [ ] All interactions have sound
- [ ] Interactions intuitive and realistic
- [ ] Intensity appropriate for audience
- [ ] Real/virtual body alignment
- [ ] Player identity addressed

**Presence Builders Included:**
- [ ] Meaningful hand interactions
- [ ] Social presence (if multiplayer)
- [ ] Familiar elements
- [ ] Rich, contextual audio
- [ ] Proprioceptive alignment
- [ ] Appropriate tone (comedy/serious)
- [ ] Reasons to look around
- [ ] Brownbox testing completed

**Result:** Strong, lasting presence that makes your VR/AR experience magical.
