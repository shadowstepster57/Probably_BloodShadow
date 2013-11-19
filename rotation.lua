-- ProbablyEngine Rotation Packager
-- Custom Blood Death Knight Rotation
-- Created on Nov 19th 2013 4:31 am
ProbablyEngine.rotation.register_custom(250, "Blood[Shadow]", {
  -- defensive
  { "Bone Shield", "!player.buff" },

  -- Interrupts
  { "Mind Freeze", "modifier.interrupts" },

  -- Taunts
  { "Dark Command", "modifier.taunt" },
  { "Death Grip", "modifier.taunt" },

  -- Survival
  { "Anti-Magic Shell", {
  	  "player.health < 70",
  	  "modifier.cooldowns"
  }},
  { "Dancing Rune Weapon", {
  	  "player.health < 60",
  	  "modifier.cooldowns"
  }},
  { "Conversion", {
  	  "player.health < 60",
  	  "modifier.cooldowns"
  }},
  { "Vampiric Blood", {
  	  "player.health < 55",
  	  "modifier.cooldowns"
  }},
  { "Icebound Fortitude", {
  	  "player.health < 50",
  	  "modifier.cooldowns"
  }},
  { "Rune Tap", {
  	  "player.health < 40",
  	  "modifier.cooldowns"
  }},
  { "Empower Rune Weapon", {
  	  "player.health < 40",
  	  "modifier.cooldowns"
  }},

  -- Death Pact Macro
  { "!/cast Raise Dead\n/cast Death Pact", {
    "player.health < 35",
    "player.spell.cooldown(Death Pact)",
    "player.spell.cooldown(Raise Dead)",
    "player.spell.usable(Death Pact)"
  }},

  -- hard cast dnd
  { "Death and Decay", "modifier.shift", "ground" },

  { "Blood Tap", "player.buff(Blood Charge).count >= 5" },

  -- Places dots
  { "Outbreak", {
  	  "!target.debuff(Frost Fever)",
  	  "!target.debuff(Blood Plague)" 
  }},
  { "Plague Strike", "!target.debuff(Blood Plague)" },
  { "Icy Touch", "!target.debuff(Frost Fever)" },

  -- Refresh dots with Blood Boil
  { "Blood Boil", "target.debuff(Frost Fever).duration < 4" },

  -- Refresh dots with hard casts
  { "Icy Touch", "target.debuff(Frost Fever).duration < 4" },
  { "Plague Strike", "target.debuff(Blood Plague).duration < 4" },

  -- Rotation
  { "Heart Strike", { 
  	  "player.runes(blood).count >= 1",
  	  "!modifier.multitarget"
  }},
  { "Blood Boil", {
    "modifier.multitarget",
    "player.runes(blood).count >= 1",
    "target.range <= 8"
  }},
  { "Death Strike", "player.health < 100" },
  { "Death Strike", {
  	  "player.runes(frost).count = 2",
  	  "player.runes(unholy.count = 2"
  }},
  { "Death Strike", "player.rune(death).count > 3" },
  { "Blood Tap", {
  	  "player.buff(blood charge).count >= 10",
  	  "player.runes(death).count = 0",
  	  "player.runes(frost).count = 0",
  	  "player.runes(unholy).count = 0"
  }},
  { "Blood Tap", {
  	  "player.buff(blood charge).count >= 10",
  	  "player.runes(death).count = 0",
  	  "player.runes(frost).count = 1",
  	  "player.runes(unholy).count = 0"
  }},
  { "Blood Tap", {
  	  "player.buff(blood charge).count >= 10",
  	  "player.runes(death).count = 0",
  	  "player.runes(unholy).count = 1",
  	  "player.runes(frost).count = 0"
  }},
  { "Blood Tap", {
  	  "player.buff(blood charge).count >= 5",
  	  "player.runes(death).count = 1",
  	  "player.runes(frost).count = 0",
  	  "player.runes(unholy).count = 0"
  }},
  { "Blood Boil", {
    "player.buff(Crimson Scourge)",
    "target.range <= 8"
  }},
  { "Soul Reaper", "target.health < 35" },
  { "Rune Strike" },
  { "Horn of Winter" },
})