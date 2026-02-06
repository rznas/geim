# Game Economies - Design and Balancing Guide

This guide provides detailed information on designing and balancing game economies, based on Chapter 13 of *The Art of Game Design*.

---

## What is a Game Economy?

### Definition
A game economy is defined by **two meaningful decisions**:

1. **How will I earn money?**
2. **How will I spend the money I have earned?**

### What Counts as "Money"?
**Money = anything that can be traded for something else**

Examples:
- Actual in-game currency
- Skill points that can be spent on different skills
- Resources that can be exchanged
- Energy or action points
- Virtual currency (gems, gold, tokens)

### What Makes an Economy Meaningful?
**Depth and meaning in both choices:**
- Multiple interesting ways to earn
- Multiple interesting ways to spend
- Each choice has real consequences

---

## The Economic Loop

### The Ratchet Pattern
Economies usually operate in a loop:

```
Earn Money → Spend Money → Better Earning Ability → More Money → More Spending Options → Better Earning...
```

**Why it works:**
- Alternating pattern of earning and spending
- Very appealing to players
- Like walking on two legs—alternating ratchet moves players forward
- Provides sense of progression

### Example Loops

**RPG Experience/Skill Points:**
1. Defeat enemies (earn experience/skill points)
2. Spend points on new abilities
3. New abilities let you defeat tougher enemies
4. Earn more experience/skill points
5. Repeat

**Resource Management Game:**
1. Gather resources
2. Build structures with resources
3. Structures improve resource gathering
4. Gather more resources
5. Repeat

---

## Balancing Game Economies

### Why It's Difficult
Balancing economies is challenging because you're balancing **many systems at once**, particularly in large online multiplayer games where players can buy/sell items to each other.

### The Twelve Balance Types Applied to Economies

#### 1. Fairness
**Question:** Do any players get unfair advantage by buying certain things or earning a certain way?

**Considerations:**
- Are some earning methods clearly superior?
- Can money buy unbalanced power?
- In multiplayer, can players exploit trading systems?
- Are starting conditions fair?

**Solutions:**
- Balance value of different earning methods
- Ensure spending options don't create dominant strategies
- Implement trade restrictions if needed
- Monitor and adjust unfair advantages

#### 2. Challenge
**Questions:**
- Can players buy something that makes the game too easy?
- Is earning money too hard or too easy?

**Considerations:**
- Earning rate vs. progression speed
- Do purchased items trivialize content?
- Does economy maintain appropriate challenge level?

**Solutions:**
- Scale costs with player progression
- Limit power of purchasable items
- Create "money sinks" to slow progression
- Balance earning rate to intended play time

#### 3. Meaningful Choices
**Questions:**
- Do players have enough ways to earn money?
- Do players have enough ways to spend money?

**Considerations:**
- Are earning methods meaningfully different?
- Are spending options diverse and interesting?
- Is there a dominant earning strategy?
- Is there obviously best item to buy?

**Solutions:**
- Multiple viable earning paths
- Diverse spending options with different purposes
- No clearly superior items
- Situational advantages (rock-paper-scissors for items)

#### 4. Skill vs. Chance
**Question:** Is earning money more skill-based or chance-based?

**Considerations:**
- Should players control their earnings?
- Or should randomness create excitement?
- Balance between reliability and surprise

**Solutions:**
- Base earning on skill (performance-based rewards)
- Add variable rewards (loot drops, random bonuses)
- Create "lucky" opportunities for bonus earnings
- Balance guaranteed income with chance for more

#### 5. Competition vs. Cooperation
**Questions:**
- Can players pool their funds in interesting ways?
- Can they collude in a way that exploits "holes" in the economy?

**Considerations:**
- Player-to-player trading implications
- Guild/clan shared resources
- Cooperative earning opportunities
- Competitive economic warfare

**Solutions:**
- Trading restrictions to prevent exploits
- Shared treasury systems with proper limits
- Cooperative earning bonuses
- Competitive economic objectives

#### 6. Time
**Questions:**
- Does it take too long to earn money?
- Is money earned too quickly?

**Considerations:**
- Earning rate vs. session length
- How long to save for desired item?
- Does waiting feel frustrating or rewarding?
- Free-to-play: balance vs. monetization

**Solutions:**
- Tune earning rate to intended play sessions
- Tiered items (short-term, medium-term, long-term goals)
- Quick small rewards + rare big rewards
- Time-based income (daily login bonuses)

#### 7. Rewards
**Questions:**
- Is it rewarding to earn money?
- Is it rewarding to spend money?

**Considerations:**
- Does earning feel satisfying?
- Are purchases exciting?
- Do rewards maintain interest over time?

**Solutions:**
- Escalating reward values
- Variable rewards (see reward psychology)
- Celebration moments for big purchases
- Visible impact of purchases

#### 8. Punishment
**Question:** How do punishments affect a player's ability to earn and spend money?

**Considerations:**
- Death/failure consequences on currency
- Cost to recover from setbacks
- Resource loss from mistakes
- Balance between consequence and frustration

**Solutions:**
- Limited currency loss on death (not total wipeout)
- Separate "safe" currency from "risky" currency
- Recovery items purchasable but not mandatory
- Clear warnings before risky economic choices

#### 9. Freedom
**Questions:**
- Can players buy what they want?
- Can players earn the way they want?

**Considerations:**
- Forced spending vs. player choice
- Restricted earning methods vs. open options
- Linear progression vs. branching paths

**Solutions:**
- Multiple earning methods with different playstyles
- Diverse spending options
- Avoid mandatory purchases when possible
- Player agency in economic decisions

---

## Economy Control Methods

### 1. Money Creation (Faucets)
**How money enters the economy:**
- Monster drops
- Quest rewards
- Daily bonuses
- Resource gathering
- Performance rewards
- Achievement bonuses

**Balancing:**
- Control rate of creation
- Adjust based on player progression
- Monitor average player wealth
- Prevent exploits (gold farming)

### 2. Money Destruction (Drains)
**How money leaves the economy:**
- Item purchases from NPCs/shops
- Repair costs
- Fees (auction house, trading)
- Consumables (potions, ammunition)
- Cosmetic items
- Convenience purchases

**Balancing:**
- Create desirable money sinks
- Prevent hoarding
- Encourage circulation
- Balance against creation rate

### 3. Money Circulation
**How money moves between players:**
- Player-to-player trading
- Auction houses
- Guild/clan treasuries
- Services (crafting, repair)
- Gifts and donations

**Balancing:**
- Facilitate healthy circulation
- Prevent monopolies
- Tax transactions if needed
- Monitor for inflation/deflation

---

## Common Economic Structures

### 1. Single Universal Currency
**Pros:**
- Simple to understand
- Easy to balance
- Flexible spending

**Cons:**
- Can create inflation
- May lack depth
- All content competes for same resource

**Best for:**
- Simple games
- Casual audiences
- When clarity is priority

### 2. Multiple Specialized Currencies
**Examples:**
- Gold + Gems + Tokens
- PvP currency + PvE currency
- Battle Pass currency
- Season-specific currency

**Pros:**
- Segment different content types
- Prevent cross-contamination
- Create specialized progression paths
- Easier to balance different systems

**Cons:**
- More complex to understand
- Potential for confusion
- More UI elements needed
- Each currency needs meaningful uses

**Best for:**
- Complex games
- Long-term engagement
- Free-to-play monetization
- Separating competitive/casual content

### 3. Resource-Based Economy
**Multiple resources traded/crafted:**
- Wood, stone, metal
- Food, water, energy
- Crafting components
- Building materials

**Pros:**
- Intuitive and thematic
- Natural scarcity creates value
- Encourages specialization/trading
- Rich strategic depth

**Cons:**
- Complex to balance
- Storage management issues
- Can overwhelm players
- Difficult to value resources

**Best for:**
- Simulation games
- Survival games
- Strategy games
- Multiplayer trading-focused games

---

## Free-to-Play Economy Considerations

### The F2P Economic Triangle
```
        Engagement
           / \
          /   \
    Monetization -- Retention
```

All three must be balanced.

### Premium vs. Free Currency

**Free Currency (Earned):**
- Gameplay rewards
- Daily bonuses
- Achievement rewards
- Slower accumulation

**Premium Currency (Purchased):**
- Real money purchase
- Occasional free samples
- Accelerated progression
- Exclusive items

### Key F2P Balance Points

**1. Grind vs. Pay**
- Free players: Longer but achievable
- Paying players: Reasonable acceleration
- Never "pay or can't progress"

**2. Competitive Balance**
- "Pay to win" vs. "pay for convenience"
- Ensure free players can compete
- Separate competitive modes if needed

**3. Value Perception**
- Premium currency must feel valuable
- Free currency must feel earnable
- Both must have meaningful uses

**4. Conversion Opportunities**
- Natural moments to consider purchase
- Not manipulative or predatory
- Solve player problems (time, difficulty)

---

## Economic Pitfalls to Avoid

### 1. Runaway Inflation
**Problem:** Currency becomes worthless due to oversupply

**Causes:**
- Too many faucets, not enough drains
- No meaningful expensive items
- Players hoard without spending

**Solutions:**
- Monitor average player wealth
- Introduce high-value money sinks
- Temporary events that encourage spending
- Cap maximum holdings if needed

### 2. Hyperdeflation
**Problem:** Currency too scarce, economy stalls

**Causes:**
- Too many drains, not enough faucets
- Items too expensive
- Punishments too harsh

**Solutions:**
- Increase earning opportunities
- Reduce costs of essential items
- Bonus earning events
- Soften punishments

### 3. Economic Exploits
**Problem:** Players find unintended ways to generate wealth

**Examples:**
- Item duplication glitches
- Trading loop exploits
- Buy low/sell high automation
- Coordinated market manipulation

**Solutions:**
- Thorough testing of trading systems
- Transaction logging and monitoring
- Trade restrictions (binding items)
- Ban exploiters, rollback if needed

### 4. The "Best Item" Problem
**Problem:** One item clearly superior, everyone saves for it

**Causes:**
- Poor item balance
- Dominant strategy exists
- No situational advantages

**Solutions:**
- Rock-paper-scissors item relationships
- Situational advantages
- Different items for different playstyles
- Regular balance updates

### 5. The "Nothing to Buy" Problem
**Problem:** Players have money but nothing desirable to purchase

**Causes:**
- Limited item variety
- Items don't match player desires
- All best items already owned

**Solutions:**
- Regular new content
- Consumables (always needed)
- Cosmetics (unlimited variety)
- Social/status items
- Time-limited exclusive items

---

## Monitoring and Tuning Economies

### Key Metrics to Track

**1. Average Player Wealth**
- By level/progression stage
- New players vs. veterans
- Trend over time

**2. Earning Rate**
- Currency per hour
- By earning method
- By player skill level

**3. Spending Rate**
- Currency spent per session
- Popular vs. unpopular items
- Essential vs. optional purchases

**4. Conversion Rate (F2P)**
- % players who make any purchase
- % who make repeat purchases
- Average revenue per paying user (ARPPU)

**5. Economic Concentration**
- Wealth distribution among players
- % of currency held by top players
- Signs of monopoly or exploitation

### Tuning Techniques

**1. Gradual Adjustments**
- Never shock the economy
- Announce changes in advance
- Give players time to adjust

**2. A/B Testing**
- Test economy changes on subset of players
- Compare metrics before rolling out
- Minimize risk of breaking economy

**3. Seasonal Resets**
- Fresh starts for competitive balance
- Prevent runaway wealth accumulation
- Re-engage departed players

**4. Dynamic Pricing**
- Adjust costs based on player level
- Scale to current economic conditions
- Prevent trivialization of content

---

## Lens #52: The Lens of Economy

Use this lens to keep your economy in balance:

### Questions to Ask

**Earning:**
- How can my players earn money?
- Should there be other ways?
- Is money too easy to get? Too hard?
- How can I change this?

**Spending:**
- What can my players buy?
- Why would they want these things?
- Are there meaningful choices?

**Structure:**
- Is universal currency good for my game?
- Or should there be specialized currencies?
- What are the pros and cons of each?

**Balance:**
- Are choices about earning and spending meaningful?
- Do they have real strategic depth?
- Or are there dominant strategies?

---

## Economy Design Process

### Phase 1: Define Economic Goals
1. What role does economy play in your game?
2. Is it central or supporting?
3. What emotions should earning/spending evoke?
4. How does it support core gameplay?

### Phase 2: Design Currency Structure
1. Single or multiple currencies?
2. What can be earned and how?
3. What can be purchased and why?
4. How do they relate to each other?

### Phase 3: Set Initial Values
1. Base earning rates
2. Item costs
3. Starting wealth
4. Progression scaling

### Phase 4: Implement and Test
1. Build economic systems
2. Create tracking/logging
3. Playtest with varied players
4. Monitor metrics

### Phase 5: Balance and Iterate
1. Identify imbalances
2. Adjust faucets and drains
3. Add/remove spending options
4. Re-test and monitor

### Phase 6: Maintain Post-Launch
1. Monitor live metrics
2. Respond to exploits quickly
3. Regular content updates
4. Seasonal events and resets

---

## Case Studies

### Example 1: RPG Skill Point Economy

**Currency:** Skill points

**Earning:**
- Level up: 5 points
- Quest completion: 1-10 points
- Achievements: 1-20 points

**Spending:**
- New abilities: 5-10 points
- Ability upgrades: 3-15 points
- Stat increases: 1 point per +1 stat

**Balance:**
- Points earned per level balanced against available abilities
- Players make meaningful choices (can't buy everything)
- High-cost items feel special
- Low-cost items allow experimentation

### Example 2: F2P Mobile Game

**Free Currency:** Coins
- Earned through gameplay
- Used for common items
- Readily available

**Premium Currency:** Gems
- Purchased with real money
- Small amounts earnable free
- Used for rare items and time skips

**Balance:**
- Coins let free players progress
- Gems accelerate but don't gate
- Conversion points feel optional
- Both currencies have unique uses

### Example 3: Trading-Based Economy

**Resources:** Multiple tradeable items
- Players gather different resources
- Crafting combines resources
- Player-to-player trading

**Balance:**
- Each resource has unique value
- Scarcity creates demand
- No single dominant resource
- Encourages specialization and trade

---

## Key Takeaways

1. **Economy = Two Choices:** How to earn, how to spend
2. **Loop Creates Engagement:** Earning → Spending → Better Earning → repeat
3. **Balance Many Systems:** Economies affect fairness, challenge, choices, time, rewards, punishment, freedom
4. **Faucets and Drains:** Control money creation and destruction
5. **Monitor Metrics:** Track wealth, earning rate, spending rate, concentration
6. **Tune Gradually:** Never shock the economy
7. **Multiple Currencies:** Can segment content but add complexity
8. **F2P Triangle:** Balance engagement, monetization, retention
9. **Avoid Pitfalls:** Inflation, deflation, exploits, dominant strategies
10. **Meaningful Choices:** Core of good economy design

---

## Final Advice

**Start Simple:**
- Simple economy easier to balance
- Add complexity only if it adds value
- Test thoroughly before adding features

**Player Psychology Matters:**
- Earning should feel rewarding
- Spending should feel empowering
- Neither should feel exploitative

**Balance is Ongoing:**
- Economy requires constant monitoring
- Be ready to adjust post-launch
- Listen to player feedback
- Watch the data

**The Goal:**
- Players enjoy challenging, fun game
- Economic decisions feel meaningful
- Balance between earning and spending creates flow
- No dominant strategies or exploits
