------------------------------
-- JokerDisplay Integration --
------------------------------

local jd_def = JokerDisplay.Definitions

jd_def['j_pampa'] = { -- Pampa
    text = {
        { text = '+$' },
        { ref_table = 'card.ability.extra', ref_value = 'money'},
    },
    text_config = {colour = G.C.GOLD},
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values",                       ref_value = "odds" },
            { text = " in " .. G.P_CENTERS["j_pampa"].config.extra.odds .. ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = G.GAME and G.GAME.probabilities.normal or 1
        card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
    end
}

jd_def['j_jazztrio'] = { -- Jazz Trio
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text_king",  colour = G.C.ORANGE },
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text_queen", colour = G.C.ORANGE },
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text_jack", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.localized_text_king = localize("King", "ranks")
        card.joker_display_values.localized_text_queen = localize("Queen", "ranks")
        card.joker_display_values.localized_text_jack = localize("Jack", "ranks")
    end
}

jd_def['j_thedream'] = { -- The Dream
}

jd_def['j_bell'] = { -- Bell Curve
}

jd_def['j_subway'] = { -- Subway Map
    text = {
        { text = '+'},
        { ref_table = 'card.ability.extra', ref_value = 'mult' },
    },
    text_config = {colour = G.C.MULT},
    reminder_text = {
        { text = '(' },
        { ref_table = 'card.joker_display_values', ref_value = 'hand' },
        { text = ')' },
    },
    calc_function = function (card)
        local hand = card.ability.extra.hand or 0
        card.joker_display_values.hand = hand == 14 and 'A' or hand == 13 and 'K' or
                                        hand == 12 and 'Q' or hand == 11 and 'J' or hand
    end
}

jd_def['j_voodoo'] = { -- Voodoo Doll
    text = {
        {
            border_nodes = {
                { text = 'X'},
                { ref_table = 'card.joker_display_values', ref_value = 'x_mult' },
            }
        }
    },
    reminder_text = {
        { text = '(' },
        { ref_table = 'card.ability.extra', ref_value = 'hand' },
        { text = ')' },
    },
    calc_function = function (card)
        local common_ranks={}

        if G.GAME.current_round.hands_played ~= 0 then
            local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
            local _, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
            for i = 1, #scoring_hand do
                local rank = scoring_hand[i]:get_id()
                for j = 1, #card.ability.extra.hand_array do
                    if card.ability.extra.hand_array[j] == rank then
                        local duplicate_flag=false
                        for k=1, #common_ranks do
                            if common_ranks[k]==rank then duplicate_flag=true end
                        end
                        if not duplicate_flag then 
                            table.insert(common_ranks,rank)
                        end
                    end
                end
            end
        end

        card.joker_display_values.x_mult = 1+(#common_ranks * card.ability.extra.x_mult_gain)
    end
}

jd_def['j_ishihara'] = { -- Ishihara Test
    reminder_text = {
        { text = '(9,6)'},
    },
}

jd_def['j_open'] = { -- Grand Slam
    text = {
        {
            border_nodes = {
                { text = 'X'},
                { ref_table = 'card.joker_display_values', ref_value = 'x_mult' },
            }
        }
    },
    reminder_text = {
        { text = '(' },
        { ref_table = 'card.joker_display_values', ref_value = 'suit_string', colour = G.C.ORANGE },
        { text = ')' },
    },
    calc_function = function (card)
        local suit_string = card.ability.extra.played_suits[1] and card.ability.extra.played_suits[1]:sub(1, 2) or "-"
        if card.ability.extra.played_suits then
            for i=2, #card.ability.extra.played_suits do
                suit_string=suit_string .. " ".. card.ability.extra.played_suits[i]:sub(1, 2)
            end
        end
        card.joker_display_values.suit_string = suit_string
        card.joker_display_values.x_mult = 1+(card.ability.extra.n_played_suits * card.ability.extra.xmult_gain)
    end
}

jd_def['j_claw'] = { -- Claw
}

jd_def['j_sliding'] = { -- Sliding Joker
    text = {
        { text = '+', colour = G.C.MULT },
        { ref_table = 'card.ability.extra', ref_value = 'mult', colour = G.C.MULT },
        { text = ' +', colour = G.C.CHIPS },
        { ref_table = 'card.ability.extra', ref_value = 'chips', colour = G.C.CHIPS },
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text_flush", colour = G.C.ORANGE },
        { text = "/" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text_straight", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.localized_text_flush = localize('Flush', "poker_hands")
        card.joker_display_values.localized_text_straight = localize('Straight', "poker_hands")
    end
}

jd_def['j_fabric'] = { -- Fabric Design
}

jd_def['j_cafeg'] = { -- Café Gourmand
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips" }
    },
    text_config = { colour = G.C.CHIPS },
    calc_function = function(card)
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, _ = JokerDisplay.evaluate_hand(hand)
        card.joker_display_values.chips = (text ~= 'Unknown' and G.GAME and G.GAME.hands[text] and G.GAME.hands[text].played <= 3 and card.ability.extra.chips) or
            0
    end
}

jd_def['j_mixtape'] = { -- Mixtape
    text = {
        { text = '+$' },
        { ref_table = 'card.joker_display_values', ref_value = 'money'},
    },
    text_config = {colour = G.C.GOLD},
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
    },
    calc_function = function(card)
        local n_clubs = 0
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v:is_suit('Clubs') and v.config.center ~= G.P_CENTERS.c_base then n_clubs = n_clubs+1 end
            end
        end
        card.joker_display_values.money = card.ability.extra.money_gain*n_clubs
        card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
    end
}

jd_def['j_trick'] = { -- Trick or Treat
    text = {
        {
            border_nodes = {
                { text = 'X'},
                { ref_table = 'card.joker_display_values', ref_value = 'x_mult' },
            }
        }
    },
    calc_function = function (card)
        card.joker_display_values.x_mult = (G.GAME.consumeable_usage_total and
                math.max(1, card.ability.x_mult + G.GAME.consumeable_usage_total.spectral * card.ability.extra.x_mult_gain) or 1)
    end
}

jd_def['j_matry'] = { -- Matryoshka
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips" }
    },
    text_config = {colour = G.C.CHIPS},
    reminder_text = {
        { text = '(' },
        { ref_table = 'card.joker_display_values', ref_value = 'size_string', colour = G.C.ORANGE },
        { text = ')' },
    },
    calc_function = function (card)
        local size_string = card.ability.extra.size_list[1] or "-"
        if card.ability.extra.size_list then
            for i=2, #card.ability.extra.size_list do
                size_string=size_string .. " ".. card.ability.extra.size_list[i]
            end
        end
        card.joker_display_values.size_string = size_string
        card.joker_display_values.chips = #card.ability.extra.size_list*card.ability.extra.chips
    end
}

jd_def['j_selfpaint'] = { -- Self Portrait
}

jd_def['j_flamingo'] = { -- Flamingo
}

jd_def['j_blackstar'] = { -- Black Star
}

jd_def['j_sealbouquet'] = { -- Seal Bouquet
}

jd_def['j_bikini'] = { -- Tiger Bikini
    text = {
        { text = '+' },
        { ref_table = 'card.joker_display_values', ref_value = 'mult' },
    },
    text_config = {colour = G.C.MULT},
    calc_function = function (card)
        if (G.playing_cards) then
            local heart_number = 0
            for k, v in pairs(G.playing_cards) do
                if v:is_suit('Hearts') then heart_number = heart_number+1 end
            end
            card.joker_display_values.mult = math.max(0,card.ability.extra.mult*(heart_number-card.ability.extra.threshold))
        end
    end
}

jd_def['j_pimpbus'] = { -- Pimp The Bus
    text = {
        {
            border_nodes = {
                { text = 'X'},
                { ref_table = 'card.joker_display_values', ref_value = 'x_mult' },
            }
        }
    },
    calc_function = function (card)
        card.joker_display_values.x_mult = card.ability.x_mult or 1
    end
}

jd_def['j_3776'] = { -- 3776
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(3,7,6)" }
    },
    calc_function = function(card)
        local mult = 0
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        for k, v in pairs(scoring_hand) do
            if not v.debuff and v:get_id() and (v:get_id() == 3 or v:get_id() == 6 or v:get_id() == 7) then
                local retriggers = JokerDisplay.calculate_card_triggers(v,
                    not (text == 'Unknown') and scoring_hand or nil)
                mult = mult + card.ability.extra.mult * retriggers
            end
        end
        card.joker_display_values.mult = mult
    end,
    retrigger_function = function(card, scoring_hand, held_in_hand)
        if held_in_hand then return 0 end
        return card:get_id() == 7 and 1 or 0
    end
}

jd_def['j_konbini'] = { -- Konbini
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local tarots_used = 0
        if G.GAME.consumeable_usage then
            for k, v in pairs(G.GAME.consumeable_usage) do
                if v.set == 'Tarot' then tarots_used = tarots_used + 1 end
            end
        end
        card.joker_display_values.mult = card.ability.extra.mult*tarots_used
    end
}

jd_def['j_snecko'] = { -- Snecko Eye
}

jd_def['j_cherry'] = { -- Cherry
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = '(' },
        { ref_table = 'card.ability.extra', ref_value = 'pairs_discarded' },
        { text = '/' },
        { ref_table = 'card.ability.extra', ref_value = 'hands_limit' },
        { text = ')' },
    },
    calc_function = function(card)
        card.joker_display_values.mult = card.ability.extra.pairs_discarded*card.ability.extra.mult_gain
    end
}

jd_def['j_mahjong'] = { -- Mahjong Joker
    text = {
        {
            border_nodes = {
                { text = 'X'},
                { ref_table = 'card.ability', ref_value = 'Xmult' },
            }
        }
    },
    reminder_text = {
        { text = '(' },
        { ref_table = 'card.ability.extra', ref_value = 'counter' },
        { text = '/' },
        { ref_table = 'card.ability.extra', ref_value = 'frequency' },
        { text = ')' },
    },
}

jd_def['j_moon'] = { -- Moon Rabbit
}

jd_def['j_scopedog'] = {
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "active_text" },
    },
    calc_function = function(card)
        local disableable = G.GAME and G.GAME.blind and G.GAME.blind.get_type and
            ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss'))
        card.joker_display_values.active = disableable
        card.joker_display_values.active_text = localize(disableable and 'k_active' or 'ph_no_boss_active')
    end,
    style_function = function(card, text, reminder_text, extra)
        if reminder_text and reminder_text.children[1] then
            reminder_text.children[1].config.colour = card.joker_display_values.active and G.C.GREEN or G.C.RED
            reminder_text.children[1].config.scale = card.joker_display_values.active and 0.35 or 0.3
            return true
        end
        return false
    end
}