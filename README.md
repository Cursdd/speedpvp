# SpeedPVP
## Description
SpeedPVP aims to revamp minecraft's combat system by directly linking player speed and damage. The faster you go, the more damage you deal.
## Features
### Movement
- Dash: Sneak once on the ground to initiate the dash. Sneak again to dash forward.
- (Planned) Wall Climb: Sneak and hold jump while being directly in front of a block to wall climb. Doing this can also initiate your dash.
- (Planned) Wall Run: Hold jump while adjacent to a wall to wallrun.
- (Planned) Wall Jump: While wall running, let go of jump to perform a wallrun. This will push you forward, up, and opposite of the horizontal direction you're facing
### Weapons
- Trident: Tridents now behave slightly differently with both Riptide and Loyalty
  -   Riptide: Now deals massive damage on contact
  -   Loyalty: On hit, the victim entity will momentarily ride the trident
### Combat
- Damage now scales with speed, using on the formula `damage = weapon_damage * attack_cooldown * (1 + scaled_speed)`
  - Scaled speed depends on the weapon. Currently, the default is `0.0001`, however the following weapons have different values:
    - Loyalty Tridents have a scale of `0.000015` if their projectile speed is > 100. This is due to them dealing massive amounts of damage in the first few ticks of release
- Knockback also scales with speed, using the formula `knockback = weapon_knockback + attack_cooldown * speed * 0.05`
