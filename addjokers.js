let jokers = [
  {
    name: "Pampa",
    text: [
      "Gain {C:money}$10{} at the end of round.",
      "{C:green}1 in 3{} chance this",
      "card is destroyed",
      "at end of round"
    ],
    image_url: "img/pampa_v2.png",
    rarity: "Common"
  },
  {
    name: "Jazz Trio",
    text: [
      "When played hand contains",
      "a scoring {C:attention}Jack{}, {C:attention}Queen{} and {C:attention}King{},",
      "upgrade {C:attention}2{} random {C:attention}Poker Hands{}"
    ],
    image_url: "img/jazz_joker_2x_v2.png",
    rarity: "Common"
  },
  {
    name: "Cherry",
    text: [
      "Gains {C:red}+2{} Mult whenever a pair",
      "is discarded. Destroyed",
      "after 12 pairs discarded"
    ],
    image_url: "img/joker_cherry_2x.png",
    rarity: "Common"
  },
  {
    name: "Subway Map",
    text: [
      "Gains {C:red}+4{} Mult if played hand",
      "contains the highest {C:attention}Straight{} so far.",
    ],
    image_url: "img/joker_subway_map_2x_alt.png",
    rarity: "Common"
  },
  {
    name: "Sliding Joker",
    text: [
      "Gains {C:red}+5{} Mult for each hand containing a {C:attention}Flush{}.",
      "Gains {C:chips}+25{} Chips for each hand containing a {C:attention}Straight{}.",
      "Resets at the end of each ante.",
    ],
    image_url: "img/block_puzzle3.png",
    rarity: "Common"
  },
  {
    name: "Matryoshka",
    text: [
      "{C:blue}+25{} chips for each unique",
      "scoring hand size played this round"
    ],
    image_url: "img/joker_matryoshka_2x.png",
    rarity: "Common"
  },
  {
    name: "Moon Rabbit",
    text: [
      "{C:green}1 in 2{} chance",
      "to generate a copy of {C:attention}The Fool{}",
      "when a hand containing a {C:attention}Full House{} is played"
    ],
    image_url: "img/joker_moon_rabbit_2x.png",
    rarity: "Common"
  },
  {
    name: "Bell Curve",
    text: [
      "Enhance one random card",
      "into a {C:attention}Lucky Card{} when",
      "first hand is drawn",
    ],
    image_url: "img/joker_gauss_v3_2x.png",
    rarity: "Common"
  },
  {
    name: "Claw",
    text: [
      "When any {C:attention}3{} is played, permanently give",
      "{C:chips}+1{} chips to ALL 3s in the deck."
    ],
    image_url: "img/joker_claw_2x_v2.png",
    rarity: "Common"
  },
  {
    name: "Café Gourmand",
    text: [
      "{C:chips}+80{} chips",
      "if hand has been played",
      "3 times or less."
    ],
    image_url: "img/cafe_gourmand2_2x.png",
    rarity: "Common"
  },
  {
    name: "Konbini",
    text: [
      "Gains +{C:mult}+2{} mult",
      "per unique {C:tarot}Tarot{}",
      "card used this run"
    ],
    image_url: "img/kombini_2x.png",
    rarity: "Common"
  },
  {
    name: "Ishihara Test",
    text: [
      "All {C:attention}9{} and {C:attention}6{} become",
      "{C:attention}Wild{} cards when played."
    ],
    image_url: "img/Ishihara.png",
    rarity: "Common"
  },
  {
    name: "Tiger Bikini",
    text: [
      "{C:red}+4{} Mult for each",
      "{C:hearts}hearts{} card above {C:attention}13{}",
      "in your full deck",
    ],
    image_url: "img/joker_tiger_bikini_v2_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "Seal Bouquet",
    text: [
      "If first card of a {C:clubs}Spades{} flush",
      "contains a {C:attention}seal{}, add a random {C:attention}seal{}",
      "to another random card."
    ],
    image_url: "img/Seal Bouquet_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "Mixtape",
    text: [
      "Gain {C:money}$2{} at the end of round for each",
      "enchanced {C:clubs}Clubs{} card in your deck.",
    ],
    image_url: "img/mixtape_pink.png",
    rarity: "Uncommon"
  },
  {
    name: "Flamingo",
    text: [
      "When played, {C:diamonds}Diamonds{} cards",
      "have {C:green}1 in 30{} chance",
      "to become {C:dark_edition}polychrome{}.",
    ],
    image_url: "img/flamingo_2x_v2.png",
    rarity: "Uncommon"
  },
  {
    name: "Voodoo Doll",
    text: [
      "{X:mult,C:white}X0.8 {} Mult",
      "for each unique played rank",
      "already played this round.",
    ],
    image_url: "img/voodoo_doll_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "Snecko Eye",
    text: [
      "{C:red} -2 hand size{C:inactive}.",
      "The ranks of first drawn cards",
      "each round are randomized.",
    ],
    image_url: "img/snecko_eye_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "3776",
    text: [
      "Each played {C:attention}3{},",
      "{C:attention}6{} or {C:attention}7{}, gives",
      "{C:mult}+6{} Mult when scored",
      "Retrigger all {C:attention}7{} "
    ],
    image_url: "img/3776.png",
    rarity: "Uncommon"
  },
  {
    name: "Mahjong Joker",
    text: [
      "Gains {X:mult,C:white} X0.3 {} Mult for",
      "every 3 hands containing",
      "{C:attention}Three of a Kind{}",
    ],
    image_url: "img/joker_mahjong_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "Self Portrait",
    text: [
      "First unscoring face card turns",
      "into a random non-face rank."
    ],
    image_url: "img/self_portrait_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "Pimp The Bus",
    text: [
      "Gains {X:mult,C:white}x0.1{} Mult",
      "for each consecutive scoring hand",
      "with at least one",
      "enhancement, edition or seal",
    ],
    image_url: "img/pimp_the_bus_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "Grand Slam",
    text: [
      "{X:mult,C:white}x1{} Mult for each",
      "unique flush suit played this round ",
    ],
    image_url: "img/joker_open_2x.png",
    rarity: "Uncommon"
  },
  {
    name: "Scopedog",
    text: [
      "Playing a hand containing an",
      "{C:attention}Aces Three of a Kind{}",
      "disables the {C:attention}Boss Blind{}"
    ],
    image_url: "img/scope_dog.png",
    rarity: "Uncommon"
  },
  {
    name: "The Dream",
    text: [
      "{C:attention}Level Up{} secret poker hands",
      "when played"
    ],
    image_url: "img/the_dream_2x1.png",
    rarity: "Rare"
  },
  {
    name: "Fabric Design",
    text: [
      "When {C:attention}Blind{} is selected",
      "lose all {C:red}Discards{} and apply a random ",
      "{C:attention}enhancement{} to all cards in the deck.",
      "When removed, turn all cards back to normal."
    ],
    image_url: "img/fashion_design.png",
    rarity: "Rare"
  },
  {
    name: "Black Star",
    text: [
      "Prevents death once.",
      "Destroy all jokers and replace them",
      "with 2 random rare jokers."
    ],
    image_url: "img/joker_blackstar_2x.png",
    rarity: "Rare"
  },
  {
    name: "Trick or Treat",
    text: [
      "Gains {X:mult,C:white}x1{} Mult for each",
      "{C:spectral}Spectral{} card used this run"
    ],
    image_url: "img/spooky_joker_v3.png",
    rarity: "Rare"
  },
  // {
  //   name: "Number 13",
  //   text: [
  //     "When any {C:attention}Glass Card{} breaks",
  //     "add one {C:attention}Glass Rank 13{}",
  //     "card to your deck"
  //   ],
  //   image_url: "img/joker13_2x.png",
  //   rarity: "Rare"
  // },
]

let cols = {
  
  MULT: "#FE5F55",
  CHIPS: "#009dff",
  MONEY: "#f3b958",
  XMULT: "#FE5F55",
  FILTER: "#ff9a00",
  ATTENTION: "#ff9a00",
  BLUE: "#009dff",
  RED: "#FE5F55",
  GREEN: "#4BC292",
  PALE_GREEN: "#56a887",
  ORANGE: "#fda200",
  IMPORTANT: "#ff9a00",
  GOLD: "#eac058",
  YELLOW: "#ffff00",
  CLEAR: "#00000000", 
  WHITE: "#ffffff",
  PURPLE: "#8867a5",
  BLACK: "#374244",
  L_BLACK: "#4f6367",
  GREY: "#5f7377",
  CHANCE: "#4BC292",
  JOKER_GREY: "#bfc7d5",
  VOUCHER: "#cb724c",
  BOOSTER: "#646eb7",
  EDITION: "#ffffff",
  DARK_EDITION: "#000000",
  ETERNAL: "#c75985",
  DYN_UI: {
    MAIN: "#374244",
    DARK: "#374244",
    BOSS_MAIN: "#374244",
    BOSS_DARK: "#374244",
    BOSS_PALE: "#374244"
  },
  SO_1: {
    Hearts: "#f03464",
    Diamonds: "#f06b3f",
    Spades: "#403995",
    Clubs: "#235955",
  },
  SO_2: {
    Hearts: "#f83b2f",
    Diamonds: "#e29000",
    Spades: "#4f31b9",
    Clubs: "#008ee6",
  },
  SUITS: {
      Hearts: "#FE5F55",
      Diamonds: "#FE5F55",
      Spades: "#374649",
      Clubs: "#424e54",
  },
  
  SET: {
    Default: "#cdd9dc",
    Enhanced: "#cdd9dc",
    Joker: "#424e54",
    Tarot: "#424e54",
    Planet: "#424e54",
    Spectral: "#424e54",
    Voucher: "#424e54",
  }, 
  SECONDARY_SET: {
    Default: "#9bb6bdFF",
    Enhanced: "#8389DDFF",
    Joker: "#708b91",
    Tarot: "#a782d1",
    Planet: "#13afce",
    Spectral: "#4584fa",
    Voucher: "#fd682b",
    Edition: "#4ca893",
  },
}

let rarities = {
  "Common": "#009dff", 
  "Uncommon": "#4BC292",
  "Rare": "#fe5f55",
  "Legendary": "#b26cbb"
}

regex = /{([^}]+)}/g;

let jokers_div = document.querySelector(".jokers");

for (let joker of jokers) {
  console.log("adding joker", joker.name);

  joker.text = joker.text.map((line) => { return line + "{}"});

  joker.text = joker.text.join("<br/>");
  joker.text = joker.text.replaceAll("{}", "</span>");
  joker.text = joker.text.replace(regex, function replacer(match, p1, offset, string, groups) {
    let classes = p1.split(",");

    let css_styling = "";

    for (let i = 0; i < classes.length; i++) {
      let parts = classes[i].split(":");
      if (parts[0] === "C") {
        css_styling += `color: ${cols[parts[1].toUpperCase()]};`;
      } else if (parts[0] === "X") {
        css_styling += `background-color: ${cols[parts[1].toUpperCase()]}; border-radius: 5px; padding: 0 5px;`;
      }
    }

    return `</span><span style='${css_styling}'>`;
  });

  let joker_div = document.createElement("div");
  joker_div.classList.add("joker");
  joker_div.innerHTML = `
    <h3>${joker.name}</h3>
    <img src="${joker.image_url}" alt="${joker.name}" />
    <h4 class="rarity" style="background-color: ${rarities[joker.rarity]}">${joker.rarity}</h4>
    <div class="text">${joker.text}</div>
  `;

  jokers_div.appendChild(joker_div);
}