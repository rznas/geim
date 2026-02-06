# Technology Design Lenses

This file provides detailed guidance for using the three technology-focused design lenses from "The Art of Game Design."

## How to Use Design Lenses

**Design lenses are analytical tools:**
- Specific questions to examine your design
- Different perspectives on the same problem
- Help identify issues and opportunities
- Use multiple lenses for comprehensive analysis

**When to use technology lenses:**
- Evaluating technology choices
- Assessing new platforms
- Making technical architecture decisions
- Responding to technology hype
- Strategic planning for future technology

**How to apply:**
1. Read all questions for the lens
2. Answer each honestly
3. Note areas of concern or uncertainty
4. Discuss answers with team
5. Use insights to refine decisions

---

## Lens #104: The Lens of Technology

**Purpose:** Examine whether you're using the right technologies in the right way

**When to use:**
- Beginning new project (technology selection)
- Evaluating technology proposals
- Mid-project when technology issues arise
- Assessing whether to adopt new technology
- Strategic technology planning

### The Five Questions

#### Question 1: What technologies will help deliver the experience I want to create?

**What this question reveals:**
- Whether you've defined the experience first (not technology first)
- Which technologies are relevant vs. irrelevant
- Whether technology serves experience or vice versa

**How to answer:**

**Step 1:** Define the experience clearly
- What do I want players to feel?
- What should they be doing?
- What makes this experience unique?

**Step 2:** List technologies that could support this
- Directly enable the experience
- Remove barriers to the experience
- Enhance the experience

**Step 3:** List technologies that don't serve this experience
- Tempting but irrelevant
- Cool but decorational
- Distracting from core experience

**Red flags:**
- Can't articulate the experience clearly
- Technology list came before experience definition
- "Cool tech" on list that doesn't serve experience
- Multiple technologies doing the same job

**Example:**

**Experience goal:** "Players feel like skilled parkour athletes moving fluidly through environments"

**Technologies that help:**
- Physics engine with momentum and gravity
- Smooth animation blending system
- Responsive input with low latency
- First-person perspective
- Environmental surfaces marked for interaction

**Technologies that don't help:**
- Photorealistic graphics (nice but not essential)
- Voice acting (unrelated to core experience)
- Online multiplayer (adds complexity, doesn't serve core)

#### Question 2: Am I using these technologies in ways that are foundational or decorational?

**What this question reveals:**
- Whether technology enables new experiences (foundational)
- Whether technology just adds polish (decorational)
- Return on investment for each technology

**How to answer:**

**For each technology on your list:**

**Apply the "Can't exist without it" test:**
- Remove this technology mentally
- Does the game concept still make sense? → Decorational
- Does the game concept fall apart? → Foundational

**Apply the "One sentence description" test:**
- Describe game without mentioning this technology
- Description still works? → Decorational
- Description doesn't make sense? → Foundational

**Apply the "Experience enablement" test:**
- Does this enable a fundamentally new experience? → Foundational
- Does this make existing experience prettier? → Decorational

**Classify each:**
- F = Foundational
- D = Decorational
- ? = Unclear

**Red flags:**
- Most technologies classified as "?"
- Many decorational technologies with high cost
- Claiming everything is foundational
- Can't explain why something is foundational

**Example:**

**Parkour game:**
- Physics engine: F (enables fluid movement core to concept)
- Animation blending: F (makes movement feel fluid, essential to experience)
- First-person view: F (creates feeling of being the athlete)
- Photorealistic graphics: D (nice but movement would work without it)
- Dynamic soundtrack: D (enhances but not essential)

#### Question 3: If I'm not using them foundationally, should I be using them at all?

**What this question reveals:**
- Which decorational technologies are worth the cost
- Opportunities to simplify and focus
- Whether scope is too ambitious

**How to answer:**

**For each decorational technology:**

**Assess cost:**
- Development time required?
- Technical complexity added?
- Risk introduced?
- Maintenance burden?

**Assess benefit:**
- How much does this improve the experience?
- Is it expected by players (genre convention)?
- Does it provide competitive parity?
- Is the polish noticeable?

**Calculate ROI:**
- Low cost + High benefit = Keep it ✓
- High cost + High benefit = Consider carefully
- Low cost + Low benefit = Probably skip
- High cost + Low benefit = Definitely skip ✗

**Alternatives:**
- Could we achieve similar benefit cheaper?
- Could we skip this entirely?
- Could we defer to post-launch?

**Red flags:**
- Can't articulate benefits clearly
- "It's cool" as primary justification
- High cost with vague benefits
- Many decorational technologies, few foundational

**Example:**

**Parkour game decorational tech assessment:**

**Photorealistic graphics:**
- Cost: High (advanced rendering, art time)
- Benefit: Medium (looks impressive, but stylized works too)
- Decision: Go with stylized graphics instead (lower cost, still good)

**Dynamic soundtrack:**
- Cost: Medium (music composition, audio engineering)
- Benefit: Medium (enhances flow feeling)
- Decision: Keep it, ROI acceptable for core experience

**Voice acting:**
- Cost: High (actors, recording, localization)
- Benefit: Low (game is mostly movement, minimal story)
- Decision: Skip it, doesn't serve core experience

#### Question 4: Is this technology as cool as I think it is?

**What this question reveals:**
- Whether you're caught in technology hype
- If you're being objective vs. emotional
- Whether you're at peak of inflated expectations

**How to answer:**

**Test your enthusiasm:**
- Why am I excited about this?
- Is it genuinely useful or just novel?
- How many games have succeeded with this tech?
- What are the failure examples?

**Reality check questions:**
- Have I actually used this technology hands-on?
- What are its real limitations?
- What problems does it create?
- What have others learned using it?

**Hype Cycle check:**
- Where is this in the Hype Cycle?
- Peak of inflated expectations? High risk.
- Trough of disillusionment? May be undervalued.
- Plateau of productivity? Understood and safe.

**Get outside perspective:**
- Ask non-enthusiasts what they think
- Consult people who've used this technology
- What would a skeptic say?

**Red flags:**
- Can't name successful examples
- Ignore limitations / failure cases
- "This time it's different" thinking
- Dismissing skeptics without addressing concerns
- Only talking to other enthusiasts

**Example:**

**Initial enthusiasm:** "VR will make parkour game incredibly immersive!"

**Reality check:**
- Have I tried VR parkour? Yes, at conference.
- Limitations: Motion sickness from fast movement, expensive hardware
- Success examples: Some VR games, but fast movement is challenging
- Failure examples: Many VR games with locomotion issues

**Hype Cycle:** Still elevated hype for VR, approaching realistic phase

**Outside perspective:**
- Enthusiasts: Love it
- General gamers: Interested but concerned about motion sickness
- Developers: Warns about locomotion challenges in VR

**Revised assessment:**
- VR could be amazing but high risk
- Motion sickness is real barrier for fast parkour
- Could work, but needs significant R&D to solve locomotion
- Decision: Make for traditional screens first, explore VR later if successful

#### Question 5: Is there a "disruptive technology" I should consider instead?

**What this question reveals:**
- Whether you're open to alternative approaches
- If you're aware of emerging technologies
- Whether you're vulnerable to disruption

**How to answer:**

**Survey alternatives:**
- What other technologies could deliver this experience?
- What's currently "not good enough" but improving?
- What are competitors exploring?
- What technologies are crossing the "good enough" threshold?

**Assess disruptive potential:**
- Is there a technology that seems inferior now but is improving?
- Could it become "good enough" soon?
- Would it be faster, better, cheaper if it does?
- Could it change the game entirely?

**Consider unconventional approaches:**
- Are we following conventional wisdom blindly?
- Could a completely different approach work better?
- What if we zigged while others zagged?

**Risk/reward analysis:**
- Disruptive tech offers first-mover advantage
- But also higher risk
- Can we afford to be wrong?
- What's the cost of being disrupted?

**Red flags:**
- Not aware of any alternatives
- Dismissing alternatives without analysis
- "That's not how it's done" thinking
- Assuming current approach is only option
- Ignoring rapidly improving technologies

**Example:**

**Initial plan:** Traditional 3D parkour game on consoles

**Disruptive alternatives to consider:**

**Mobile with AR:**
- Currently: Not powerful enough for full parkour experience
- Improving: Rapidly (new phone chips, ARKit/ARCore)
- Could be disruptive: Yes, if crosses "good enough" threshold
- Assessment: Watch closely, could be future platform

**Cloud gaming:**
- Currently: Latency issues for precise parkour control
- Improving: Gradually (better networks, edge computing)
- Could be disruptive: Possibly, eliminates hardware barriers
- Assessment: Not ready yet, but monitor

**Simplified controls for broader audience:**
- Currently: Most parkour games use complex controls
- Alternative: Auto-parkour with simple timing mechanics
- Could be disruptive: Yes, could reach wider audience
- Assessment: Interesting, prototype this approach

**Decision:**
- Proceed with traditional console approach for now
- Prototype simplified controls in parallel (low risk, high potential)
- Monitor AR and cloud gaming for future opportunities
- Stay flexible, ready to pivot if disruption occurs

### Using Lens #104: Complete Workflow

**Step 1:** Answer all five questions in order

**Step 2:** Identify patterns in your answers
- Are you technology-first or experience-first?
- Are most technologies foundational or decorational?
- Are you objective about technology or caught in hype?
- Are you open to alternatives or locked in?

**Step 3:** Identify action items
- Technologies to add
- Technologies to remove
- Technologies to reconsider
- Alternatives to explore

**Step 4:** Discuss with team
- Share your answers
- Debate disagreements
- Build consensus
- Document decisions

**Step 5:** Revisit periodically
- Monthly during pre-production
- Quarterly during production
- When major technology decisions arise
- When new technologies emerge

---

## Lens #105: The Lens of the Crystal Ball

**Purpose:** Predict the future of specific game technologies

**When to use:**
- Strategic planning (1-5 year roadmap)
- Deciding whether to invest in emerging technology
- Evaluating technology partnerships
- Making platform choices
- Preparing for technology shifts

### The Three Question Framework

For each technology or platform you're considering:

#### Question 1: What will \_\_\_\_ be like two years from now? Why?

**What this question reveals:**
- Your near-term predictions
- Understanding of current trends
- Awareness of planned changes

**How to answer:**

**Process:**
1. **Examine current state** - Where is this technology now?
2. **Identify current trends** - What direction is it moving?
3. **Extrapolate carefully** - Continue trends 2 years (don't assume linear)
4. **Apply Hype Cycle** - Where will it be in cycle 2 years from now?
5. **Consider barriers** - What could prevent this trajectory?
6. **Make specific predictions** - Concrete, measurable outcomes
7. **Explain reasoning** - Why do you think this?

**Make it concrete:**
- Not: "VR will improve"
- Better: "VR headsets will cost $250 (down from $400), resolution will be 2K per eye, and 20% of console gamers will own one"

**Example: VR in 2 Years**

**Current state (now):**
- Costs $400-1000
- 1440p-1800p per eye
- ~10% of gamers own VR
- Limited AAA content

**Trends:**
- Prices gradually dropping
- Resolution improving
- More content being developed
- Stand-alone headsets emerging

**Hype Cycle:**
- Currently: Slope of enlightenment
- In 2 years: Approaching plateau for specific use cases

**Prediction:**
- Prices: $250-600 (30-40% drop)
- Resolution: 2K per eye standard
- Adoption: 15-20% of console/PC gamers
- Content: 5-10 major AAA VR titles released
- Clarity: Clear which genres work well in VR (simulators, horror, rhythm)

**Why:**
- Component costs declining steadily
- Competition driving price down
- Technology improving predictably
- Content pipeline now established
- Real use cases identified

#### Question 2: What will \_\_\_\_ be like four years from now? Why?

**What this question reveals:**
- Your mid-term predictions
- Understanding of deeper trends
- Awareness of potential disruptions

**How to answer:**

**Process:**
1. **Start with 2-year prediction** - Use as scaffolding
2. **Extrapolate further** - But expect non-linear changes
3. **Consider threshold crossings** - Will technology become "good enough"?
4. **Watch for disruption** - Could something disrupt this trajectory?
5. **Factor in competition** - How will market respond?
6. **Make specific predictions** - Even more specific than 2-year
7. **Explain reasoning** - Build on 2-year reasoning

**Increased uncertainty:**
- 4-year predictions less certain than 2-year
- Note confidence level
- Consider multiple scenarios

**Example: VR in 4 Years**

**Building on 2-year prediction:**
- $250-600 in 2 years
- 15-20% adoption in 2 years
- Clear genre success patterns in 2 years

**4-year extrapolation:**
- Prices: $150-400 (continued decline)
- Resolution: 4K per eye (rapid improvement)
- Adoption: 25-35% of gamers (crossing mainstream threshold)
- Content: 20+ major AAA VR titles, robust indie scene
- Clarity: VR standard consideration for certain genres

**Threshold crossing:**
- Might cross "good enough for mainstream" around year 3-4
- Sub-$200 price point critical
- Would trigger faster adoption

**Potential disruptions:**
- Apple or another major player could enter market (wild card)
- AR might steal VR's thunder (alternative trajectory)
- New input method could solve motion sickness (breakthrough)

**Confidence level:**
- 60% confidence in price prediction
- 40% confidence in adoption rate (depends on threshold crossing)
- 70% confidence in content ecosystem

**Why:**
- Continued component cost decline
- Market maturity drives standardization
- Content pipeline now mature
- But: Significant wild cards (Apple, AR, etc.)

#### Question 3: What will \_\_\_\_ be like ten years from now? Why?

**What this question reveals:**
- Your long-term vision
- Understanding of fundamental trends
- Ability to imagine transformation

**How to answer:**

**Process:**
1. **Start with 4-year prediction** - Use as foundation
2. **Consider transformation** - What could fundamentally change?
3. **Think about convergence/divergence** - Will this merge or specialize?
4. **Imagine breakthroughs** - What innovations could occur?
5. **Consider saturation** - Will growth slow or continue?
6. **Make directional predictions** - Specific is harder at 10 years
7. **Explain reasoning** - What assumptions underlie this?

**High uncertainty:**
- 10-year predictions are speculation
- Focus on direction more than details
- Multiple scenarios useful
- Note confidence level (low)

**Example: VR in 10 Years**

**Building on 4-year prediction:**
- Mainstream adoption in 4 years
- Rich content ecosystem in 4 years
- Clear use cases in 4 years

**10-year vision:**

**Scenario A (Optimistic):**
- VR becomes standard gaming platform (alongside console/PC/mobile)
- 50-60% of gamers own VR
- $100-200 entry point
- Wireless, lightweight, comfortable
- Most new games have VR mode
- VR-first studios thriving

**Scenario B (Pessimistic):**
- VR remains niche (20-30% of gamers)
- Clear use cases (simulations, specific genres)
- Plateaus, doesn't displace traditional gaming
- Coexists rather than dominates

**Scenario C (Disruptive):**
- AR displaces VR for most use cases
- VR remains for full immersion experiences only
- Hybrid AR/VR devices dominate
- New interaction paradigms emerge

**Most likely:**
- Blend of A and B
- VR becomes established platform (Law of Divergence)
- 40-50% adoption (significant but not universal)
- Coexists with other platforms
- Clear specialization (what VR is best for)

**Why:**
- Law of Divergence suggests coexistence not replacement
- Human preferences vary (not everyone wants full immersion)
- Technology will continue improving
- Content ecosystem will be mature
- But: Significant uncertainties (AR, Apple, new paradigms)

**Confidence level:**
- 30% confidence (too many variables)
- Directional only, not specific numbers

### Using Lens #105: Complete Workflow

**Step 1:** Choose specific technology to analyze
- Platform (VR, mobile, cloud gaming)
- Technology category (AI, graphics, networking)
- Specific feature (ray tracing, haptics, voice)

**Step 2:** Answer all three questions in order
- 2 years (high confidence, specific)
- 4 years (medium confidence, fairly specific)
- 10 years (low confidence, directional)

**Step 3:** Document your reasoning
- What trends support this?
- What could change this?
- What's your confidence level?

**Step 4:** Create strategic implications
- If prediction is right, what should we do?
- What should we do now to prepare?
- How do we hedge if wrong?

**Step 5:** Discuss with others
- Challenge assumptions
- Identify blind spots
- Refine predictions

**Step 6:** Review and update
- Quarterly: Check 2-year predictions
- Annually: Check 4-year predictions
- Every 2 years: Check 10-year predictions
- Learn from mistakes

**Example Application:**

**Technology:** Cloud Gaming

**2-year prediction:**
- 10-15% of games played via cloud
- Major players (Google, Microsoft, Nvidia) established
- Works well for casual/single-player, struggles with competitive
- $10-15/month subscription pricing standard

**4-year prediction:**
- 20-30% of games played via cloud
- Latency improved, works for more genres
- Hybrid models (stream + local processing)
- Data cap issues resolved or worked around

**10-year prediction:**
- 40-50% of games played via cloud
- Coexists with local gaming (Law of Divergence)
- Specialized: Cloud for casual/instant access, local for competitive/high-fidelity

**Strategic implications:**
- Now: Ensure games work well streamed (test on cloud platforms)
- 2 years: Consider cloud-first features (instant access, cross-device play)
- 4 years: Design some games specifically for cloud advantages
- Hedge: Keep local play excellent, don't depend entirely on cloud

---

## Lens #106: The Lens of Utopia

**Purpose:** Ensure your technology choices lead toward a better world

**When to use:**
- Evaluating technology for new projects
- Making major strategic decisions
- Feeling stuck or uninspired
- Responding to technology hype
- Assessing which technologies to prioritize

### The Four Questions

#### Question 1: Am I creating something that feels magical?

**What this question reveals:**
- Whether your technology creates delight
- If you're delivering on the promise of games
- Whether players will be excited

**What "magical" means:**
- Intuitive yet surprising
- Works better than expected
- Delightful to use
- Creates wonder
- Seems impossible but is real

**Examples of magical technology:**
- iPhone/iPad touch interface (felt magical in 2007)
- Wii remote (motion control felt magical)
- Portal's portal gun (physics felt magical)
- Kinect gesture control (mixed results, but goal was magical)

**How to answer:**

**Test for magic:**
- When people first experience this, do their eyes light up?
- Does it work better/easier than expected?
- Is there a delightful surprise?
- Does it feel like the future?
- Do people want to show it to friends?

**Warning signs of NOT magical:**
- "It's technically impressive" (engineers love it, players don't)
- "It'll be useful" (practical but not delightful)
- "It's like X but slightly better" (incremental, not magical)
- Players say "meh" when they try it

**How to make it magical:**
- Hide complexity, show simplicity
- Exceed expectations
- Add delightful details (juice, feedback, polish)
- Make it feel natural and intuitive
- Create moments of wonder

**Example:**

**Non-magical:** Virtual keyboard for VR (works, but clunky)
**Magical:** Voice recognition that actually works perfectly (delightful surprise)

**Non-magical:** Better graphics (expected improvement)
**Magical:** Portal's portals (physics you can see through and interact with)

**Non-magical:** Realistic NPCs (incremental improvement)
**Magical:** NPC that actually understands and responds naturally (would feel magical)

#### Question 2: Do people get excited just hearing about what I am making? Why or why not?

**What this question reveals:**
- Whether your technology has a compelling story
- If the vision is clear and exciting
- Whether you're solving real problems or creating novelties

**How to answer:**

**Test the pitch:**
- Describe your game/technology in 2 sentences
- Watch people's reactions
- Are they excited or confused?
- Do they lean in or lean back?
- Do they ask follow-up questions?

**If YES (excited):**
- What specifically excited them?
- Is it the technology or the experience?
- Is excitement widespread or niche?
- Is it genuine or polite?

**If NO (not excited):**
- Why not?
- Is the vision unclear?
- Does it sound like a solution looking for a problem?
- Is it too incremental?
- Is the technology obscuring the experience?

**Make it exciting:**
- Lead with experience, not technology
- Paint a vivid picture
- Solve a real problem people have
- Create something people didn't know they wanted
- Tell a story, not a spec sheet

**Example:**

**Not exciting:**
"We're making a game using the latest ray tracing technology for realistic lighting"
- Reaction: "Oh, cool" (polite but not excited)
- Problem: Technology-first, incremental improvement

**Exciting:**
"We're making a game where you can see through walls using sound waves, like a bat, and you navigate by echolocation"
- Reaction: "Whoa, how does that work?"
- Success: Experience-first, novel, intriguing

**Not exciting:**
"VR game with hand tracking"
- Reaction: "That's been done"
- Problem: Feature list, not vision

**Exciting:**
"You're a wizard casting spells with your hands, and the game reads your exact gestures to determine what happens - nail the gesture and massive effect, mess it up and unpredictable results"
- Reaction: "That sounds amazing!"
- Success: Clear vision, magical promise, novel interaction

#### Question 3: Does my game advance the state of the art in a meaningful way?

**What this question reveals:**
- Whether you're contributing to progress
- If you're innovating or imitating
- Whether you're pushing boundaries

**What "meaningful" means:**
- Solves a problem others haven't
- Enables experiences previously impossible
- Teaches the industry something new
- Opens doors for future work

**Not meaningful:**
- Slightly better graphics
- Minor feature additions
- Doing what's been done, just prettier
- Technology for technology's sake

**How to answer:**

**Ask:**
- What will be possible after my game that wasn't before?
- What will other designers learn from this?
- Am I solving a hard problem or an easy one?
- Is this foundational technology?
- Will this be studied and copied?

**Test:**
- Could this appear in GDC talks as a case study?
- Would other developers be interested in how you did it?
- Does it enable a new genre or gameplay type?
- Does it solve a problem many have tried and failed?

**Red flags:**
- "It's been done, but we'll do it better" (incremental)
- "Players expect this feature" (table stakes)
- "It looks cool" (decoration)
- Can't articulate what's novel

**Examples:**

**Meaningful advances:**
- Portal: Portals that maintain velocity and sightlines (foundational mechanic)
- Shadow of the Colossus: Climbing on moving creatures (new interaction)
- Braid: Time manipulation as puzzle mechanic (new genre possibilities)
- Dark Souls: Asynchronous multiplayer messages (new social design)

**Not meaningful:**
- Better grass rendering (nice but incremental)
- Another battle royale game (done many times)
- Slightly improved inventory system (minor iteration)

#### Question 4: Does my game make the world a better place?

**What this question reveals:**
- Whether you're fulfilling the promise of games as utopia
- If you're contributing positively
- Whether you're being responsible with your influence

**What "better world" means:**
- Helps people in some way
- Creates positive experiences
- Connects people meaningfully
- Transforms players for the better
- Doesn't create harm

**Five utopian technology directions** (from Chapter 29):

**1. Magical interfaces**
- Intuitive, delightful interactions
- Reduces barriers between thought and action
- Makes technology disappear

**2. Fair payment**
- Players find system fair
- Sustainable for developers
- No exploitation or manipulation
- Respects player's time and money

**3. Less artificial AI**
- AI that feels interesting and human-like
- Creates meaningful interactions
- Not just smarter, but more relatable
- Enhances rather than replaces human connection

**4. Family and friends**
- Connects people meaningfully
- Supports real relationships
- Brings people together
- Games couples play together, families share

**5. Transformation**
- Helps people become who they want to be
- Mental growth (learning, thinking)
- Physical growth (health, fitness)
- Spiritual growth (meaning, purpose)

**How to answer:**

**Ask:**
- Does my game fit one of the five utopian directions?
- What positive impact will it have?
- Could it cause harm? (addiction, exploitation, toxicity)
- Am I being responsible with my influence?
- Would I be proud to explain this to family/friends?

**Consider:**
- Entertainment alone is valuable (joy matters)
- But greater impact is possible
- Are you taking the easy path or the meaningful one?

**Red flags:**
- Exploitative monetization
- Encouraging addiction
- Fostering toxicity
- Wasting people's time without value
- Making world worse for profit

**Examples:**

**Making world better:**
- Game that helps couples communicate (family/friends)
- Fitness game that makes exercise fun (transformation)
- Educational game that builds real skills (transformation)
- Social game with positive community (family/friends)
- Fair free-to-play model (fair payment)

**Not making world better (or worse):**
- Exploitative gambling mechanics (predatory)
- Game designed to maximize addiction (harmful)
- Toxic competitive environment (damages social fabric)
- Meaningless time waste (neutral at best)

### Using Lens #106: Complete Workflow

**Step 1:** Answer all four questions honestly

**Step 2:** Identify which utopian directions you're pursuing
- Magical interfaces?
- Fair payment?
- Less artificial AI?
- Family and friends?
- Transformation?

**Step 3:** Assess your answers
- Are you creating something meaningful?
- Is there a clear positive impact?
- Are you avoiding harm?
- Could you do better?

**Step 4:** Make it more utopian
- How could you increase the magical feeling?
- How could you advance the state of the art more?
- How could you make a bigger positive impact?
- What would need to change?

**Step 5:** Use as North Star
- When making technology decisions, return to this lens
- Choose technologies that lead toward utopia
- Reject technologies that lead away from it

**Example Application:**

**Project:** Mobile puzzle game

**Question 1 - Magical?**
- Current: Standard match-3, competent but not magical
- Opportunity: Add surprising physics or unique mechanic

**Question 2 - People excited?**
- Current: "Another puzzle game" - polite not excited
- Opportunity: Find the unique hook, lead with that

**Question 3 - Advance state of art?**
- Current: No, incremental improvement
- Opportunity: What puzzle mechanic hasn't been explored?

**Question 4 - Better world?**
- Current: Entertainment, but monetization exploitative
- Opportunity: Fair payment model, or transformation goal (brain training)

**Redesign:**
- Add novel mechanic (portal-style connections between puzzle areas)
- Fair one-time payment or ads with option to remove
- Daily challenges that actually build spatial reasoning
- Social features that connect family members across distance

**Result:**
- More magical (novel mechanic)
- More exciting (unique hook)
- Advances state of art (new mechanic)
- Better world (fair payment + transformation + connection)

---

## Using All Three Lenses Together

### The Complete Analysis

**For any technology decision:**

**Step 1:** Apply Lens #104 (Technology)
- Ensure technology serves experience
- Verify foundational vs. decorational
- Check for alternatives

**Step 2:** Apply Lens #105 (Crystal Ball)
- Predict where technology is heading
- Assess timing and risk
- Plan for future states

**Step 3:** Apply Lens #106 (Utopia)
- Ensure meaningful positive impact
- Choose technologies that lead to better world
- Validate excitement and advancement

**Step 4:** Synthesize Insights
- Do all three lenses align?
- Where are the conflicts?
- What's the best path forward?

### Example: Evaluating VR for New Project

**Lens #104 Analysis:**
- Experience: Want players to feel presence in alien world
- VR: Foundational (creates presence), not decorational
- Alternative: Impressive graphics on screen (less immersive)
- Decision: VR is right technology for this experience

**Lens #105 Analysis:**
- 2 years: 15-20% adoption, $250-600, good for immersion
- 4 years: 25-35% adoption, mainstream threshold
- 10 years: Established platform, 40-50% adoption
- Decision: Good timing, will reach more players over game's lifetime

**Lens #106 Analysis:**
- Magical? Yes, VR presence is magical
- Excited? Yes, alien world in VR is compelling
- Advances art? Yes, pushing VR presence techniques
- Better world? Yes, creates wonder and exploration
- Decision: Aligned with utopian goals

**Synthesis:**
- All three lenses support VR choice
- Technology serves experience (Lens #104)
- Timing is good (Lens #105)
- Leads toward utopia (Lens #106)
- Proceed with VR project ✓

### When Lenses Conflict

**Example: Exploitative monetization in otherwise good game**

**Lens #104:** Technology works (payment system functions)
**Lens #105:** Trend toward this model (others doing it)
**Lens #106:** Not making world better (exploitation)

**Resolution:**
- Lens #106 veto
- Find alternative monetization
- Make world better while staying sustainable

**Principle:** When lenses conflict, Lens #106 (Utopia) should guide final decision

---

## Key Takeaways

**Lens #104 (Technology):**
- Experience first, technology second
- Foundational beats decorational
- Stay objective about "cool" technology
- Consider disruptive alternatives

**Lens #105 (Crystal Ball):**
- Make concrete, specific predictions
- 2/4/10 year timeframes
- Always explain reasoning
- Review and learn from mistakes

**Lens #106 (Utopia):**
- Create magical experiences
- Advance the state of the art
- Make the world better
- Choose technologies that lead to utopia

**Using all three:**
- More comprehensive than any single lens
- Identifies conflicts and trade-offs
- Guides better decisions
- Keeps focus on what matters: Creating great games that make the world better