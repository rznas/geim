# Iteration and Prototyping Guide

## The Rule of the Loop

> **The more times you test and improve your design, the better your game will be.**

This is an absolute truth. No exceptions. Your entire development strategy must revolve around maximizing the number of useful loops.

**Two critical questions:**
1. How can I make every loop count?
2. How can I loop as fast as possible?

## The Eight Filters

Your design must pass through all eight filters. When it fails one, change the design and test all eight again.

### Filter #1: Artistic Impulse
**Question:** Does this game feel right?

**Who decides:** You and your team

**What it means:**
- Trust your gut feelings
- If something feels wrong, it probably is
- If it feels right, it might be right (other filters will confirm)
- Most personal of the filters

**Watch out for:**
- Different team members have different instincts
- Can be hard to resolve conflicts
- But your feelings matter—they're important data

### Filter #2: Demographics
**Question:** Will the intended audience like this game enough?

**Who decides:** Your target audience (through research and testing)

**What it means:**
- Age groups have different preferences
- Genders may prefer different things
- Cultural backgrounds affect taste
- "Gamers" vs. "casual players" want different experiences

**Watch out for:**
- Designers often have unusual tastes
- "I'm like my audience" is sometimes very wrong
- May limit which audiences you can design for

### Filter #3: Experience Design
**Question:** Is this a well-designed game?

**Who decides:** You, using lenses and design principles

**What it means:**
- Good aesthetics
- Balanced mechanics
- Interesting challenges
- Clear feedback
- Good interest curves
- Resonant theme
- Many lenses in this book test this

**Watch out for:**
- Can get lost in details
- Need to see both forest and trees

### Filter #4: Innovation
**Question:** Is this game novel enough?

**Who decides:** Market, players, you

**What it means:**
- New game needs SOMETHING new
- Not everything has to be novel
- But something must stand out
- What counts as "novel enough" is subjective but crucial

**Watch out for:**
- Too innovative = confusing
- Not innovative = boring
- Balance is key

### Filter #5: Business and Marketing
**Question:** Will this game be profitable?

**Who decides:** Business team, market analysis

**What it means:**
- Theme and story appealing to consumers?
- Game explainable at a glance?
- Features competitive with similar games?
- Production cost sustainable?
- Business model makes sense?

**Watch out for:**
- Your innovative idea may be commercially untenable
- Market realities can force major changes
- But don't let business kill what makes game special

### Filter #6: Engineering
**Question:** Is it technically possible to build this game?

**Who decides:** Engineers and programmers

**What it means:**
- Can technology support your vision?
- Is timeline realistic for technical scope?
- Are there unknown technical risks?
- What features does tech enable that you haven't thought of?

**Watch out for:**
- Novice designers frustrated by technical limits
- But technical limits can inspire creative solutions
- Engineering filter can reveal new possibilities

### Filter #7: Social/Community
**Question:** Does this game meet our social and community goals?

**Who decides:** You, community team, players

**What it means:**
- Need strong social component?
- Viral potential important?
- Thriving community required?
- Design strongly impacts these

**Watch out for:**
- Social features aren't "add-ons"
- Must be designed into core from start
- Different for different game types

### Filter #8: Playtesting
**Question:** Do the playtesters enjoy the game enough?

**Who decides:** Your target audience playtesters

**What it means:**
- Arguably most important filter
- Imagining gameplay ≠ actual gameplay ≠ watching others play
- Must get to playable state ASAP
- Application reveals what changes are needed
- Often changes other filters as you learn

**Watch out for:**
- Can only playtest once game is playable
- The later you playtest, the more expensive changes become
- Don't skip this filter—it's too important

### Using the Filters

**At any decision point, ask all eight questions:**
1. Does this feel right?
2. Will the intended audience like this enough?
3. Is this well-designed?
4. Is this novel enough?
5. Will this be profitable?
6. Is it technically possible?
7. Does this meet social/community goals?
8. Do playtesters enjoy this enough?

**When you can answer YES to all eight, you're done with that design element.**

**Sometimes you may need to change a filter:**
- Example: Targeting males 18-35, stumble into something better for females 50+
- Changing filters is fine when constraints allow
- Just ensure design passes NEW filter set

## Risk Assessment

### Why Risk Assessment Matters

**The naive strategy:**
- Start slapping game together
- Hope for the best
- Sometimes works, sometimes catastrophic mess
- When it doesn't work, ship bad game or blow budget

**The smart strategy:**
- Face every risk immediately
- Build prototypes to mitigate risks
- Get problems out of the way early
- Proceed with confidence

### Conducting Risk Assessment

**Step 1: Brainstorm all risks**

List everything that might jeopardize the project.

**Example risks for "Prisoners of Bubbleville" (parachuting cat game):**
1. Bubble collecting/vulture shooting mechanic might not be fun
2. Game engine might not handle drawing entire city + bubbles + vultures
3. Thirty different houses might take more time than we have
4. Players might not like our characters and story
5. Publisher might insist we retheme to summer movie about stunt parachuting

**Common risk categories:**
- **Gameplay risks:** Will it be fun?
- **Technical risks:** Can we build it?
- **Art risks:** Can we create the visuals we need?
- **Schedule risks:** Do we have enough time?
- **Scope risks:** Are we trying to do too much?
- **Business risks:** Will external factors force changes?

**Step 2: Prioritize risks**

**Criteria:**
- **Probability:** How likely is this to happen?
- **Impact:** How bad if it happens?
- **Dependencies:** Does this risk affect other risks?

**High priority risks:**
- High probability + high impact
- Block other work (upstream dependencies)
- Fundamental to the game

**Low priority risks:**
- Low probability + low impact
- Don't affect other work
- Peripheral to core game

**Step 3: Develop mitigation strategies**

For each high-priority risk, design a prototype or process to mitigate it.

### Risk Mitigation Examples

**Risk: "Bubble mechanic might not be fun"**

**Mitigation:**
- Programmer makes abstract 2D version
- Simple geometric shapes instead of animated characters
- Working game in 1-2 weeks
- Test if fun immediately
- Modify quick prototype until fun
- THEN build elaborate 3D version

**Cost:**
- 1-2 weeks prototyping
- Throw away prototype code

**Benefit:**
- Know the right game to build
- Don't endlessly code and recode wrong game
- Multiple early loops

**Risk: "Engine can't handle city + bubbles + vultures"**

**Mitigation:**
- Build quick technical stress test
- Approximate number of items on screen
- No gameplay, purely technical test
- Test now, before any art generated

**Cost:**
- Few days programmer time
- Throwaway code

**Benefit:**
- If it works, great! Proceed with confidence
- If it doesn't, figure out solution NOW
- Artists don't waste time on art that won't work

**Risk: "Thirty houses too much art time"**

**Mitigation:**
- Artist creates ONE house immediately
- One animated character
- Time how long it takes
- Extrapolate to thirty houses

**Cost:**
- Time for one house + character

**Benefit:**
- If sustainable, proceed
- If not, change design NOW (fewer houses, reuse interiors)
- Don't get halfway through development before realizing doom

**Risk: "Players won't like characters/story"**

**Mitigation:**
- Art prototype (bulletin board, not computer)
- Concept art of characters
- Test renders of settings
- Storyboards showing story progression
- Show to target demographic
- Gauge reactions

**Cost:**
- Artist time for concept art
- Time to show people and gather feedback

**Benefit:**
- Learn what they like/don't like and WHY
- Can iterate on art before implementation
- Character/story figured out independent of game

**Risk: "Might have to retheme to movie"**

**Mitigation:**
- Lean on management for quick decision
- OR design game that could more easily be rethemed
- OR plan for two different games

**Cost:**
- Political capital, or design flexibility

**Benefit:**
- Risk considered immediately
- Not blindsided in middle of project

## Agile Development Principles

### Core Philosophy

**Traditional (Waterfall):**
- Linear process
- Rigid phases
- Plan everything upfront
- Hope it goes according to plan
- **Problem:** Violates Rule of the Loop

**Agile:**
- Iterative process
- Flexible goals
- Plan for change
- Adapt continuously
- **Benefit:** Maximizes loops

### Key Agile Practices

**Flexible Goals:**
- Don't know precisely what you'll have time to create
- Plan around flexible goal set
- Not just tolerate changes—PLAN for changes
- Adapt to new ideas and information throughout

**Prioritized Backlog:**
- List of features sorted by priority
- New ideas added anytime
- Reprioritize each sprint
- Important features rise to top
- Work on most important things
- **Key:** Not everything on backlog will get done
- **Guarantee:** Most important things WILL get done

**Sprints:**
- Few weeks long (1-4 typically)
- Concrete working deliverable at end
- "The ultimate inspiration is the deadline"
- More deadlines = more things get done

**Scrum Meetings:**
- Daily, 10-15 minutes
- Standing up (keeps brief)
- Each person says THREE things only:
  1. What I accomplished yesterday
  2. What I plan to accomplish today
  3. What problems I'm facing
- Solutions discussed one-on-one after meeting
- Everyone stays aware of team progress

**Demo Day:**
- End of sprint
- Everyone sees and experiments with what was produced
- Face-to-face
- Work from new baseline
- Risk analysis
- Plan next sprint together

**Retrospectives:**
- End of sprint
- NOT about product
- About PROCESS
- What are we doing right?
- What are we doing wrong?
- How should we adjust for next sprint?

## Ten Prototyping Tips

### Tip #1: Answer a Question

**Every prototype must answer a question.** Sometimes more than one.

State the question clearly. If you can't, your prototype is in danger of becoming a time-wasting boondoggle.

**Sample questions:**
- How many animated characters can our technology support?
- Is our core gameplay fun?
- Does it stay fun for a long time?
- Do our characters and settings fit together aesthetically?
- How large does a level need to be?

**Focus only on answering the key question.** Resist temptation to overbuild.

### Tip #2: Forget Quality

**All that matters:** Does it answer the question?

**Faster = better**, even if barely works and looks rough.

**Why rough is actually better:**
- Playtesters/colleagues more likely to point out problems
- Polished prototypes hide real problems
- False sense of security

**Game developers are proud of their craft:**
- Artists spend too much time on early concept sketches
- Programmers spend too much time on good software engineering for throwaway code
- **Resist this temptation**

**Rule of the Loop:** Faster prototype that answers question = more loops = better game.

### Tip #3: Don't Get Attached

**"Plan to throw one away—you will anyway."** - Fred Brooks

Really, you may throw away MANY prototypes.

**Less experienced developers struggle with this:**
- Feels like failure
- But it's not—it's learning

**Mindset:**
- It's all temporary
- All that matters is answering the question
- Each prototype is practice for the "real" system
- Learning opportunity

**You won't throw out everything:**
- Keep little pieces that work
- Combine them to make something greater
- But be willing to discard

**"You must learn how to cut up your babies."** - Nicole Epps

### Tip #4: Prioritize Your Prototypes

**When you need several prototypes:**

**Prioritize by:**
1. **Biggest risks first**
2. **Upstream dependencies first** (if results make other prototypes meaningless)

**Don't do everything at once randomly.**

### Tip #5: Parallelize Prototypes Productively

**Multiple prototypes simultaneously = more loops = better.**

**While system engineers work on tech prototypes:**
- Artists work on art prototypes
- Game scripters work on gameplay prototypes

**Lots of small, independent prototypes = answer more questions faster.**

**Key:** Independent. If one depends on another, do sequentially.

### Tip #6: It Doesn't Have to Be Digital

**Goal:** Loop as usefully and frequently as possible.

**Get software out of the way when possible.**

**Paper prototypes (board games):**
- Fast to make
- Often capture same gameplay
- Spot problems sooner

**Turn-based games:**
- Easy to paper prototype
- Track hit points on paper/whiteboard
- Play again and again
- Add/subtract rules until balanced

**Example:** Toontown Online turn-based combat prototyped as simple board game. Carefully balanced many attack types and combos.

**Real-time games can be paper prototyped too:**
- Convert to turn-based mode (if captures gameplay)
- OR play in real-time with helpers
- Use metronome for timing

**Tetris paper prototype:**
- Cut cardboard pieces
- Draw board on paper
- Helper chooses pieces randomly, slides them down
- You grab and rotate into place
- Complete line: pause and cut with X-Acto knife
- **Good enough** to test piece shapes and drop speed
- **Ready in 15 minutes**

**Halo paper prototype:**
- Graph paper map
- Game pieces for players/enemies
- One person controls each character
- Metronome (5-second ticks)
- Move one square per tick
- Shoot one shot per tick (line of sight)
- Slow motion, but good for thinking
- Test map size, room shapes, weapon properties
- **Lightning fast development**

### Tip #7: It Doesn't Have to Be Interactive

**Simple sketches and animations** can answer gameplay questions.

**Example:** Prince of Persia: Sands of Time
- Novel jumping and time-reversal mechanics
- Originally prototyped with non-interactive animations
- Team could look at, think about, discuss
- Figured out how to create interactive systems for that vision
- No interaction required for early prototyping

### Tip #8: Pick a "Fast Loop" Game Engine

**Traditional software development (like baking bread):**
1. Write code
2. Compile and link
3. Run game
4. Navigate to part you want to test
5. Test it
6. Back to step 1

**Problem:** If you don't like the result, start over. Takes too long.

**Fast-loop engine (like working with clay):**
1. Run game
2. Navigate to part you want to test
3. Test it
4. Write code
5. Back to step 3 (code changes while running!)

**Benefits:**
- Recode system while it's running
- More loops per day
- Quality goes up proportionally

**Technologies that enable this:**
- Late-binding languages (Scheme, Smalltalk, Python)
- Unity engine (JavaScript or C#)
- Unreal engine (Blueprints visual scripting + C++)

**Tradeoff:**
- Scripting languages run slower than C++/Assembly
- But extra computing time is TINY compared to improvement from more iterations

### Tip #9: Build the Toy First

**Distinction:**
- **Toy:** Fun to play with for its own sake
- **Game:** Has goals, richer experience, problem solving

**Many games are built on top of toys:**
- Ball (toy) → Baseball (game)
- Avatar that runs and jumps (toy) → Donkey Kong (game)

**Strategy:**
- Make sure toy is fun to play with
- THEN design game around it

**Why:**
- Once toy is built, might surprise you what makes it fun
- Whole new game ideas might emerge
- Game will be fun on two levels (toy + game)

**Example: Lemmings**
- Team wanted little world with lots of creatures walking around
- Weren't sure what game would be
- Built the "toy" first
- Once playable, talked about what games could be built around it
- Medium/toy came before game

**Example: Grand Theft Auto**
- Not designed as GTA initially
- Designed as "a living, breathing city that was fun to play"
- Once city was fun toy, decided what game to build
- **GTA came from Pac-Man:** Dots = people, yellow car = Pac-Man, police = ghosts
- Toy first, then game mechanics

**Benefits:**
- Fun on two levels
- If gameplay based on most fun parts of toy, levels support each other
- Can radically increase quality

### Tip #10: Seize Opportunities for More Loops

**Sometimes more time becomes available unexpectedly.**

**Greatest successes often come from unexpected loops:**

**Example: Halo**
- Originally: Mac game
- Deal with Microsoft → Change to PC
- Team used time to throw out what wasn't working
- Iterate further on what was good
- Second windfall: Microsoft asked to change PC to Xbox
- Extra time for technical changes also afforded gameplay iteration
- **Result:** Quality went through the roof

**Lesson:** When schedule shifts happen, use time to iterate more, not just to catch up.

## Practical Iteration Workflow

### The Formal Loop

1. **State the problem**
2. **Brainstorm possible solutions**
3. **Choose a solution**
4. **List risks of that solution**
5. **Build prototypes to mitigate risks**
6. **Test prototypes**
7. **If good enough, stop. Otherwise:**
8. **State new problems → back to step 2**

### Progression Through Loops

**Loop 1: Broad problem**
- "Design a new kind of racing game"

**Loop 2: More specific problem**
- "Design a racing sub game where subs can fly"

**Loop 3: Very specific problems**
- "Figure out if we can schedule all animation time for dinosaurs"
- "Develop the right number of levels"
- "Figure out all power-ups"
- "Determine all weapons (avoid rapid-fire machine guns for networking)"

**Pattern:**
- Problems gradually evolve
- Get more specific with each loop
- Ugly problems surface quickly
- Addressed early when cheap to fix

### Mark Cerny's Method

**Distinction:**
- **Preproduction:** Still figuring out fundamental design
- **Production:** Know enough to safely schedule rest

**Milestone:** Two publishable levels complete
- All features implemented
- Fully polished
- Shippable quality

**When you reach this:**
- You're in production
- Usually 30% of total budget spent
- Can now accurately schedule rest
- Example: $1M to milestone → probably $2.3M total

**Value:**
- Most accurate way to plan release date
- But won't know cost/date until 30% spent
- This is unavoidable
- Guides toward predictability ASAP

### The Plan-To-Cut Rule

**When planning, build so:**
- If 50% of budget removed
- You'd STILL have shippable game

**Forces:**
- Keep systems simple
- Prioritize ruthlessly
- Plan for things going wrong

**Guarantee:**
- When things go wrong (they will)
- And you cut features (you will)
- Still have shippable game

### The 50% Rule

**All core gameplay elements playable at 50% schedule mark.**

**Means:**
- ~50% time getting it working
- ~50% time making it great

**Common mistake (don't do this):**
- 80% time getting it working
- 20% time making it great
- Things go wrong (always)
- That 20% gets eaten
- Result: Late game that's weak

**Why 50% works:**
- Even when things go wrong
- Still have time for crucial loops
- Loops make game great

## Passion Check

**At end of every sprint:**

1. Am I filled with blinding passion about how great this game will be?
2. If I've lost the passion, can I find it again?
3. If the passion isn't coming back, shouldn't I be doing something else?

**Passion is your subconscious saying:** "This excites me!"

**If passion is gone:**
- Something has gone wrong
- If you can't figure out what, game may be dead on arrival

**Passion is irrational but crucial:**
- Has its dangers (it's emotion, not logic)
- But take it seriously
- More often than not, passion knocks down obstacles
- Passion carries games to success

## Remember

> "The Rule of the Loop: The more times you test and improve your design, the better your game will be."
>
> "Because the sage always confronts difficulties, he never experiences them." - Tao Te Ching
>
> "Plan to throw one away—you will anyway." - Fred Brooks
>
> "The ultimate inspiration is the deadline." - Nolan Bushnell
