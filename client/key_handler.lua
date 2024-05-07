local pauseMenu = false
local debug = false

KeyHandler = {
    Keys = {
        ["INPUT_NEXT_CAMERA"] = {
            Index = 0,
            Name = "INPUT_NEXT_CAMERA",
            DefaultQWERTY = "V",
            XboxController = "BACK",
            CustomKey = nil
        },
        ["INPUT_LOOK_LR"] = {
            Index = 1,
            Name = "INPUT_LOOK_LR",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_UD"] = {
            Index = 2,
            Name = "INPUT_LOOK_UD",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_UP_ONLY"] = {
            Index = 3,
            Name = "INPUT_LOOK_UP_ONLY",
            DefaultQWERTY = "(NONE)",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_DOWN_ONLY"] = {
            Index = 4,
            Name = "INPUT_LOOK_DOWN_ONLY",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_LEFT_ONLY"] = {
            Index = 5,
            Name = "INPUT_LOOK_LEFT_ONLY",
            DefaultQWERTY = "(NONE)",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_RIGHT_ONLY"] = {
            Index = 6,
            Name = "INPUT_LOOK_RIGHT_ONLY",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_CINEMATIC_SLOWMO"] = {
            Index = 7,
            Name = "INPUT_CINEMATIC_SLOWMO",
            DefaultQWERTY = "(NONE)",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_SCRIPTED_FLY_UD"] = {
            Index = 8,
            Name = "INPUT_SCRIPTED_FLY_UD",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SCRIPTED_FLY_LR"] = {
            Index = 9,
            Name = "INPUT_SCRIPTED_FLY_LR",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SCRIPTED_FLY_ZUP"] = {
            Index = 10,
            Name = "INPUT_SCRIPTED_FLY_ZUP",
            DefaultQWERTY = "PAGEUP",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_SCRIPTED_FLY_ZDOWN"] = {
            Index = 11,
            Name = "INPUT_SCRIPTED_FLY_ZDOWN",
            DefaultQWERTY = "PAGEDOWN",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_WEAPON_WHEEL_UD"] = {
            Index = 12,
            Name = "INPUT_WEAPON_WHEEL_UD",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_WEAPON_WHEEL_LR"] = {
            Index = 13,
            Name = "INPUT_WEAPON_WHEEL_LR",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_WEAPON_WHEEL_NEXT"] = {
            Index = 14,
            Name = "INPUT_WEAPON_WHEEL_NEXT",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_WEAPON_WHEEL_PREV"] = {
            Index = 15,
            Name = "INPUT_WEAPON_WHEEL_PREV",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_SELECT_NEXT_WEAPON"] = {
            Index = 16,
            Name = "INPUT_SELECT_NEXT_WEAPON",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_PREV_WEAPON"] = {
            Index = 17,
            Name = "INPUT_SELECT_PREV_WEAPON",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SKIP_CUTSCENE"] = {
            Index = 18,
            Name = "INPUT_SKIP_CUTSCENE",
            DefaultQWERTY = "ENTER / LEFT MOUSE BUTTON / SPACEBAR",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_CHARACTER_WHEEL"] = {
            Index = 19,
            Name = "INPUT_CHARACTER_WHEEL",
            DefaultQWERTY = "LEFT ALT",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_MULTIPLAYER_INFO"] = {
            Index = 20,
            Name = "INPUT_MULTIPLAYER_INFO",
            DefaultQWERTY = "Z",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_SPRINT"] = {
            Index = 21,
            Name = "INPUT_SPRINT",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_JUMP"] = {
            Index = 22,
            Name = "INPUT_JUMP",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_ENTER"] = {
            Index = 23,
            Name = "INPUT_ENTER",
            DefaultQWERTY = "F",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_ATTACK"] = {
            Index = 24,
            Name = "INPUT_ATTACK",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_AIM"] = {
            Index = 25,
            Name = "INPUT_AIM",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_LOOK_BEHIND"] = {
            Index = 26,
            Name = "INPUT_LOOK_BEHIND",
            DefaultQWERTY = "C",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_PHONE"] = {
            Index = 27,
            Name = "INPUT_PHONE",
            DefaultQWERTY = "ARROW UP / SCROLLWHEEL BUTTON (PRESS)",
            XboxController = "DPAD UP",
            CustomKey = nil
        },
        ["INPUT_SPECIAL_ABILITY"] = {
            Index = 28,
            Name = "INPUT_SPECIAL_ABILITY",
            DefaultQWERTY = "(NONE)",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_SPECIAL_ABILITY_SECONDARY"] = {
            Index = 29,
            Name = "INPUT_SPECIAL_ABILITY_SECONDARY",
            DefaultQWERTY = "B",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_MOVE_LR"] = {
            Index = 30,
            Name = "INPUT_MOVE_LR",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_UD"] = {
            Index = 31,
            Name = "INPUT_MOVE_UD",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_UP_ONLY"] = {
            Index = 32,
            Name = "INPUT_MOVE_UP_ONLY",
            DefaultQWERTY = "W",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_DOWN_ONLY"] = {
            Index = 33,
            Name = "INPUT_MOVE_DOWN_ONLY",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_LEFT_ONLY"] = {
            Index = 34,
            Name = "INPUT_MOVE_LEFT_ONLY",
            DefaultQWERTY = "A",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_RIGHT_ONLY"] = {
            Index = 35,
            Name = "INPUT_MOVE_RIGHT_ONLY",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_DUCK"] = {
            Index = 36,
            Name = "INPUT_DUCK",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON"] = {
            Index = 37,
            Name = "INPUT_SELECT_WEAPON",
            DefaultQWERTY = "TAB",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_PICKUP"] = {
            Index = 38,
            Name = "INPUT_PICKUP",
            DefaultQWERTY = "E",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM"] = {
            Index = 39,
            Name = "INPUT_SNIPER_ZOOM",
            DefaultQWERTY = "[",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_IN_ONLY"] = {
            Index = 40,
            Name = "INPUT_SNIPER_ZOOM_IN_ONLY",
            DefaultQWERTY = "]",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_OUT_ONLY"] = {
            Index = 41,
            Name = "INPUT_SNIPER_ZOOM_OUT_ONLY",
            DefaultQWERTY = "[",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_IN_SECONDARY"] = {
            Index = 42,
            Name = "INPUT_SNIPER_ZOOM_IN_SECONDARY",
            DefaultQWERTY = "]",
            XboxController = "DPAD UP",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_OUT_SECONDARY"] = {
            Index = 43,
            Name = "INPUT_SNIPER_ZOOM_OUT_SECONDARY",
            DefaultQWERTY = "[",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_COVER"] = {
            Index = 44,
            Name = "INPUT_COVER",
            DefaultQWERTY = "Q",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_RELOAD"] = {
            Index = 45,
            Name = "INPUT_RELOAD",
            DefaultQWERTY = "R",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_TALK"] = {
            Index = 46,
            Name = "INPUT_TALK",
            DefaultQWERTY = "E",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_DETONATE"] = {
            Index = 47,
            Name = "INPUT_DETONATE",
            DefaultQWERTY = "G",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_HUD_SPECIAL"] = {
            Index = 48,
            Name = "INPUT_HUD_SPECIAL",
            DefaultQWERTY = "Z",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_ARREST"] = {
            Index = 49,
            Name = "INPUT_ARREST",
            DefaultQWERTY = "F",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_ACCURATE_AIM"] = {
            Index = 50,
            Name = "INPUT_ACCURATE_AIM",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_CONTEXT"] = {
            Index = 51,
            Name = "INPUT_CONTEXT",
            DefaultQWERTY = "E",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_CONTEXT_SECONDARY"] = {
            Index = 52,
            Name = "INPUT_CONTEXT_SECONDARY",
            DefaultQWERTY = "Q",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_WEAPON_SPECIAL"] = {
            Index = 53,
            Name = "INPUT_WEAPON_SPECIAL",
            DefaultQWERTY = "(NONE)",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_WEAPON_SPECIAL_TWO"] = {
            Index = 54,
            Name = "INPUT_WEAPON_SPECIAL_TWO",
            DefaultQWERTY = "E",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_DIVE"] = {
            Index = 55,
            Name = "INPUT_DIVE",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_DROP_WEAPON"] = {
            Index = 56,
            Name = "INPUT_DROP_WEAPON",
            DefaultQWERTY = "F9",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_DROP_AMMO"] = {
            Index = 57,
            Name = "INPUT_DROP_AMMO",
            DefaultQWERTY = "F10",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_THROW_GRENADE"] = {
            Index = 58,
            Name = "INPUT_THROW_GRENADE",
            DefaultQWERTY = "G",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_LR"] = {
            Index = 59,
            Name = "INPUT_VEH_MOVE_LR",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_UD"] = {
            Index = 60,
            Name = "INPUT_VEH_MOVE_UD",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_UP_ONLY"] = {
            Index = 61,
            Name = "INPUT_VEH_MOVE_UP_ONLY",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_DOWN_ONLY"] = {
            Index = 62,
            Name = "INPUT_VEH_MOVE_DOWN_ONLY",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_LEFT_ONLY"] = {
            Index = 63,
            Name = "INPUT_VEH_MOVE_LEFT_ONLY",
            DefaultQWERTY = "A",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_RIGHT_ONLY"] = {
            Index = 64,
            Name = "INPUT_VEH_MOVE_RIGHT_ONLY",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SPECIAL"] = {
            Index = 65,
            Name = "INPUT_VEH_SPECIAL",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_GUN_LR"] = {
            Index = 66,
            Name = "INPUT_VEH_GUN_LR",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_GUN_UD"] = {
            Index = 67,
            Name = "INPUT_VEH_GUN_UD",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_AIM"] = {
            Index = 68,
            Name = "INPUT_VEH_AIM",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_VEH_ATTACK"] = {
            Index = 69,
            Name = "INPUT_VEH_ATTACK",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_VEH_ATTACK2"] = {
            Index = 70,
            Name = "INPUT_VEH_ATTACK2",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_ACCELERATE"] = {
            Index = 71,
            Name = "INPUT_VEH_ACCELERATE",
            DefaultQWERTY = "W",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_VEH_BRAKE"] = {
            Index = 72,
            Name = "INPUT_VEH_BRAKE",
            DefaultQWERTY = "S",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_VEH_DUCK"] = {
            Index = 73,
            Name = "INPUT_VEH_DUCK",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_HEADLIGHT"] = {
            Index = 74,
            Name = "INPUT_VEH_HEADLIGHT",
            DefaultQWERTY = "H",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_EXIT"] = {
            Index = 75,
            Name = "INPUT_VEH_EXIT",
            DefaultQWERTY = "F",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_VEH_HANDBRAKE"] = {
            Index = 76,
            Name = "INPUT_VEH_HANDBRAKE",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "RB",
            CustomKey = nil
        },
        {
            Index = 77,
            Name = "INPUT_VEH_HOTWIRE_LEFT",
            DefaultQWERTY = "W",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_VEH_HOTWIRE_RIGHT"] = {
            Index = 78,
            Name = "INPUT_VEH_HOTWIRE_RIGHT",
            DefaultQWERTY = "S",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_VEH_LOOK_BEHIND"] = {
            Index = 79,
            Name = "INPUT_VEH_LOOK_BEHIND",
            DefaultQWERTY = "C",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_VEH_CIN_CAM"] = {
            Index = 80,
            Name = "INPUT_VEH_CIN_CAM",
            DefaultQWERTY = "R",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_VEH_NEXT_RADIO"] = {
            Index = 81,
            Name = "INPUT_VEH_NEXT_RADIO",
            DefaultQWERTY = ".",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_PREV_RADIO"] = {
            Index = 82,
            Name = "INPUT_VEH_PREV_RADIO",
            DefaultQWERTY = ",",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_NEXT_RADIO_TRACK"] = {
            Index = 83,
            Name = "INPUT_VEH_NEXT_RADIO_TRACK",
            DefaultQWERTY = "=",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_PREV_RADIO_TRACK"] = {
            Index = 84,
            Name = "INPUT_VEH_PREV_RADIO_TRACK",
            DefaultQWERTY = "-",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_RADIO_WHEEL"] = {
            Index = 85,
            Name = "INPUT_VEH_RADIO_WHEEL",
            DefaultQWERTY = "Q",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_VEH_HORN"] = {
            Index = 86,
            Name = "INPUT_VEH_HORN",
            DefaultQWERTY = "E",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_THROTTLE_UP"] = {
            Index = 87,
            Name = "INPUT_VEH_FLY_THROTTLE_UP",
            DefaultQWERTY = "W",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_THROTTLE_DOWN"] = {
            Index = 88,
            Name = "INPUT_VEH_FLY_THROTTLE_DOWN",
            DefaultQWERTY = "S",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_YAW_LEFT"] = {
            Index = 89,
            Name = "INPUT_VEH_FLY_YAW_LEFT",
            DefaultQWERTY = "A",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_YAW_RIGHT"] = {
            Index = 90,
            Name = "INPUT_VEH_FLY_YAW_RIGHT",
            DefaultQWERTY = "D",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_VEH_PASSENGER_AIM"] = {
            Index = 91,
            Name = "INPUT_VEH_PASSENGER_AIM",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_VEH_PASSENGER_ATTACK"] = {
            Index = 92,
            Name = "INPUT_VEH_PASSENGER_ATTACK",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_VEH_SPECIAL_ABILITY_FRANKLIN"] = {
            Index = 93,
            Name = "INPUT_VEH_SPECIAL_ABILITY_FRANKLIN",
            DefaultQWERTY = "(NONE)",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_VEH_STUNT_UD"] = {
            Index = 94,
            Name = "INPUT_VEH_STUNT_UD",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_CINEMATIC_UD"] = {
            Index = 95,
            Name = "INPUT_VEH_CINEMATIC_UD",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_CINEMATIC_UP_ONLY"] = {
            Index = 96,
            Name = "INPUT_VEH_CINEMATIC_UP_ONLY",
            DefaultQWERTY = "NUMPAD- / SCROLLWHEEL UP",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_CINEMATIC_DOWN_ONLY"] = {
            Index = 97,
            Name = "INPUT_VEH_CINEMATIC_DOWN_ONLY",
            DefaultQWERTY = "NUMPAD+ / SCROLLWHEEL DOWN",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_CINEMATIC_LR"] = {
            Index = 98,
            Name = "INPUT_VEH_CINEMATIC_LR",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SELECT_NEXT_WEAPON"] = {
            Index = 99,
            Name = "INPUT_VEH_SELECT_NEXT_WEAPON",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_VEH_SELECT_PREV_WEAPON"] = {
            Index = 100,
            Name = "INPUT_VEH_SELECT_PREV_WEAPON",
            DefaultQWERTY = "[",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_ROOF"] = {
            Index = 101,
            Name = "INPUT_VEH_ROOF",
            DefaultQWERTY = "H",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_JUMP"] = {
            Index = 102,
            Name = "INPUT_VEH_JUMP",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_VEH_GRAPPLING_HOOK"] = {
            Index = 103,
            Name = "INPUT_VEH_GRAPPLING_HOOK",
            DefaultQWERTY = "E",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_SHUFFLE"] = {
            Index = 104,
            Name = "INPUT_VEH_SHUFFLE",
            DefaultQWERTY = "H",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_DROP_PROJECTILE"] = {
            Index = 105,
            Name = "INPUT_VEH_DROP_PROJECTILE",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_MOUSE_CONTROL_OVERRIDE"] = {
            Index = 106,
            Name = "INPUT_VEH_MOUSE_CONTROL_OVERRIDE",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_ROLL_LR"] = {
            Index = 107,
            Name = "INPUT_VEH_FLY_ROLL_LR",
            DefaultQWERTY = "NUMPAD 6",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_ROLL_LEFT_ONLY"] = {
            Index = 108,
            Name = "INPUT_VEH_FLY_ROLL_LEFT_ONLY",
            DefaultQWERTY = "NUMPAD 4",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_ROLL_RIGHT_ONLY"] = {
            Index = 109,
            Name = "INPUT_VEH_FLY_ROLL_RIGHT_ONLY",
            DefaultQWERTY = "NUMPAD 6",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_PITCH_UD"] = {
            Index = 110,
            Name = "INPUT_VEH_FLY_PITCH_UD",
            DefaultQWERTY = "NUMPAD 5",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_PITCH_UP_ONLY"] = {
            Index = 111,
            Name = "INPUT_VEH_FLY_PITCH_UP_ONLY",
            DefaultQWERTY = "NUMPAD 8",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_PITCH_DOWN_ONLY"] = {
            Index = 112,
            Name = "INPUT_VEH_FLY_PITCH_DOWN_ONLY",
            DefaultQWERTY = "NUMPAD 5",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_UNDERCARRIAGE"] = {
            Index = 113,
            Name = "INPUT_VEH_FLY_UNDERCARRIAGE",
            DefaultQWERTY = "G",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_ATTACK"] = {
            Index = 114,
            Name = "INPUT_VEH_FLY_ATTACK",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_SELECT_NEXT_WEAPON"] = {
            Index = 115,
            Name = "INPUT_VEH_FLY_SELECT_NEXT_WEAPON",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_SELECT_PREV_WEAPON"] = {
            Index = 116,
            Name = "INPUT_VEH_FLY_SELECT_PREV_WEAPON",
            DefaultQWERTY = "[",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_SELECT_TARGET_LEFT"] = {
            Index = 117,
            Name = "INPUT_VEH_FLY_SELECT_TARGET_LEFT",
            DefaultQWERTY = "NUMPAD 7",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_SELECT_TARGET_RIGHT"] = {
            Index = 118,
            Name = "INPUT_VEH_FLY_SELECT_TARGET_RIGHT",
            DefaultQWERTY = "NUMPAD 9",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_VERTICAL_FLIGHT_MODE"] = {
            Index = 119,
            Name = "INPUT_VEH_FLY_VERTICAL_FLIGHT_MODE",
            DefaultQWERTY = "E",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_DUCK"] = {
            Index = 120,
            Name = "INPUT_VEH_FLY_DUCK",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_ATTACK_CAMERA"] = {
            Index = 121,
            Name = "INPUT_VEH_FLY_ATTACK_CAMERA",
            DefaultQWERTY = "INSERT",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_MOUSE_CONTROL_OVERRIDE"] = {
            Index = 122,
            Name = "INPUT_VEH_FLY_MOUSE_CONTROL_OVERRIDE",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_TURN_LR"] = {
            Index = 123,
            Name = "INPUT_VEH_SUB_TURN_LR",
            DefaultQWERTY = "NUMPAD 6",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_TURN_LEFT_ONLY"] = {
            Index = 124,
            Name = "INPUT_VEH_SUB_TURN_LEFT_ONLY",
            DefaultQWERTY = "NUMPAD 4",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_TURN_RIGHT_ONLY"] = {
            Index = 125,
            Name = "INPUT_VEH_SUB_TURN_RIGHT_ONLY",
            DefaultQWERTY = "NUMPAD 6",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_PITCH_UD"] = {
            Index = 126,
            Name = "INPUT_VEH_SUB_PITCH_UD",
            DefaultQWERTY = "NUMPAD 5",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_PITCH_UP_ONLY"] = {
            Index = 127,
            Name = "INPUT_VEH_SUB_PITCH_UP_ONLY",
            DefaultQWERTY = "NUMPAD 8",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_PITCH_DOWN_ONLY"] = {
            Index = 128,
            Name = "INPUT_VEH_SUB_PITCH_DOWN_ONLY",
            DefaultQWERTY = "NUMPAD 5",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_THROTTLE_UP"] = {
            Index = 129,
            Name = "INPUT_VEH_SUB_THROTTLE_UP",
            DefaultQWERTY = "W",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_THROTTLE_DOWN"] = {
            Index = 130,
            Name = "INPUT_VEH_SUB_THROTTLE_DOWN",
            DefaultQWERTY = "S",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_ASCEND"] = {
            Index = 131,
            Name = "INPUT_VEH_SUB_ASCEND",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_DESCEND"] = {
            Index = 132,
            Name = "INPUT_VEH_SUB_DESCEND",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_TURN_HARD_LEFT"] = {
            Index = 133,
            Name = "INPUT_VEH_SUB_TURN_HARD_LEFT",
            DefaultQWERTY = "A",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_TURN_HARD_RIGHT"] = {
            Index = 134,
            Name = "INPUT_VEH_SUB_TURN_HARD_RIGHT",
            DefaultQWERTY = "D",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_VEH_SUB_MOUSE_CONTROL_OVERRIDE"] = {
            Index = 135,
            Name = "INPUT_VEH_SUB_MOUSE_CONTROL_OVERRIDE",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_PUSHBIKE_PEDAL"] = {
            Index = 136,
            Name = "INPUT_VEH_PUSHBIKE_PEDAL",
            DefaultQWERTY = "W",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_PUSHBIKE_SPRINT"] = {
            Index = 137,
            Name = "INPUT_VEH_PUSHBIKE_SPRINT",
            DefaultQWERTY = "CAPSLOCK",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_PUSHBIKE_FRONT_BRAKE"] = {
            Index = 138,
            Name = "INPUT_VEH_PUSHBIKE_FRONT_BRAKE",
            DefaultQWERTY = "Q",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_VEH_PUSHBIKE_REAR_BRAKE"] = {
            Index = 139,
            Name = "INPUT_VEH_PUSHBIKE_REAR_BRAKE",
            DefaultQWERTY = "S",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_MELEE_ATTACK_LIGHT"] = {
            Index = 140,
            Name = "INPUT_MELEE_ATTACK_LIGHT",
            DefaultQWERTY = "R",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_MELEE_ATTACK_HEAVY"] = {
            Index = 141,
            Name = "INPUT_MELEE_ATTACK_HEAVY",
            DefaultQWERTY = "Q",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_MELEE_ATTACK_ALTERNATE"] = {
            Index = 142,
            Name = "INPUT_MELEE_ATTACK_ALTERNATE",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_MELEE_BLOCK"] = {
            Index = 143,
            Name = "INPUT_MELEE_BLOCK",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_DEPLOY"] = {
            Index = 144,
            Name = "INPUT_PARACHUTE_DEPLOY",
            DefaultQWERTY = "F / LEFT MOUSE BUTTON",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_DETACH"] = {
            Index = 145,
            Name = "INPUT_PARACHUTE_DETACH",
            DefaultQWERTY = "F",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_TURN_LR"] = {
            Index = 146,
            Name = "INPUT_PARACHUTE_TURN_LR",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_TURN_LEFT_ONLY"] = {
            Index = 147,
            Name = "INPUT_PARACHUTE_TURN_LEFT_ONLY",
            DefaultQWERTY = "A",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_TURN_RIGHT_ONLY"] = {
            Index = 148,
            Name = "INPUT_PARACHUTE_TURN_RIGHT_ONLY",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_PITCH_UD"] = {
            Index = 149,
            Name = "INPUT_PARACHUTE_PITCH_UD",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_PITCH_UP_ONLY"] = {
            Index = 150,
            Name = "INPUT_PARACHUTE_PITCH_UP_ONLY",
            DefaultQWERTY = "W",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_PITCH_DOWN_ONLY"] = {
            Index = 151,
            Name = "INPUT_PARACHUTE_PITCH_DOWN_ONLY",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_BRAKE_LEFT"] = {
            Index = 152,
            Name = "INPUT_PARACHUTE_BRAKE_LEFT",
            DefaultQWERTY = "Q",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_BRAKE_RIGHT"] = {
            Index = 153,
            Name = "INPUT_PARACHUTE_BRAKE_RIGHT",
            DefaultQWERTY = "E",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_SMOKE"] = {
            Index = 154,
            Name = "INPUT_PARACHUTE_SMOKE",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_PARACHUTE_PRECISION_LANDING"] = {
            Index = 155,
            Name = "INPUT_PARACHUTE_PRECISION_LANDING",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_MAP"] = {
            Index = 156,
            Name = "INPUT_MAP",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_UNARMED"] = {
            Index = 157,
            Name = "INPUT_SELECT_WEAPON_UNARMED",
            DefaultQWERTY = "1",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_MELEE"] = {
            Index = 158,
            Name = "INPUT_SELECT_WEAPON_MELEE",
            DefaultQWERTY = "2",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_HANDGUN"] = {
            Index = 159,
            Name = "INPUT_SELECT_WEAPON_HANDGUN",
            DefaultQWERTY = "6",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_SHOTGUN"] = {
            Index = 160,
            Name = "INPUT_SELECT_WEAPON_SHOTGUN",
            DefaultQWERTY = "3",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_SMG"] = {
            Index = 161,
            Name = "INPUT_SELECT_WEAPON_SMG",
            DefaultQWERTY = "7",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_AUTO_RIFLE"] = {
            Index = 162,
            Name = "INPUT_SELECT_WEAPON_AUTO_RIFLE",
            DefaultQWERTY = "8",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_SNIPER"] = {
            Index = 163,
            Name = "INPUT_SELECT_WEAPON_SNIPER",
            DefaultQWERTY = "9",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_HEAVY"] = {
            Index = 164,
            Name = "INPUT_SELECT_WEAPON_HEAVY",
            DefaultQWERTY = "4",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_WEAPON_SPECIAL"] = {
            Index = 165,
            Name = "INPUT_SELECT_WEAPON_SPECIAL",
            DefaultQWERTY = "5",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_CHARACTER_MICHAEL"] = {
            Index = 166,
            Name = "INPUT_SELECT_CHARACTER_MICHAEL",
            DefaultQWERTY = "F5",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_CHARACTER_FRANKLIN"] = {
            Index = 167,
            Name = "INPUT_SELECT_CHARACTER_FRANKLIN",
            DefaultQWERTY = "F6",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_CHARACTER_TREVOR"] = {
            Index = 168,
            Name = "INPUT_SELECT_CHARACTER_TREVOR",
            DefaultQWERTY = "F7",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SELECT_CHARACTER_MULTIPLAYER"] = {
            Index = 169,
            Name = "INPUT_SELECT_CHARACTER_MULTIPLAYER",
            DefaultQWERTY = "F8 (CONSOLE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_SAVE_REPLAY_CLIP"] = {
            Index = 170,
            Name = "INPUT_SAVE_REPLAY_CLIP",
            DefaultQWERTY = "F3",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_SPECIAL_ABILITY_PC"] = {
            Index = 171,
            Name = "INPUT_SPECIAL_ABILITY_PC",
            DefaultQWERTY = "CAPSLOCK",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_UP"] = {
            Index = 172,
            Name = "INPUT_CELLPHONE_UP",
            DefaultQWERTY = "ARROW UP",
            XboxController = "DPAD UP",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_DOWN"] = {
            Index = 173,
            Name = "INPUT_CELLPHONE_DOWN",
            DefaultQWERTY = "ARROW DOWN",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_LEFT"] = {
            Index = 174,
            Name = "INPUT_CELLPHONE_LEFT",
            DefaultQWERTY = "ARROW LEFT",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_RIGHT"] = {
            Index = 175,
            Name = "INPUT_CELLPHONE_RIGHT",
            DefaultQWERTY = "ARROW RIGHT",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_SELECT"] = {
            Index = 176,
            Name = "INPUT_CELLPHONE_SELECT",
            DefaultQWERTY = "ENTER / LEFT MOUSE BUTTON",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_CANCEL"] = {
            Index = 177,
            Name = "INPUT_CELLPHONE_CANCEL",
            DefaultQWERTY = "BACKSPACE / ESC / RIGHT MOUSE BUTTON",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_OPTION"] = {
            Index = 178,
            Name = "INPUT_CELLPHONE_OPTION",
            DefaultQWERTY = "DELETE",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_EXTRA_OPTION"] = {
            Index = 179,
            Name = "INPUT_CELLPHONE_EXTRA_OPTION",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_SCROLL_FORWARD"] = {
            Index = 180,
            Name = "INPUT_CELLPHONE_SCROLL_FORWARD",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_SCROLL_BACKWARD"] = {
            Index = 181,
            Name = "INPUT_CELLPHONE_SCROLL_BACKWARD",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_CAMERA_FOCUS_LOCK"] = {
            Index = 182,
            Name = "INPUT_CELLPHONE_CAMERA_FOCUS_LOCK",
            DefaultQWERTY = "L",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_CAMERA_GRID"] = {
            Index = 183,
            Name = "INPUT_CELLPHONE_CAMERA_GRID",
            DefaultQWERTY = "G",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_CAMERA_SELFIE"] = {
            Index = 184,
            Name = "INPUT_CELLPHONE_CAMERA_SELFIE",
            DefaultQWERTY = "E",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_CAMERA_DOF"] = {
            Index = 185,
            Name = "INPUT_CELLPHONE_CAMERA_DOF",
            DefaultQWERTY = "F",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_CELLPHONE_CAMERA_EXPRESSION"] = {
            Index = 186,
            Name = "INPUT_CELLPHONE_CAMERA_EXPRESSION",
            DefaultQWERTY = "X",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_DOWN"] = {
            Index = 187,
            Name = "INPUT_FRONTEND_DOWN",
            DefaultQWERTY = "ARROW DOWN",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_UP"] = {
            Index = 188,
            Name = "INPUT_FRONTEND_UP",
            DefaultQWERTY = "ARROW UP",
            XboxController = "DPAD UP",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_LEFT"] = {
            Index = 189,
            Name = "INPUT_FRONTEND_LEFT",
            DefaultQWERTY = "ARROW LEFT",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RIGHT"] = {
            Index = 190,
            Name = "INPUT_FRONTEND_RIGHT",
            DefaultQWERTY = "ARROW RIGHT",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RDOWN"] = {
            Index = 191,
            Name = "INPUT_FRONTEND_RDOWN",
            DefaultQWERTY = "ENTER",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RUP"] = {
            Index = 192,
            Name = "INPUT_FRONTEND_RUP",
            DefaultQWERTY = "TAB",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RLEFT"] = {
            Index = 193,
            Name = "INPUT_FRONTEND_RLEFT",
            DefaultQWERTY = "(NONE)",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RRIGHT"] = {
            Index = 194,
            Name = "INPUT_FRONTEND_RRIGHT",
            DefaultQWERTY = "BACKSPACE",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_AXIS_X"] = {
            Index = 195,
            Name = "INPUT_FRONTEND_AXIS_X",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_AXIS_Y"] = {
            Index = 196,
            Name = "INPUT_FRONTEND_AXIS_Y",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RIGHT_AXIS_X"] = {
            Index = 197,
            Name = "INPUT_FRONTEND_RIGHT_AXIS_X",
            DefaultQWERTY = "]",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RIGHT_AXIS_Y"] = {
            Index = 198,
            Name = "INPUT_FRONTEND_RIGHT_AXIS_Y",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_PAUSE"] = {
            Index = 199,
            Name = "INPUT_FRONTEND_PAUSE",
            DefaultQWERTY = "P",
            XboxController = "START",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_PAUSE_ALTERNATE"] = {
            Index = 200,
            Name = "INPUT_FRONTEND_PAUSE_ALTERNATE",
            DefaultQWERTY = "ESC",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_ACCEPT"] = {
            Index = 201,
            Name = "INPUT_FRONTEND_ACCEPT",
            DefaultQWERTY = "ENTER / NUMPAD ENTER",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_CANCEL"] = {
            Index = 202,
            Name = "INPUT_FRONTEND_CANCEL",
            DefaultQWERTY = "BACKSPACE / ESC",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_X"] = {
            Index = 203,
            Name = "INPUT_FRONTEND_X",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_Y"] = {
            Index = 204,
            Name = "INPUT_FRONTEND_Y",
            DefaultQWERTY = "TAB",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_LB"] = {
            Index = 205,
            Name = "INPUT_FRONTEND_LB",
            DefaultQWERTY = "Q",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RB"] = {
            Index = 206,
            Name = "INPUT_FRONTEND_RB",
            DefaultQWERTY = "E",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_LT"] = {
            Index = 207,
            Name = "INPUT_FRONTEND_LT",
            DefaultQWERTY = "PAGE DOWN",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RT"] = {
            Index = 208,
            Name = "INPUT_FRONTEND_RT",
            DefaultQWERTY = "PAGE UP",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_LS"] = {
            Index = 209,
            Name = "INPUT_FRONTEND_LS",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_RS"] = {
            Index = 210,
            Name = "INPUT_FRONTEND_RS",
            DefaultQWERTY = "LEFT CONTROL",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_LEADERBOARD"] = {
            Index = 211,
            Name = "INPUT_FRONTEND_LEADERBOARD",
            DefaultQWERTY = "TAB",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_SOCIAL_CLUB"] = {
            Index = 212,
            Name = "INPUT_FRONTEND_SOCIAL_CLUB",
            DefaultQWERTY = "HOME",
            XboxController = "BACK",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_SOCIAL_CLUB_SECONDARY"] = {
            Index = 213,
            Name = "INPUT_FRONTEND_SOCIAL_CLUB_SECONDARY",
            DefaultQWERTY = "HOME",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_DELETE"] = {
            Index = 214,
            Name = "INPUT_FRONTEND_DELETE",
            DefaultQWERTY = "DELETE",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_ENDSCREEN_ACCEPT"] = {
            Index = 215,
            Name = "INPUT_FRONTEND_ENDSCREEN_ACCEPT",
            DefaultQWERTY = "ENTER",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_ENDSCREEN_EXPAND"] = {
            Index = 216,
            Name = "INPUT_FRONTEND_ENDSCREEN_EXPAND",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_FRONTEND_SELECT"] = {
            Index = 217,
            Name = "INPUT_FRONTEND_SELECT",
            DefaultQWERTY = "CAPSLOCK",
            XboxController = "BACK",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_LEFT_AXIS_X"] = {
            Index = 218,
            Name = "INPUT_SCRIPT_LEFT_AXIS_X",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_LEFT_AXIS_Y"] = {
            Index = 219,
            Name = "INPUT_SCRIPT_LEFT_AXIS_Y",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RIGHT_AXIS_X"] = {
            Index = 220,
            Name = "INPUT_SCRIPT_RIGHT_AXIS_X",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RIGHT_AXIS_Y"] = {
            Index = 221,
            Name = "INPUT_SCRIPT_RIGHT_AXIS_Y",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RUP"] = {
            Index = 222,
            Name = "INPUT_SCRIPT_RUP",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RDOWN"] = {
            Index = 223,
            Name = "INPUT_SCRIPT_RDOWN",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RLEFT"] = {
            Index = 224,
            Name = "INPUT_SCRIPT_RLEFT",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RRIGHT"] = {
            Index = 225,
            Name = "INPUT_SCRIPT_RRIGHT",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_LB"] = {
            Index = 226,
            Name = "INPUT_SCRIPT_LB",
            DefaultQWERTY = "(NONE)",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RB"] = {
            Index = 227,
            Name = "INPUT_SCRIPT_RB",
            DefaultQWERTY = "(NONE)",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_LT"] = {
            Index = 228,
            Name = "INPUT_SCRIPT_LT",
            DefaultQWERTY = "(NONE)",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RT"] = {
            Index = 229,
            Name = "INPUT_SCRIPT_RT",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_LS"] = {
            Index = 230,
            Name = "INPUT_SCRIPT_LS",
            DefaultQWERTY = "(NONE)",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_RS"] = {
            Index = 231,
            Name = "INPUT_SCRIPT_RS",
            DefaultQWERTY = "(NONE)",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_PAD_UP"] = {
            Index = 232,
            Name = "INPUT_SCRIPT_PAD_UP",
            DefaultQWERTY = "W",
            XboxController = "DPAD UP",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_PAD_DOWN"] = {
            Index = 233,
            Name = "INPUT_SCRIPT_PAD_DOWN",
            DefaultQWERTY = "S",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_PAD_LEFT"] = {
            Index = 234,
            Name = "INPUT_SCRIPT_PAD_LEFT",
            DefaultQWERTY = "A",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_PAD_RIGHT"] = {
            Index = 235,
            Name = "INPUT_SCRIPT_PAD_RIGHT",
            DefaultQWERTY = "D",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_SCRIPT_SELECT"] = {
            Index = 236,
            Name = "INPUT_SCRIPT_SELECT",
            DefaultQWERTY = "V",
            XboxController = "BACK",
            CustomKey = nil
        },
        ["INPUT_CURSOR_ACCEPT"] = {
            Index = 237,
            Name = "INPUT_CURSOR_ACCEPT",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CURSOR_CANCEL"] = {
            Index = 238,
            Name = "INPUT_CURSOR_CANCEL",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CURSOR_X"] = {
            Index = 239,
            Name = "INPUT_CURSOR_X",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CURSOR_Y"] = {
            Index = 240,
            Name = "INPUT_CURSOR_Y",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CURSOR_SCROLL_UP"] = {
            Index = 241,
            Name = "INPUT_CURSOR_SCROLL_UP",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CURSOR_SCROLL_DOWN"] = {
            Index = 242,
            Name = "INPUT_CURSOR_SCROLL_DOWN",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_ENTER_CHEAT_CODE"] = {
            Index = 243,
            Name = "INPUT_ENTER_CHEAT_CODE",
            DefaultQWERTY = "~ / `",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_INTERACTION_MENU"] = {
            Index = 244,
            Name = "INPUT_INTERACTION_MENU",
            DefaultQWERTY = "M",
            XboxController = "BACK",
            CustomKey = nil
        },
        ["INPUT_MP_TEXT_CHAT_ALL"] = {
            Index = 245,
            Name = "INPUT_MP_TEXT_CHAT_ALL",
            DefaultQWERTY = "T",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_MP_TEXT_CHAT_TEAM"] = {
            Index = 246,
            Name = "INPUT_MP_TEXT_CHAT_TEAM",
            DefaultQWERTY = "Y",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_MP_TEXT_CHAT_FRIENDS"] = {
            Index = 247,
            Name = "INPUT_MP_TEXT_CHAT_FRIENDS",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_MP_TEXT_CHAT_CREW"] = {
            Index = 248,
            Name = "INPUT_MP_TEXT_CHAT_CREW",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_PUSH_TO_TALK"] = {
            Index = 249,
            Name = "INPUT_PUSH_TO_TALK",
            DefaultQWERTY = "N",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CREATOR_LS"] = {
            Index = 250,
            Name = "INPUT_CREATOR_LS",
            DefaultQWERTY = "R",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_CREATOR_RS"] = {
            Index = 251,
            Name = "INPUT_CREATOR_RS",
            DefaultQWERTY = "F",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_CREATOR_LT"] = {
            Index = 252,
            Name = "INPUT_CREATOR_LT",
            DefaultQWERTY = "X",
            XboxController = "LT",
            CustomKey = nil
        },
        ["INPUT_CREATOR_RT"] = {
            Index = 253,
            Name = "INPUT_CREATOR_RT",
            DefaultQWERTY = "C",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_CREATOR_MENU_TOGGLE"] = {
            Index = 254,
            Name = "INPUT_CREATOR_MENU_TOGGLE",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_CREATOR_ACCEPT"] = {
            Index = 255,
            Name = "INPUT_CREATOR_ACCEPT",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_CREATOR_DELETE"] = {
            Index = 256,
            Name = "INPUT_CREATOR_DELETE",
            DefaultQWERTY = "DELETE",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_ATTACK2"] = {
            Index = 257,
            Name = "INPUT_ATTACK2",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_RAPPEL_JUMP"] = {
            Index = 258,
            Name = "INPUT_RAPPEL_JUMP",
            DefaultQWERTY = "(NONE)",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_RAPPEL_LONG_JUMP"] = {
            Index = 259,
            Name = "INPUT_RAPPEL_LONG_JUMP",
            DefaultQWERTY = "(NONE)",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_RAPPEL_SMASH_WINDOW"] = {
            Index = 260,
            Name = "INPUT_RAPPEL_SMASH_WINDOW",
            DefaultQWERTY = "(NONE)",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_PREV_WEAPON"] = {
            Index = 261,
            Name = "INPUT_PREV_WEAPON",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_NEXT_WEAPON"] = {
            Index = 262,
            Name = "INPUT_NEXT_WEAPON",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_MELEE_ATTACK1"] = {
            Index = 263,
            Name = "INPUT_MELEE_ATTACK1",
            DefaultQWERTY = "R",
            XboxController = "B",
            CustomKey = nil
        },
        ["INPUT_MELEE_ATTACK2"] = {
            Index = 264,
            Name = "INPUT_MELEE_ATTACK2",
            DefaultQWERTY = "Q",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_WHISTLE"] = {
            Index = 265,
            Name = "INPUT_WHISTLE",
            DefaultQWERTY = "(NONE)",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_MOVE_LEFT"] = {
            Index = 266,
            Name = "INPUT_MOVE_LEFT",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_RIGHT"] = {
            Index = 267,
            Name = "INPUT_MOVE_RIGHT",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_UP"] = {
            Index = 268,
            Name = "INPUT_MOVE_UP",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_MOVE_DOWN"] = {
            Index = 269,
            Name = "INPUT_MOVE_DOWN",
            DefaultQWERTY = "S",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_LEFT"] = {
            Index = 270,
            Name = "INPUT_LOOK_LEFT",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_RIGHT"] = {
            Index = 271,
            Name = "INPUT_LOOK_RIGHT",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_UP"] = {
            Index = 272,
            Name = "INPUT_LOOK_UP",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_LOOK_DOWN"] = {
            Index = 273,
            Name = "INPUT_LOOK_DOWN",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_IN"] = {
            Index = 274,
            Name = "INPUT_SNIPER_ZOOM_IN",
            DefaultQWERTY = "[",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_OUT"] = {
            Index = 275,
            Name = "INPUT_SNIPER_ZOOM_OUT",
            DefaultQWERTY = "[",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_IN_ALTERNATE"] = {
            Index = 276,
            Name = "INPUT_SNIPER_ZOOM_IN_ALTERNATE",
            DefaultQWERTY = "[",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SNIPER_ZOOM_OUT_ALTERNATE"] = {
            Index = 277,
            Name = "INPUT_SNIPER_ZOOM_OUT_ALTERNATE",
            DefaultQWERTY = "[",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_LEFT"] = {
            Index = 278,
            Name = "INPUT_VEH_MOVE_LEFT",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_RIGHT"] = {
            Index = 279,
            Name = "INPUT_VEH_MOVE_RIGHT",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_UP"] = {
            Index = 280,
            Name = "INPUT_VEH_MOVE_UP",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_MOVE_DOWN"] = {
            Index = 281,
            Name = "INPUT_VEH_MOVE_DOWN",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_GUN_LEFT"] = {
            Index = 282,
            Name = "INPUT_VEH_GUN_LEFT",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_GUN_RIGHT"] = {
            Index = 283,
            Name = "INPUT_VEH_GUN_RIGHT",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_GUN_UP"] = {
            Index = 284,
            Name = "INPUT_VEH_GUN_UP",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_GUN_DOWN"] = {
            Index = 285,
            Name = "INPUT_VEH_GUN_DOWN",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_LOOK_LEFT"] = {
            Index = 286,
            Name = "INPUT_VEH_LOOK_LEFT",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_LOOK_RIGHT"] = {
            Index = 287,
            Name = "INPUT_VEH_LOOK_RIGHT",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_REPLAY_START_STOP_RECORDING"] = {
            Index = 288,
            Name = "INPUT_REPLAY_START_STOP_RECORDING",
            DefaultQWERTY = "F1",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_REPLAY_START_STOP_RECORDING_SECONDARY"] = {
            Index = 289,
            Name = "INPUT_REPLAY_START_STOP_RECORDING_SECONDARY",
            DefaultQWERTY = "F2",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_SCALED_LOOK_LR"] = {
            Index = 290,
            Name = "INPUT_SCALED_LOOK_LR",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SCALED_LOOK_UD"] = {
            Index = 291,
            Name = "INPUT_SCALED_LOOK_UD",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SCALED_LOOK_UP_ONLY"] = {
            Index = 292,
            Name = "INPUT_SCALED_LOOK_UP_ONLY",
            DefaultQWERTY = "(NONE)",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SCALED_LOOK_DOWN_ONLY"] = {
            Index = 293,
            Name = "INPUT_SCALED_LOOK_DOWN_ONLY",
            DefaultQWERTY = "(NONE)",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SCALED_LOOK_LEFT_ONLY"] = {
            Index = 294,
            Name = "INPUT_SCALED_LOOK_LEFT_ONLY",
            DefaultQWERTY = "(NONE)",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_SCALED_LOOK_RIGHT_ONLY"] = {
            Index = 295,
            Name = "INPUT_SCALED_LOOK_RIGHT_ONLY",
            DefaultQWERTY = "(NONE)",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_REPLAY_MARKER_DELETE"] = {
            Index = 296,
            Name = "INPUT_REPLAY_MARKER_DELETE",
            DefaultQWERTY = "DELETE",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_REPLAY_CLIP_DELETE"] = {
            Index = 297,
            Name = "INPUT_REPLAY_CLIP_DELETE",
            DefaultQWERTY = "DELETE",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_REPLAY_PAUSE"] = {
            Index = 298,
            Name = "INPUT_REPLAY_PAUSE",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_REPLAY_REWIND"] = {
            Index = 299,
            Name = "INPUT_REPLAY_REWIND",
            DefaultQWERTY = "ARROW DOWN",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_REPLAY_FFWD"] = {
            Index = 300,
            Name = "INPUT_REPLAY_FFWD",
            DefaultQWERTY = "ARROW UP",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_REPLAY_NEWMARKER"] = {
            Index = 301,
            Name = "INPUT_REPLAY_NEWMARKER",
            DefaultQWERTY = "M",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_REPLAY_RECORD"] = {
            Index = 302,
            Name = "INPUT_REPLAY_RECORD",
            DefaultQWERTY = "S",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_SCREENSHOT"] = {
            Index = 303,
            Name = "INPUT_REPLAY_SCREENSHOT",
            DefaultQWERTY = "U",
            XboxController = "DPAD UP",
            CustomKey = nil
        },
        ["INPUT_REPLAY_HIDEHUD"] = {
            Index = 304,
            Name = "INPUT_REPLAY_HIDEHUD",
            DefaultQWERTY = "H",
            XboxController = "R3",
            CustomKey = nil
        },
        ["INPUT_REPLAY_STARTPOINT"] = {
            Index = 305,
            Name = "INPUT_REPLAY_STARTPOINT",
            DefaultQWERTY = "B",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_ENDPOINT"] = {
            Index = 306,
            Name = "INPUT_REPLAY_ENDPOINT",
            DefaultQWERTY = "N",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_ADVANCE"] = {
            Index = 307,
            Name = "INPUT_REPLAY_ADVANCE",
            DefaultQWERTY = "ARROW RIGHT",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_REPLAY_BACK"] = {
            Index = 308,
            Name = "INPUT_REPLAY_BACK",
            DefaultQWERTY = "ARROW LEFT",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_REPLAY_TOOLS"] = {
            Index = 309,
            Name = "INPUT_REPLAY_TOOLS",
            DefaultQWERTY = "T",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_REPLAY_RESTART"] = {
            Index = 310,
            Name = "INPUT_REPLAY_RESTART",
            DefaultQWERTY = "R",
            XboxController = "BACK",
            CustomKey = nil
        },
        ["INPUT_REPLAY_SHOWHOTKEY"] = {
            Index = 311,
            Name = "INPUT_REPLAY_SHOWHOTKEY",
            DefaultQWERTY = "K",
            XboxController = "DPAD DOWN",
            CustomKey = nil
        },
        ["INPUT_REPLAY_CYCLEMARKERLEFT"] = {
            Index = 312,
            Name = "INPUT_REPLAY_CYCLEMARKERLEFT",
            DefaultQWERTY = "[",
            XboxController = "DPAD LEFT",
            CustomKey = nil
        },
        ["INPUT_REPLAY_CYCLEMARKERRIGHT"] = {
            Index = 313,
            Name = "INPUT_REPLAY_CYCLEMARKERRIGHT",
            DefaultQWERTY = "]",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_REPLAY_FOVINCREASE"] = {
            Index = 314,
            Name = "INPUT_REPLAY_FOVINCREASE",
            DefaultQWERTY = "NUMPAD +",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_REPLAY_FOVDECREASE"] = {
            Index = 315,
            Name = "INPUT_REPLAY_FOVDECREASE",
            DefaultQWERTY = "NUMPAD -",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_REPLAY_CAMERAUP"] = {
            Index = 316,
            Name = "INPUT_REPLAY_CAMERAUP",
            DefaultQWERTY = "PAGE UP",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_CAMERADOWN"] = {
            Index = 317,
            Name = "INPUT_REPLAY_CAMERADOWN",
            DefaultQWERTY = "PAGE DOWN",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_SAVE"] = {
            Index = 318,
            Name = "INPUT_REPLAY_SAVE",
            DefaultQWERTY = "F5",
            XboxController = "START",
            CustomKey = nil
        },
        ["INPUT_REPLAY_TOGGLETIME"] = {
            Index = 319,
            Name = "INPUT_REPLAY_TOGGLETIME",
            DefaultQWERTY = "C",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_TOGGLETIPS"] = {
            Index = 320,
            Name = "INPUT_REPLAY_TOGGLETIPS",
            DefaultQWERTY = "V",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_PREVIEW"] = {
            Index = 321,
            Name = "INPUT_REPLAY_PREVIEW",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_TOGGLE_TIMELINE"] = {
            Index = 322,
            Name = "INPUT_REPLAY_TOGGLE_TIMELINE",
            DefaultQWERTY = "ESC",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_TIMELINE_PICKUP_CLIP"] = {
            Index = 323,
            Name = "INPUT_REPLAY_TIMELINE_PICKUP_CLIP",
            DefaultQWERTY = "X",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_TIMELINE_DUPLICATE_CLIP"] = {
            Index = 324,
            Name = "INPUT_REPLAY_TIMELINE_DUPLICATE_CLIP",
            DefaultQWERTY = "C",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        {
            Index = 325,
            Name = "INPUT_REPLAY_TIMELINE_PLACE_CLIP",
            DefaultQWERTY = "V",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_CTRL"] = {
            Index = 326,
            Name = "INPUT_REPLAY_CTRL",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_TIMELINE_SAVE"] = {
            Index = 327,
            Name = "INPUT_REPLAY_TIMELINE_SAVE",
            DefaultQWERTY = "F5",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_REPLAY_PREVIEW_AUDIO"] = {
            Index = 328,
            Name = "INPUT_REPLAY_PREVIEW_AUDIO",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "RT",
            CustomKey = nil
        },
        ["INPUT_VEH_DRIVE_LOOK"] = {
            Index = 329,
            Name = "INPUT_VEH_DRIVE_LOOK",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_DRIVE_LOOK2"] = {
            Index = 330,
            Name = "INPUT_VEH_DRIVE_LOOK2",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_ATTACK2"] = {
            Index = 331,
            Name = "INPUT_VEH_FLY_ATTACK2",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "(NONE)",
            CustomKey = nil
        },
        ["INPUT_RADIO_WHEEL_UD"] = {
            Index = 332,
            Name = "INPUT_RADIO_WHEEL_UD",
            DefaultQWERTY = "MOUSE DOWN",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_RADIO_WHEEL_LR"] = {
            Index = 333,
            Name = "INPUT_RADIO_WHEEL_LR",
            DefaultQWERTY = "MOUSE RIGHT",
            XboxController = "RIGHT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SLOWMO_UD"] = {
            Index = 334,
            Name = "INPUT_VEH_SLOWMO_UD",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SLOWMO_UP_ONLY"] = {
            Index = 335,
            Name = "INPUT_VEH_SLOWMO_UP_ONLY",
            DefaultQWERTY = "SCROLLWHEEL UP",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_SLOWMO_DOWN_ONLY"] = {
            Index = 336,
            Name = "INPUT_VEH_SLOWMO_DOWN_ONLY",
            DefaultQWERTY = "SCROLLWHEEL DOWN",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE"] = {
            Index = 337,
            Name = "INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_HYDRAULICS_CONTROL_LEFT"] = {
            Index = 338,
            Name = "INPUT_VEH_HYDRAULICS_CONTROL_LEFT",
            DefaultQWERTY = "A",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_HYDRAULICS_CONTROL_RIGHT"] = {
            Index = 339,
            Name = "INPUT_VEH_HYDRAULICS_CONTROL_RIGHT",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_HYDRAULICS_CONTROL_UP"] = {
            Index = 340,
            Name = "INPUT_VEH_HYDRAULICS_CONTROL_UP",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_HYDRAULICS_CONTROL_DOWN"] = {
            Index = 341,
            Name = "INPUT_VEH_HYDRAULICS_CONTROL_DOWN",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_HYDRAULICS_CONTROL_UD"] = {
            Index = 342,
            Name = "INPUT_VEH_HYDRAULICS_CONTROL_UD",
            DefaultQWERTY = "D",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_VEH_HYDRAULICS_CONTROL_LR"] = {
            Index = 343,
            Name = "INPUT_VEH_HYDRAULICS_CONTROL_LR",
            DefaultQWERTY = "LEFT CTRL",
            XboxController = "LEFT STICK",
            CustomKey = nil
        },
        ["INPUT_SWITCH_VISOR"] = {
            Index = 344,
            Name = "INPUT_SWITCH_VISOR",
            DefaultQWERTY = "F11",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_MELEE_HOLD"] = {
            Index = 345,
            Name = "INPUT_VEH_MELEE_HOLD",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_MELEE_LEFT"] = {
            Index = 346,
            Name = "INPUT_VEH_MELEE_LEFT",
            DefaultQWERTY = "LEFT MOUSE BUTTON",
            XboxController = "LB",
            CustomKey = nil
        },
        ["INPUT_VEH_MELEE_RIGHT"] = {
            Index = 347,
            Name = "INPUT_VEH_MELEE_RIGHT",
            DefaultQWERTY = "RIGHT MOUSE BUTTON",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_MAP_POI"] = {
            Index = 348,
            Name = "INPUT_MAP_POI",
            DefaultQWERTY = "SCROLLWHEEL BUTTON (PRESS)",
            XboxController = "Y",
            CustomKey = nil
        },
        ["INPUT_REPLAY_SNAPMATIC_PHOTO"] = {
            Index = 349,
            Name = "INPUT_REPLAY_SNAPMATIC_PHOTO",
            DefaultQWERTY = "TAB",
            XboxController = "X",
            CustomKey = nil
        },
        ["INPUT_VEH_CAR_JUMP"] = {
            Index = 350,
            Name = "INPUT_VEH_CAR_JUMP",
            DefaultQWERTY = "E",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_VEH_ROCKET_BOOST"] = {
            Index = 351,
            Name = "INPUT_VEH_ROCKET_BOOST",
            DefaultQWERTY = "E",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_BOOST"] = {
            Index = 352,
            Name = "INPUT_VEH_FLY_BOOST",
            DefaultQWERTY = "LEFT SHIFT",
            XboxController = "L3",
            CustomKey = nil
        },
        ["INPUT_VEH_PARACHUTE"] = {
            Index = 353,
            Name = "INPUT_VEH_PARACHUTE",
            DefaultQWERTY = "SPACEBAR",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_BIKE_WINGS"] = {
            Index = 354,
            Name = "INPUT_VEH_BIKE_WINGS",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_BOMB_BAY"] = {
            Index = 355,
            Name = "INPUT_VEH_FLY_BOMB_BAY",
            DefaultQWERTY = "E",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_FLY_COUNTER"] = {
            Index = 356,
            Name = "INPUT_VEH_FLY_COUNTER",
            DefaultQWERTY = "E",
            XboxController = "DPAD RIGHT",
            CustomKey = nil
        },
        ["INPUT_VEH_TRANSFORM"] = {
            Index = 357,
            Name = "INPUT_VEH_TRANSFORM",
            DefaultQWERTY = "X",
            XboxController = "A",
            CustomKey = nil
        },
        ["INPUT_QUAD_LOCO_REVERSE"] = {
            Index = 358,
            Name = "INPUT_QUAD_LOCO_REVERSE",
            DefaultQWERTY = "",
            XboxController = "RB",
            CustomKey = nil
        },
        ["INPUT_RESPAWN_FASTER"] = {
            Index = 359,
            Name = "INPUT_RESPAWN_FASTER",
            DefaultQWERTY = "",
            XboxController = "",
            CustomKey = nil
        },
        ["INPUT_HUDMARKER_SELECT"] = {
            Index = 360,
            Name = "INPUT_HUDMARKER_SELECT",
            DefaultQWERTY = "",
            XboxController = "",
            CustomKey = nil
        }
    },
    SpecialkeyCodes = {
        ['b_100'] = 'MouseClick.LeftClick',
        ['b_101'] = 'MouseClick.RightClick',
        ['b_102'] = 'MouseClick.MiddleClick',
        ['b_103'] = 'MouseClick.ExtraBtn1',
        ['b_104'] = 'MouseClick.ExtraBtn2',
        ['b_105'] = 'MouseClick.ExtraBtn3',
        ['b_106'] = 'MouseClick.ExtraBtn4',
        ['b_107'] = 'MouseClick.ExtraBtn5',
        ['b_108'] = 'MouseClick.ExtraBtn6',
        ['b_109'] = 'MouseClick.ExtraBtn7',
        ['b_110'] = 'MouseClick.ExtraBtn8',
        ['b_115'] = 'WheelMouseMove.Up',
        ['b_116'] = 'WheelMouseMove.Up',
        ['b_131'] = 'NumpadAdd',
        ['b_130'] = 'NumpadSubtract',
        ['b_140'] = 'Numpad4',
        ['b_142'] = 'Numpad6',
        ['b_144'] = 'Numpad8',
        ['b_141'] = 'Numpad5',
        ['b_143'] = 'Numpad7',
        ['b_145'] = 'Numpad9',
        ['b_170'] = 'F1',
        ['b_171'] = 'F2',
        ['b_172'] = 'F3',
        ['b_173'] = 'F4',
        ['b_174'] = 'F5',
        ['b_175'] = 'F6',
        ['b_176'] = 'F7',
        ['b_177'] = 'F8',
        ['b_178'] = 'F9',
        ['b_179'] = 'F10',
        ['b_180'] = 'F11',
        ['b_181'] = 'F12',
        ['b_194'] = 'ArrowUp',
        ['b_195'] = 'ArrowDown',
        ['b_196'] = 'ArrowLeft',
        ['b_197'] = 'ArrowRight',
        ['b_198'] = 'Delete',
        ['b_199'] = 'Escape',
        ['b_200'] = 'Insert',
        ['b_210'] = 'Delete',
        ['b_211'] = 'Insert',
        ['b_212'] = 'End',
        ['b_1000'] = 'ShiftLeft',
        ['b_1002'] = 'Tab',
        ['b_1003'] = 'Enter',
        ['b_1004'] = 'Backspace',
        ['b_1008'] = 'Home',
        ['b_1009'] = 'PageUp',
        ['b_1010'] = 'PageDown',
        ['b_1012'] = 'CapsLock',
        ['b_1013'] = 'ControlLeft',
        ['b_1014'] = 'ControlRight',
        ['b_1015'] = 'AltLeft',
        ['b_1055'] = 'Home',
        ['b_1056'] = 'PageUp',
        ['b_2000'] = 'Space'
    },
    ---Translate key from input map to key mapping
    ---@param key string
    ---@return string
    TranslateKey = function(key)
        if (string.find(key, "t_")) then
            return string.gsub(key, "t_", "")[1]
        else
            return KeyHandler.SpecialkeyCodes[key]
        end
    end,
    ---Return key data object from respective input key
    ---@param key string
    ---@return table
    GetKeyData = function(key)
        if key then
            return KeyHandler.Keys[key]
        end
        return {
            Index = -1,
            Name = nil,
            DefaultQWERTY = "NOT_MAPPED",
            XboxController = "NOT_MAPPED",
            CustomKey = "NOT_MAPPED"
        }
    end,
    ---Return readable key from input
    ---@param key string
    ---@param noFormat boolean
    ---@return string
    GetKeyFrontend = function(key, noFormat)
        local keyData = KeyHandler.GetKeyData(key)
        if (noFormat) then
            return string.format("%s", KeyHandler.Keys[key].CustomKey)
        end
        return string.format("[%s] ", KeyHandler.Keys[key].CustomKey)
    end,
    LoadKeyMap = function()
        for name, _key in pairs(KeyHandler.Keys) do
            if _key ~= nil then
                local rawKey = GetControlInstructionalButton(0, _key.Index, 1)
                local key = KeyHandler.TranslateKey(rawKey)
                if key then
                    KeyHandler.Keys[name].CustomKey = key
                elseif (debug) then
                    print(string.format("No Key found for: %s, index: %s, Control: %s", _key.Name, _key.Index, rawKey))
                end
            end
        end
    end
}

CreateThread(function()
    if not IsDuplicityVersion() then -- only runs on client side
        while true do
            Wait(0)
            if IsPauseMenuActive() then
                pauseMenu = true
            else
                if (pauseMenu) then
                    pauseMenu = false
                    KeyHandler.LoadKeyMap() -- load current user keymap
                end
            end
        end
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    KeyHandler.LoadKeyMap()
end)

RegisterNetEvent('onResourceStart', function(resource)
    if (GetCurrentResourceName() == resource) then
        KeyHandler.LoadKeyMap()
    end
end)
