<?php

/**
 * A class that stores the 845 smileys of WhatsApp.
 *
 * You can access a smiley by its name or index (by accessing $s->SMILEY_XXX where XXX is the index):
 *   $s = new Smileys;
 *   echo $s->GRINNING_FACE_WITH_SMILING_EYES;
 *   // or
 *   echo $s->SMILEY_23;
 *
 * Complete list with images:
 * http://www.typografie.info/3/page/artikel.htm/_/wissen/unicode-emoji-deutsch
 * http://appamatix.com/843-whatsapp-emoticons-meanings-emoji-list/
 */
class SmileyNotFoundException extends Exception
{
};

class Smileys
{
    private $listSmileys = [
        'SMILING_FACE_WITH_OPEN_MOUTH_AND_SMILING_EYES'                      => 0x1F604, // Smiley 1
        'SMILING_FACE_WITH_OPEN_MOUTH'                                       => 0x1F603, // Smiley 2
        'GRINNING_FACE_WITH_SMILING_EYES'                                    => 0x1F600, // Smiley 3
        'SMILING_FACE_WITH_SMILING_EYES'                                     => 0x1F60A, // Smiley 4
        'WHITE_SMILING_FACE'                                                 => 0x263A,  // Smiley 5
        'WINKING_FACE'                                                       => 0x1F609, // Smiley 6
        'SMILING_FACE_WITH_HEART_SHAPED_EYES'                                => 0x1F60D, // Smiley 7
        'FACE_THROWING_A_KISS'                                               => 0x1F618, // Smiley 8
        'KISSING_FACE_WITH_CLOSED_EYES'                                      => 0x1F61A, // Smiley 9
        'KISSING_FACE'                                                       => 0x1F617, // Smiley 10
        'KISSING_FACE_WITH_SMILING_EYES'                                     => 0x1F619, // Smiley 11
        'FACE_WITH_STUCK_OUT_TONGUE_AND_WINKING_EYE'                         => 0x1F61C, // Smiley 12
        'FACE_WITH_STUCK_OUT_TONGUE_AND_TIGHTLY_CLOSED_EYES'                 => 0x1F61D, // Smiley 13
        'FACE_WITH_STUCK_OUT_TONGUE'                                         => 0x1F61B, // Smiley 14
        'FLUSHED_FACE'                                                       => 0x1F633, // Smiley 15
        'GRINNING_FACE_WITH_SMILING_EYES'                                    => 0x1F601, // Smiley 16
        'PENSIVE_FACE'                                                       => 0x1F614, // Smiley 17
        'RELIEVED_FACE'                                                      => 0x1F60C, // Smiley 18
        'UNAMUSED_FACE'                                                      => 0x1F612, // Smiley 19
        'DISAPPOINTED_FACE'                                                  => 0x1F61E, // Smiley 20
        'PERSEVERING_FACE'                                                   => 0x1F623, // Smiley 21
        'CRYING_FACE'                                                        => 0x1F622, // Smiley 22
        'FACE_WITH_TEARS_OF_JOY'                                             => 0x1F602, // Smiley 23
        'LOUDLY_CRYING_FACE'                                                 => 0x1F62D, // Smiley 24
        'SLEEPY_FACE'                                                        => 0x1F62A, // Smiley 25
        'DISAPPOINTED_BUT_RELIEVED_FACE'                                     => 0x1F625, // Smiley 26
        'FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT'                                => 0x1F630, // Smiley 27
        'SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT'                        => 0x1F605, // Smiley 28
        'FACE_WITH_COLD_SWEAT'                                               => 0x1F613, // Smiley 29
        'WEARY_FACE'                                                         => 0x1F629, // Smiley 30
        'TIRED_FACE'                                                         => 0x1F62B, // Smiley 31
        'FEARFUL_FACE'                                                       => 0x1F628, // Smiley 32
        'FACE_SCREAMING_IN_FEAR'                                             => 0x1F631, // Smiley 33
        'ANGRY_FACE'                                                         => 0x1F620, // Smiley 34
        'POUTING_FACE'                                                       => 0x1F621, // Smiley 35
        'FACE_WITH_LOOK_OF_TRIUMPH'                                          => 0x1F624, // Smiley 36
        'CONFOUNDED_FACE'                                                    => 0x1F616, // Smiley 37
        'SMILING_FACE_WITH_OPEN_MOUTH_AND_TIGHTLY_CLOSED_EYES'               => 0x1F606, // Smiley 38
        'FACE_SAVOURING_DELICIOUS_FOOD'                                      => 0x1F60B, // Smiley 39
        'FACE_WITH_MEDICAL_MASK'                                             => 0x1F637, // Smiley 40
        'SMILING_FACE_WITH_SUNGLASSES'                                       => 0x1F60E, // Smiley 41
        'SLEEPING_FACE'                                                      => 0x1F634, // Smiley 42
        'DIZZY_FACE'                                                         => 0x1F635, // Smiley 43
        'ASTONISHED_FACE'                                                    => 0x1F632, // Smiley 44
        'WORRIED_FACE'                                                       => 0x1F61F, // Smiley 45
        'FROWNING_FACE_WITH_OPEN_MOUTH'                                      => 0x1F626, // Smiley 46
        'ANGUISHED_FACE'                                                     => 0x1F627, // Smiley 47
        'SMILING_FACE_WITH_HORNS'                                            => 0x1F608, // Smiley 48
        'IMP'                                                                => 0x1F47F, // Smiley 49
        'FACE_WITH_OPEN_MOUTH'                                               => 0x1F62E, // Smiley 50
        'GRIMACING_FACE'                                                     => 0x1F62C, // Smiley 51
        'NEUTRAL_FACE'                                                       => 0x1F610, // Smiley 52
        'CONFUSED_FACE'                                                      => 0x1F615, // Smiley 53
        'HUSHED_FACE'                                                        => 0x1F62F, // Smiley 54
        'FACE_WITHOUT_MOUTH'                                                 => 0x1F636, // Smiley 55
        'SMILING_FACE_WITH_HALO'                                             => 0x1F607, // Smiley 56
        'SMIRKING_FACE'                                                      => 0x1F60F, // Smiley 57
        'EXPRESSIONLESS_FACE'                                                => 0x1F611, // Smiley 58
        'MAN_WITH_GUA_PI_MAO'                                                => 0x1F472, // Smiley 59
        'MAN_WITH_TURBAN'                                                    => 0x1F473, // Smiley 60
        'POLICE_OFFICER'                                                     => 0x1F46E, // Smiley 61
        'CONSTRUCTION_WORKER'                                                => 0x1F477, // Smiley 62
        'GUARDSMAN'                                                          => 0x1F482, // Smiley 63
        'BABY'                                                               => 0x1F476, // Smiley 64
        'BOY'                                                                => 0x1F466, // Smiley 65
        'GIRL'                                                               => 0x1F467, // Smiley 66
        'MAN'                                                                => 0x1F468, // Smiley 67
        'WOMAN'                                                              => 0x1F469, // Smiley 68
        'OLDER_MAN'                                                          => 0x1F474, // Smiley 69
        'OLDER_WOMAN'                                                        => 0x1F475, // Smiley 70
        'PERSON_WITH_BLONDE_HAIR'                                            => 0x1F471, // Smiley 71
        'BABY_ANGEL'                                                         => 0x1F47C, // Smiley 72
        'PRINCESS'                                                           => 0x1F478, // Smiley 73
        'SMILING_CAT_FACE_WITH_OPEN_MOUTH'                                   => 0x1F63A, // Smiley 74
        'GRINNING_CAT_FACE_WITH_SMILING_EYES'                                => 0x1F638, // Smiley 75
        'SMILING_FACE_FACE_WITH_HEART_SHAPED_EYES'                           => 0x1F63B, // Smiley 76
        'KISSING_CAT_FACE_WITH_CLOSED_EYES'                                  => 0x1F63D, // Smiley 77
        'CAT_FACE_WITH_WRY_SMILE'                                            => 0x1F63C, // Smiley 78
        'WEARY_CAT_FACE'                                                     => 0x1F640, // Smiley 79
        'CRYING_CAT_FACE'                                                    => 0x1F63F, // Smiley 80
        'CAT_FACE_WITH_TEARS_OF_JOY'                                         => 0x1F639, // Smiley 81
        'POUTING_CAT_FACE'                                                   => 0x1F63E, // Smiley 82
        'JAPANESE_OGRE'                                                      => 0x1F479, // Smiley 83
        'JAPANESE_GOBLIN'                                                    => 0x1F47A, // Smiley 84
        'SEE_NO_EVIL_MONKEY'                                                 => 0x1F648, // Smiley 85
        'HEAR_NO_EVIL_MONKEY'                                                => 0x1F649, // Smiley 86
        'SPEAK_NO_EVIL_MONKEY'                                               => 0x1F64A, // Smiley 87
        'SKULL'                                                              => 0x1F480, // Smiley 88
        'EXTRATERRESTRIAL_ALIEN'                                             => 0x1F47D, // Smiley 89
        'PILE_OF_POO'                                                        => 0x1F4A9, // Smiley 90
        'FIRE'                                                               => 0x1F525, // Smiley 91
        'SPARKLES'                                                           => 0x2728,  // Smiley 92
        'GLOWING_STAR'                                                       => 0x1F31F, // Smiley 93
        'DIZZY_SYMBOL'                                                       => 0x1F4AB, // Smiley 94
        'COLLISION_SYMBOL'                                                   => 0x1F4A5, // Smiley 95
        'ANGER_SYMBOL'                                                       => 0x1F4A2, // Smiley 96
        'SPLASHING_SWEAT_SYMBOL'                                             => 0x1F4A6, // Smiley 97
        'DROPLET'                                                            => 0x1F4A7, // Smiley 98
        'SLEEPING_SYMBOL'                                                    => 0x1F4A4, // Smiley 99
        'DASH_SYMBOL'                                                        => 0x1F4A8, // Smiley 100
        'EAR'                                                                => 0x1F442, // Smiley 101
        'EYES'                                                               => 0x1F440, // Smiley 102
        'NOSE'                                                               => 0x1F443, // Smiley 103
        'TONGUE'                                                             => 0x1F445, // Smiley 104
        'MOUTH'                                                              => 0x1F444, // Smiley 105
        'THUMBS_UP_SIGN'                                                     => 0x1F44D, // Smiley 106
        'THUMBS_DOWN_SIGN'                                                   => 0x1F44E, // Smiley 107
        'OK_HAND_SIGN'                                                       => 0x1F44C, // Smiley 108
        'FISTED_HAND_SIGN'                                                   => 0x1F44A, // Smiley 109
        'RAISED_FIST'                                                        => 0x270A,  // Smiley 110
        'VICTORY_HAND'                                                       => 0x270C,  // Smiley 111
        'WAVING_HAND_SIGN'                                                   => 0x1F44B, // Smiley 112
        'RAISED_HAND'                                                        => 0x270B,  // Smiley 113
        'OPEN_HANDS_SIGN'                                                    => 0x1F450, // Smiley 114
        'WHITE_UP_POINTING_BACKHAND_INDEX'                                   => 0x1F446, // Smiley 115
        'WHITE_DOWN_POINTING_BACKHAND_INDEX'                                 => 0x1F447, // Smiley 116
        'WHITE_RIGHT_POINTING_BACKHAND_INDEX'                                => 0x1F449, // Smiley 117
        'WHITE_LEFT_POINTING_BACKHAND_INDEX'                                 => 0x1F448, // Smiley 118
        'PERSON_RAISING_BOTH_HANDS_IN_CELEBRATION'                           => 0x1F64C, // Smiley 119
        'PERSON_WITH_FOLDED_HANDS'                                           => 0x1F64F, // Smiley 120
        'WHITE_UP_POINTING_INDEX'                                            => 0x261D,  // Smiley 121
        'CLAPPING_HANDS_SIGN'                                                => 0x1F44F, // Smiley 122
        'FLEXED_BICEPS'                                                      => 0x1F4AA, // Smiley 123
        'PEDESTRIAN'                                                         => 0x1F6B6, // Smiley 124
        'RUNNER'                                                             => 0x1F3C3, // Smiley 125
        'DANCER'                                                             => 0x1F483, // Smiley 126
        'MAN_AND_WOMAN_HOLDING_HANDS'                                        => 0x1F46B, // Smiley 127
        'FAMILY'                                                             => 0x1F46A, // Smiley 128
        'TWO_MEN_HOLDING_HANDS'                                              => 0x1F46C, // Smiley 129
        'TWO_WOMEN_HOLDING_HANDS'                                            => 0x1F46D, // Smiley 130
        'KISS'                                                               => 0x1F48F, // Smiley 131
        'COUPLE_WITH_HEART'                                                  => 0x1F491, // Smiley 132
        'WOMEN_WITH_BUNNY_EARS'                                              => 0x1F46F, // Smiley 133
        'FACE_WITH_OK_GESTURE'                                               => 0x1F646, // Smiley 134
        'FACE_WITH_NO_GOOD_GESTURE'                                          => 0x1F645, // Smiley 135
        'INFORMATION_DESK_PERSON'                                            => 0x1F481, // Smiley 136
        'HAPPY_PERSON_RAISING_ONE_HAND'                                      => 0x1F64B, // Smiley 137
        'FACE_MASSAGE'                                                       => 0x1F486, // Smiley 138
        'HAIRCUT'                                                            => 0x1F487, // Smiley 139
        'NAIL_POLISH'                                                        => 0x1F485, // Smiley 140
        'BRIDE_WITH_VEIL'                                                    => 0x1F470, // Smiley 141
        'PERSON_WITH_POUTING_FACE'                                           => 0x1F64E, // Smiley 142
        'PERSON_FROWNING'                                                    => 0x1F64D, // Smiley 143
        'PERSON_BOWING_DEEPLY'                                               => 0x1F647, // Smiley 144
        'TOP_HAT'                                                            => 0x1F3A9, // Smiley 145
        'CROWN'                                                              => 0x1F451, // Smiley 146
        'WOMANS_HAT'                                                         => 0x1F452, // Smiley 147
        'ATHLETIC_SHOE'                                                      => 0x1F45F, // Smiley 148
        'MENS_SHOE'                                                          => 0x1F45E, // Smiley 149
        'WOMANS_SANDAL'                                                      => 0x1F461, // Smiley 150
        'HIGH_HEELED_SHOE'                                                   => 0x1F460, // Smiley 151
        'WOMANS_BOOTS'                                                       => 0x1F462, // Smiley 152
        'T_SHIRT'                                                            => 0x1F455, // Smiley 153
        'NECKTIE'                                                            => 0x1F454, // Smiley 154
        'WOMANS_CLOTHES'                                                     => 0x1F45A, // Smiley 155
        'DRESS'                                                              => 0x1F457, // Smiley 156
        'RUNNING_SHIRT_WITH_SASH'                                            => 0x1F3BD, // Smiley 157
        'JEANS'                                                              => 0x1F456, // Smiley 158
        'KIMONO'                                                             => 0x1F458, // Smiley 159
        'BIKINI'                                                             => 0x1F459, // Smiley 160
        'BRIEFCASE'                                                          => 0x1F4BC, // Smiley 161
        'HANDBAG'                                                            => 0x1F45C, // Smiley 162
        'POUCH'                                                              => 0x1F45D, // Smiley 163
        'PURSE'                                                              => 0x1F45B, // Smiley 164
        'EYEGLASSES'                                                         => 0x1F453, // Smiley 165
        'RIBBON'                                                             => 0x1F380, // Smiley 166
        'CLOSED_UMBRELLA'                                                    => 0x1F302, // Smiley 167
        'LIPSTICK'                                                           => 0x1F484, // Smiley 168
        'YELLOW_HEART'                                                       => 0x1F49B, // Smiley 169
        'BLUE_HEART'                                                         => 0x1F499, // Smiley 170
        'PURPLE_HEART'                                                       => 0x1F49C, // Smiley 171
        'GREEN_HEART'                                                        => 0x1F49A, // Smiley 172
        'HEAVY_BLACK_HEART'                                                  => 0x2764,  // Smiley 173
        'BROKEN_HEART'                                                       => 0x1F494, // Smiley 174
        'GROWING_HEART'                                                      => 0x1F497, // Smiley 175
        'BEATING_HEART'                                                      => 0x1F493, // Smiley 176
        'TWO_HEARTS'                                                         => 0x1F495, // Smiley 177
        'SPARKLING_HEARTS'                                                   => 0x1F496, // Smiley 178
        'REVOLVING_HEARTS'                                                   => 0x1F49E, // Smiley 179
        'HEART_WITH_ARROW'                                                   => 0x1F498, // Smiley 180
        'LOVE_LETTER'                                                        => 0x1F48C, // Smiley 181
        'KISS_MARK'                                                          => 0x1F48B, // Smiley 182
        'RING'                                                               => 0x1F48D, // Smiley 183
        'GEM_STONE'                                                          => 0x1F48E, // Smiley 184
        'BUST_IN_SILHOUETTE'                                                 => 0x1F464, // Smiley 185
        'BUSTS_IN_SILHOUETTE'                                                => 0x1F465, // Smiley 186
        'SPEECH_BALLOON'                                                     => 0x1F4AC, // Smiley 187
        'FOOTPRINTS'                                                         => 0x1F463, // Smiley 188
        'THOUGHT_BALLOON'                                                    => 0x1F4AD, // Smiley 189
        'DOG_FACE'                                                           => 0x1F436, // Smiley 190
        'WOLF_FACE'                                                          => 0x1F43A, // Smiley 191
        'CAT_FACE'                                                           => 0x1F431, // Smiley 192
        'MOUSE_FACE'                                                         => 0x1F42D, // Smiley 193
        'HAMSTER_FACE'                                                       => 0x1F439, // Smiley 194
        'RABBIT_FACE'                                                        => 0x1F430, // Smiley 195
        'FROG_FACE'                                                          => 0x1F438, // Smiley 196
        'TIGER_FACE'                                                         => 0x1F42F, // Smiley 197
        'KOALA'                                                              => 0x1F428, // Smiley 198
        'BEAR_FACE'                                                          => 0x1F43B, // Smiley 199
        'PIG_FACE'                                                           => 0x1F437, // Smiley 200
        'PIG_NOSE'                                                           => 0x1F43D, // Smiley 201
        'COW_FACE'                                                           => 0x1F42E, // Smiley 202
        'BOAR'                                                               => 0x1F417, // Smiley 203
        'MONKEY_FACE'                                                        => 0x1F435, // Smiley 204
        'MONKEY'                                                             => 0x1F412, // Smiley 205
        'HORSE_FACE'                                                         => 0x1F434, // Smiley 206
        'SHEEP'                                                              => 0x1F411, // Smiley 207
        'ELEPHANT'                                                           => 0x1F418, // Smiley 208
        'PANDA_FACE'                                                         => 0x1F43C, // Smiley 209
        'PENGUIN'                                                            => 0x1F427, // Smiley 210
        'BIRD'                                                               => 0x1F426, // Smiley 211
        'BABY_CHICK'                                                         => 0x1F424, // Smiley 212
        'FRONT_FACING_BABY_CHICK'                                            => 0x1F425, // Smiley 213
        'HATCHING_CHICK'                                                     => 0x1F423, // Smiley 214
        'CHICKEN'                                                            => 0x1F414, // Smiley 215
        'SNAKE'                                                              => 0x1F40D, // Smiley 216
        'TURTLE'                                                             => 0x1F422, // Smiley 217
        'BUG'                                                                => 0x1F41B, // Smiley 218
        'HONEYBEE'                                                           => 0x1F41D, // Smiley 219
        'ANT'                                                                => 0x1F41C, // Smiley 220
        'LADY_BEETLE'                                                        => 0x1F41E, // Smiley 221
        'SNAIL'                                                              => 0x1F40C, // Smiley 222
        'OCTOPUS'                                                            => 0x1F419, // Smiley 223
        'SPIRAL_SHELL'                                                       => 0x1F41A, // Smiley 224
        'TROPICAL_FISH'                                                      => 0x1F420, // Smiley 225
        'FISH'                                                               => 0x1F41F, // Smiley 226
        'DOLPHIN'                                                            => 0x1F42C, // Smiley 227
        'SPOUTING_WHALE'                                                     => 0x1F433, // Smiley 228
        'WHALE'                                                              => 0x1F40B, // Smiley 229
        'COW'                                                                => 0x1F404, // Smiley 230
        'RAM'                                                                => 0x1F40F, // Smiley 231
        'RAT'                                                                => 0x1F400, // Smiley 232
        'WATER_BUFFALO'                                                      => 0x1F403, // Smiley 233
        'TIGER'                                                              => 0x1F405, // Smiley 234
        'RABBIT'                                                             => 0x1F407, // Smiley 235
        'DRAGON'                                                             => 0x1F409, // Smiley 236
        'HORSE'                                                              => 0x1F40E, // Smiley 237
        'GOAT'                                                               => 0x1F410, // Smiley 238
        'ROOSTER'                                                            => 0x1F413, // Smiley 239
        'DOG'                                                                => 0x1F415, // Smiley 240
        'PIG'                                                                => 0x1F416, // Smiley 241
        'MOUSE'                                                              => 0x1F401, // Smiley 242
        'OX'                                                                 => 0x1F402, // Smiley 243
        'DRAGON_FACE'                                                        => 0x1F432, // Smiley 244
        'BLOWFISH'                                                           => 0x1F421, // Smiley 245
        'CROCODILE'                                                          => 0x1F40A, // Smiley 246
        'BACTRIAN_CAMEL'                                                     => 0x1F42B, // Smiley 247
        'DROMEDARY_CAMEL'                                                    => 0x1F42A, // Smiley 248
        'LEOPARD'                                                            => 0x1F406, // Smiley 249
        'CAT'                                                                => 0x1F408, // Smiley 250
        'POODLE'                                                             => 0x1F429, // Smiley 251
        'PAW_PRINTS'                                                         => 0x1F43E, // Smiley 252
        'BOUQET'                                                             => 0x1F490, // Smiley 253
        'CHERRY_BLOSSOM'                                                     => 0x1F338, // Smiley 254
        'TULIP'                                                              => 0x1F337, // Smiley 255
        'FOUR_LEAF_CLOVER'                                                   => 0x1F340, // Smiley 256
        'ROSE'                                                               => 0x1F339, // Smiley 257
        'SUNFLOWER'                                                          => 0x1F33B, // Smiley 258
        'HIBISCUS'                                                           => 0x1F33A, // Smiley 259
        'MAPLE_LEAF'                                                         => 0x1F341, // Smiley 260
        'LEAF_FLUTTERING_IN_WIND'                                            => 0x1F343, // Smiley 261
        'FALLEN_LEAF'                                                        => 0x1F342, // Smiley 262
        'HERB'                                                               => 0x1F33F, // Smiley 263
        'EAR_OF_RICE'                                                        => 0x1F33E, // Smiley 264
        'MUSHROOM'                                                           => 0x1F344, // Smiley 265
        'CACTUS'                                                             => 0x1F335, // Smiley 266
        'PALM_TREE'                                                          => 0x1F334, // Smiley 267
        'EVERGREEN_TREE'                                                     => 0x1F332, // Smiley 268
        'DECIDUOUS_TREE'                                                     => 0x1F333, // Smiley 269
        'CHESTNUT'                                                           => 0x1F330, // Smiley 270
        'SEEDLING'                                                           => 0x1F331, // Smiley 271
        'BLOSSOM'                                                            => 0x1F33C, // Smiley 272
        'GLOBE_WITH_MERIDIANS'                                               => 0x1F310, // Smiley 273
        'SUN_WITH_FACE'                                                      => 0x1F31E, // Smiley 274
        'FULL_MOON_WITH_FACE'                                                => 0x1F31D, // Smiley 275
        'NEW_MOON_WITH_FACE'                                                 => 0x1F31A, // Smiley 276
        'NEW_MOON_SYMBOL'                                                    => 0x1F311, // Smiley 277
        'WAXING_CRESCENDING_MOON_SYMBOL'                                     => 0x1F312, // Smiley 278
        'FIRST_QUARTER_MOON_SYMBOL'                                          => 0x1F313, // Smiley 279
        'WAXING_GIBBOUS_MOON_SYMBOL'                                         => 0x1F314, // Smiley 280
        'FULL_MOON_SYMBOL'                                                   => 0x1F315, // Smiley 281
        'WANNING_GIBBOUS_MOON_SYMBOL'                                        => 0x1F316, // Smiley 282
        'LAST_QUARTER_MOON_SYMBOL'                                           => 0x1F317, // Smiley 283
        'WANNING_CRESCENT_MOON_SYMBOL'                                       => 0x1F318, // Smiley 284
        'LAST_QUARTER_MOON_WITH_FACE'                                        => 0x1F31C, // Smiley 285
        'FIRST_QUARTER_MOON_WITH_FACE'                                       => 0x1F31B, // Smiley 286
        'CRESCENT_MOON'                                                      => 0x1F319, // Smiley 287
        'EARTH_GLOBE_EUROPE_AFRICA'                                          => 0x1F30D, // Smiley 288
        'EARTH_GLOBE_AMERICAS'                                               => 0x1F30E, // Smiley 289
        'EARTH_GLOBE_ASIA_AUSTRALIA'                                         => 0x1F30F, // Smiley 290
        'VOLCANO'                                                            => 0x1F30B, // Smiley 291
        'MILKY_WAY'                                                          => 0x1F30C, // Smiley 292
        'SHOOTING_STAR'                                                      => 0x1F320, // Smiley 293
        'WHITE_MEDIUM_STAR'                                                  => 0x2B50,  // Smiley 294
        'BLACK_SUN_WITH_RAYS'                                                => 0x2600,  // Smiley 295
        'SUN_BEHIND_CLOUD'                                                   => 0x26C5,  // Smiley 296
        'CLOUD'                                                              => 0x2601,  // Smiley 297
        'HIGH_VOLTAGE_SIGN'                                                  => 0x26A1,  // Smiley 298
        'UMBRELLA_WITH_RAIN_DROPS'                                           => 0x2614,  // Smiley 299
        'SNOW_FLAKE'                                                         => 0x2744,  // Smiley 300
        'SNOWMAN_WITHOUT_SNOW'                                               => 0x26C4,  // Smiley 301
        'CYCLONE'                                                            => 0x1F300, // Smiley 302
        'FOGGY'                                                              => 0x1F301, // Smiley 303
        'RAINBOW'                                                            => 0x1F308, // Smiley 304
        'WATER_WAVE'                                                         => 0x1F30A, // Smiley 305
        'PINE_DECORATION'                                                    => 0x1F38D, // Smiley 306
        'HEART_WITH_RIBBON'                                                  => 0x1F49D, // Smiley 307
        'JAPANESE_DOLLS'                                                     => 0x1F38E, // Smiley 308
        'SCHOOL_SATCHEL'                                                     => 0x1F392, // Smiley 309
        'GRADUATION_CAP'                                                     => 0x1F393, // Smiley 310
        'CARP_STREAMER'                                                      => 0x1F38F, // Smiley 311
        'FIREWORKS'                                                          => 0x1F386, // Smiley 312
        'FIREWORKS_SPARKLER'                                                 => 0x1F387, // Smiley 313
        'WIND_CHIME'                                                         => 0x1F390, // Smiley 314
        'MOON_VIEWING_CEREMONY'                                              => 0x1F391, // Smiley 315
        'JACK_O_LANTERN'                                                     => 0x1F383, // Smiley 316
        'GHOST'                                                              => 0x1F47B, // Smiley 317
        'FATHER_CHRISTMAS'                                                   => 0x1F385, // Smiley 318
        'CHRISTMAS_TREE'                                                     => 0x1F384, // Smiley 319
        'WRAPPED_PRESENT'                                                    => 0x1F381, // Smiley 320
        'TANABATA_TREE'                                                      => 0x1F38B, // Smiley 321
        'PARTY_POPPER'                                                       => 0x1F389, // Smiley 322
        'CONFETTI_BALL'                                                      => 0x1F38A, // Smiley 323
        'BALLOON'                                                            => 0x1F388, // Smiley 324
        'CROSSED_FLAGS'                                                      => 0x1F38C, // Smiley 325
        'CRYSTAL_BALL'                                                       => 0x1F52E, // Smiley 326
        'MOVIE_CAMERA'                                                       => 0x1F3A5, // Smiley 327
        'CAMERA'                                                             => 0x1F4F7, // Smiley 328
        'VIDEO_CAMERA'                                                       => 0x1F4F9, // Smiley 329
        'VIDEOCASSETTE'                                                      => 0x1F4FC, // Smiley 330
        'OPTICAL_DISC'                                                       => 0x1F4BF, // Smiley 331
        'DVD'                                                                => 0x1F4C0, // Smiley 332
        'MINIDISC'                                                           => 0x1F4BD, // Smiley 333
        'FLOPPY_DISK'                                                        => 0x1F4BE, // Smiley 334
        'PERSONAL_COMPUTER'                                                  => 0x1F4BB, // Smiley 335
        'MOBILE_PHONE'                                                       => 0x1F4F1, // Smiley 336
        'BLACK_TELEPHONE'                                                    => 0x260E,  // Smiley 337
        'TELEPHONE_RECEIVER'                                                 => 0x1F4DE, // Smiley 338
        'PAGER'                                                              => 0x1F4DF, // Smiley 339
        'FAX_MACHINE'                                                        => 0x1F4E0, // Smiley 340
        'SATELLITE_ANTENNA'                                                  => 0x1F4E1, // Smiley 341
        'TELEVISION'                                                         => 0x1F4FA, // Smiley 342
        'RADIO'                                                              => 0x1F4FB, // Smiley 343
        'SPEAKER_WITH_THREE_SOUND_WAVES'                                     => 0x1F50A, // Smiley 344
        'SPEAKER_WITH_ONE_SOUND_WAVE'                                        => 0x1F509, // Smiley 345
        'SPEAKER'                                                            => 0x1F508, // Smiley 346
        'SPEAKER_WITH_CANCELLATION_STROKE'                                   => 0x1F507, // Smiley 347
        'BELL'                                                               => 0x1F514, // Smiley 348
        'BELL_WITH_CANCELLATION_STROKE'                                      => 0x1F515, // Smiley 349
        'PUBLIC_ADDRESS_LOUDSPEAKER'                                         => 0x1F4E2, // Smiley 350
        'CHEERING_MEGAPHONE'                                                 => 0x1F4E3, // Smiley 351
        'HOURGLASS_WITH_FLOWING_SAND'                                        => 0x23F3,  // Smiley 352
        'HOURGLASS'                                                          => 0x231B,  // Smiley 353
        'ALARM_CLOCK'                                                        => 0x23F0,  // Smiley 354
        'WATCH'                                                              => 0x231A,  // Smiley 355
        'OPEN_LOCK'                                                          => 0x1F513, // Smiley 356
        'LOCK'                                                               => 0x1F512, // Smiley 357
        'LOCK_WITH_INK_PEN'                                                  => 0x1F50F, // Smiley 358
        'CLOSED_LOCK_WITH_KEY'                                               => 0x1F510, // Smiley 359
        'KEY'                                                                => 0x1F511, // Smiley 360
        'RIGHT_POINTING_MAGNIFYING_GLASS'                                    => 0x1F50E, // Smiley 361
        'ELECTRIC_LIGHT_BULB'                                                => 0x1F4A1, // Smiley 362
        'ELECTRIC_TORCH'                                                     => 0x1F526, // Smiley 363
        'HIGH_BRIGHTNESS_SYMBOL'                                             => 0x1F506, // Smiley 364
        'LOW_BRIGHTNESS_SYMBOL'                                              => 0x1F505, // Smiley 365
        'ELECTRIC_PLUG'                                                      => 0x1F50C, // Smiley 366
        'BATTERY'                                                            => 0x1F50B, // Smiley 367
        'LEFT_POINTING_MAGNIFYING_GLASS'                                     => 0x1F50D, // Smiley 368
        'BATHTUB'                                                            => 0x1F6C1, // Smiley 369
        'BATH'                                                               => 0x1F6C0, // Smiley 370
        'SHOWER'                                                             => 0x1F6BF, // Smiley 371
        'TOILET'                                                             => 0x1F6BD, // Smiley 372
        'WRENCH'                                                             => 0x1F527, // Smiley 373
        'NUT_AND_BOLT'                                                       => 0x1F529, // Smiley 374
        'HAMMER'                                                             => 0x1F528, // Smiley 375
        'DOOR'                                                               => 0x1F6AA, // Smiley 376
        'SMOKING_SYMBOL'                                                     => 0x1F6AC, // Smiley 377
        'BOMB'                                                               => 0x1F4A3, // Smiley 378
        'PISTOL'                                                             => 0x1F52B, // Smiley 379
        'HOCHO'                                                              => 0x1F52A, // Smiley 380
        'PILL'                                                               => 0x1F48A, // Smiley 381
        'SYRINGE'                                                            => 0x1F489, // Smiley 382
        'MONEY_BAG'                                                          => 0x1F4B0, // Smiley 383
        'BANKNOTE_WITH_YEN_SIGN'                                             => 0x1F4B4, // Smiley 384
        'BANKNOTE_WITH_DOLLAR_SIGN'                                          => 0x1F4B5, // Smiley 385
        'BANKNOTE_WITH_POUND_SIGN'                                           => 0x1F4B7, // Smiley 386
        'BANKNOTE_WITH_EURO_SIGN'                                            => 0x1F4B6, // Smiley 387
        'CREDIT_CARD'                                                        => 0x1F4B3, // Smiley 388
        'MONEY_WITH_WINGS'                                                   => 0x1F4B8, // Smiley 389
        'MOBILE_PHONE_WITH_RIGHTWARDS_ARROW'                                 => 0x1F4F2, // Smiley 390
        'E_MAIL_SYMBOL'                                                      => 0x1F4E7, // Smiley 391
        'INBOX_TRAY'                                                         => 0x1F4E5, // Smiley 392
        'OUTBOX_TRAY'                                                        => 0x1F4E4, // Smiley 393
        'ENVELOPE'                                                           => 0x2709,  // Smiley 394
        'ENVELOPE_WITH_DOWNWARDS_ARROW_ABOVE'                                => 0x1F4E9, // Smiley 395
        'INCOMING_ENVELOPE'                                                  => 0x1F4E8, // Smiley 396
        'POSTAL_HORN'                                                        => 0x1F4EF, // Smiley 397
        'CLOSED_MAILBOX_WITH_RAISED_FLAG'                                    => 0x1F4EB, // Smiley 398
        'CLOSED_MAILBOX_WITH_LOWERED_FLAG'                                   => 0x1F4EA, // Smiley 399
        'OPEN_MAILBOX_WITH_RAISED_FLAG'                                      => 0x1F4EC, // Smiley 400
        'OPEN_MAILBOX_WITH_LOWERED_FLAG'                                     => 0x1F4ED, // Smiley 401
        'POSTBOX'                                                            => 0x1F4EE, // Smiley 402
        'PACKAGE'                                                            => 0x1F4E6, // Smiley 403
        'MEMO'                                                               => 0x1F4DD, // Smiley 404
        'PAGE_FACING_UP'                                                     => 0x1F4C4, // Smiley 405
        'PAGE_WITH_CURL'                                                     => 0x1F4C3, // Smiley 406
        'BOOKMARK_TABS'                                                      => 0x1F4D1, // Smiley 407
        'BAR_CHART'                                                          => 0x1F4CA, // Smiley 408
        'CHART_WITH_UPWARDS_TREND'                                           => 0x1F4C8, // Smiley 409
        'CHART_WITH_DOWNWARD_TREND'                                          => 0x1F4C9, // Smiley 410
        'SCROLL'                                                             => 0x1F4DC, // Smiley 411
        'CLIPBOARD'                                                          => 0x1F4CB, // Smiley 412
        'CALENDAR'                                                           => 0x1F4C5, // Smiley 413
        'TEAR_OFF_CALENDAR'                                                  => 0x1F4C6, // Smiley 414
        'CARD_INDEX'                                                         => 0x1F4C7, // Smiley 415
        'FILE_FOLDER'                                                        => 0x1F4C1, // Smiley 416
        'OPEN_FILE_FOLDER'                                                   => 0x1F4C2, // Smiley 417
        'BLACK_SCISSORS'                                                     => 0x2702,  // Smiley 418
        'PUSHPIN'                                                            => 0x1F4CC, // Smiley 419
        'PAPERCLIP'                                                          => 0x1F4CE, // Smiley 420
        'BLACK_NIB'                                                          => 0x2712,  // Smiley 421
        'PENCIL'                                                             => 0x270F,  // Smiley 422
        'STRAIGHT_RULER'                                                     => 0x1F4CF, // Smiley 423
        'TRIANGULAR_RULER'                                                   => 0x1F4D0, // Smiley 424
        'CLOSED_BOOK'                                                        => 0x1F4D5, // Smiley 425
        'GREEN_BOOK'                                                         => 0x1F4D7, // Smiley 426
        'BLUE_BOOK'                                                          => 0x1F4D8, // Smiley 427
        'ORANGE_BOOK'                                                        => 0x1F4D9, // Smiley 428
        'NOTEBOOK'                                                           => 0x1F4D3, // Smiley 429
        'NOTEBOOK_WITH_DECORATIVE_COVER'                                     => 0x1F4D4, // Smiley 430
        'LEDGER'                                                             => 0x1F4D2, // Smiley 431
        'BOOKS'                                                              => 0x1F4DA, // Smiley 432
        'OPEN_BOOK'                                                          => 0x1F4D6, // Smiley 433
        'BOOKMARK'                                                           => 0x1F516, // Smiley 434
        'NAME_BADGE'                                                         => 0x1F4DB, // Smiley 435
        'MICROSCOPE'                                                         => 0x1F52C, // Smiley 436
        'TELESCOPE'                                                          => 0x1F52D, // Smiley 437
        'NEWSPAPER'                                                          => 0x1F4F0, // Smiley 438
        'ARTIST_PALETTE'                                                     => 0x1F3A8, // Smiley 439
        'CLAPPER_BOARD'                                                      => 0x1F3AC, // Smiley 440
        'MICROPHONE'                                                         => 0x1F3A4, // Smiley 441
        'HEADPHONE'                                                          => 0x1F3A7, // Smiley 442
        'MUSICAL_SCORE'                                                      => 0x1F3BC, // Smiley 443
        'MUSICAL_NOTE'                                                       => 0x1F3B5, // Smiley 444
        'MULTIPLE_MUSICAL_NOTES'                                             => 0x1F3B6, // Smiley 445
        'MUSICAL_KEYBOARD'                                                   => 0x1F3B9, // Smiley 446
        'VIOLIN'                                                             => 0x1F3BB, // Smiley 447
        'TRUMPET'                                                            => 0x1F3BA, // Smiley 448
        'SAXOPHONE'                                                          => 0x1F3B7, // Smiley 449
        'GUITAR'                                                             => 0x1F3B8, // Smiley 450
        'ALIEN_MONSTER'                                                      => 0x1F47E, // Smiley 451
        'VIDEO_GAME'                                                         => 0x1F3AE, // Smiley 452
        'PLAYING_CARD_BLACK_JOKER'                                           => 0x1F0CF, // Smiley 453
        'FLOWER_PLAYING_CARDS'                                               => 0x1F3B4, // Smiley 454
        'MAHJONG_TILE_RED_DRAGON'                                            => 0x1F004, // Smiley 455
        'GAME_DIE'                                                           => 0x1F3B2, // Smiley 456
        'DIRECT_HIT'                                                         => 0x1F3AF, // Smiley 457
        'AMERICAN_FOOTBALL'                                                  => 0x1F3C8, // Smiley 458
        'BASKETBALL_AND_HOOP'                                                => 0x1F3C0, // Smiley 459
        'SOCCER_BALL'                                                        => 0x26BD,  // Smiley 460
        'BASEBALL'                                                           => 0x26BE,  // Smiley 461
        'GREEN_BOOK'                                                         => 0x1F4D7, // Smiley 462
        'TENNIS_RACQUET_AND_BALL'                                            => 0x1F3BE, // Smiley 463
        'BILLIARDS'                                                          => 0x1F3B1, // Smiley 464
        'RUGBY_FOOTBALL'                                                     => 0x1F3C9, // Smiley 465
        'BOWLING'                                                            => 0x1F3B3, // Smiley 466
        'FLAG_IN_HOLE'                                                       => 0x26F3,  // Smiley 467
        'MOUNTAIN_BYCICLIST'                                                 => 0x1F6B5, // Smiley 468
        'BYCICLIST'                                                          => 0x1F6B4, // Smiley 469
        'CHECKERED_FLAG'                                                     => 0x1F3C1, // Smiley 470
        'HORSE_RACING'                                                       => 0x1F3C7, // Smiley 471
        'TROPHY'                                                             => 0x1F3C6, // Smiley 472
        'SKI_AND_SKI_BOOT'                                                   => 0x1F3BF, // Smiley 473
        'SNOWBOARDER'                                                        => 0x1F3C2, // Smiley 474
        'SWIMMER'                                                            => 0x1F3CA, // Smiley 475
        'SURFER'                                                             => 0x1F3C4, // Smiley 476
        'FISHING_POLE_AND_FISH'                                              => 0x1F3A3, // Smiley 477
        'HOT_BEVERAGE'                                                       => 0x2615,  // Smiley 478
        'TEACUP_WITHOUT_HANDLE'                                              => 0x1F375, // Smiley 479
        'SAKE_BOTTLE_AND_CUP'                                                => 0x1F376, // Smiley 480
        'BABY_BOTTLE'                                                        => 0x1F37C, // Smiley 481
        'BEER_MUG'                                                           => 0x1F37A, // Smiley 482
        'CLINKING_BEER_MUGS'                                                 => 0x1F37B, // Smiley 483
        'TROPICAL_DRINK'                                                     => 0x1F379, // Smiley 484
        'WINE_GLASS'                                                         => 0x1F377, // Smiley 485
        'FORK_AND_KNIFE'                                                     => 0x1F374, // Smiley 486
        'SLICE_OF_PIZZA'                                                     => 0x1F355, // Smiley 487
        'HAMBURGER'                                                          => 0x1F354, // Smiley 488
        'FRENCH_FRIES'                                                       => 0x1F35F, // Smiley 489
        'POULTRY_LEG'                                                        => 0x1F357, // Smiley 490
        'MEAT_ON_BONE'                                                       => 0x1F356, // Smiley 491
        'SPAGHETTI'                                                          => 0x1F35D, // Smiley 492
        'CURRY_AND_RICE'                                                     => 0x1F35B, // Smiley 493
        'FRIED_SHRIMP'                                                       => 0x1F364, // Smiley 494
        'BENTO_BOX'                                                          => 0x1F371, // Smiley 495
        'SUSHI'                                                              => 0x1F363, // Smiley 496
        'FISH_CAKE_WITH_SWIRL_DESIGN'                                        => 0x1F365, // Smiley 497
        'RICE_BALL'                                                          => 0x1F359, // Smiley 498
        'RICE_CRACKER'                                                       => 0x1F358, // Smiley 499
        'COOKED_RICE'                                                        => 0x1F35A, // Smiley 500
        'STEAMING_BOWL'                                                      => 0x1F35C, // Smiley 501
        'POT_OF_FOOD'                                                        => 0x1F372, // Smiley 502
        'ODEN'                                                               => 0x1F362, // Smiley 503
        'DANGO'                                                              => 0x1F361, // Smiley 504
        'COOKING'                                                            => 0x1F373, // Smiley 505
        'BREAD'                                                              => 0x1F35E, // Smiley 506
        'DOUGHNUT'                                                           => 0x1F369, // Smiley 507
        'CUSTARD'                                                            => 0x1F36E, // Smiley 508
        'SOFT_ICE_CREAM'                                                     => 0x1F366, // Smiley 509
        'ICE_CREAM'                                                          => 0x1F368, // Smiley 510
        'SHAVED_ICE'                                                         => 0x1F367, // Smiley 511
        'BIRTHDAY_CAKE'                                                      => 0x1F382, // Smiley 512
        'SHORTCAKE'                                                          => 0x1F370, // Smiley 513
        'COOKIE'                                                             => 0x1F36A, // Smiley 514
        'CHOCOLATE_BAR'                                                      => 0x1F36B, // Smiley 515
        'CANDY'                                                              => 0x1F36C, // Smiley 516
        'LOLLIPOP'                                                           => 0x1F36D, // Smiley 517
        'HONEY_POT'                                                          => 0x1F36F, // Smiley 518
        'RED_APPLE'                                                          => 0x1F34E, // Smiley 519
        'GREEN_APPLE'                                                        => 0x1F34F, // Smiley 520
        'TANGERINE'                                                          => 0x1F34A, // Smiley 521
        'LEMON'                                                              => 0x1F34B, // Smiley 522
        'CHERRIES'                                                           => 0x1F352, // Smiley 523
        'GRAPES'                                                             => 0x1F347, // Smiley 524
        'WATERMELON'                                                         => 0x1F349, // Smiley 525
        'STRAWBERRY'                                                         => 0x1F353, // Smiley 526
        'PEACH'                                                              => 0x1F351, // Smiley 527
        'MELON'                                                              => 0x1F348, // Smiley 528
        'BANANA'                                                             => 0x1F34C, // Smiley 529
        'PEAR'                                                               => 0x1F350, // Smiley 530
        'PINEAPPLE'                                                          => 0x1F34D, // Smiley 531
        'ROASTED_SWEET_POTATO'                                               => 0x1F360, // Smiley 532
        'AUBERGINE'                                                          => 0x1F346, // Smiley 533
        'TOMATO'                                                             => 0x1F345, // Smiley 534
        'EAR_OF_MAIZE'                                                       => 0x1F33D, // Smiley 535
        'HOUSE_BUILDING'                                                     => 0x1F3E0, // Smiley 536
        'HOUSE_WITH_GARDEN'                                                  => 0x1F3E1, // Smiley 537
        'SCHOOL'                                                             => 0x1F3EB, // Smiley 538
        'OFFICE_BUILDING'                                                    => 0x1F3E2, // Smiley 539
        'JAPANESE_POST_OFFICE'                                               => 0x1F3E3, // Smiley 540
        'HOSPITAL'                                                           => 0x1F3E5, // Smiley 541
        'BANK'                                                               => 0x1F3E6, // Smiley 542
        'CONVINIENCE_STORE'                                                  => 0x1F3EA, // Smiley 543
        'LOVE_HOTEL'                                                         => 0x1F3E9, // Smiley 544
        'HOTEL'                                                              => 0x1F3E8, // Smiley 545
        'WEDDING'                                                            => 0x1F492, // Smiley 546
        'CHURCH'                                                             => 0x26EA,  // Smiley 547
        'DEPARTMENT_STORE'                                                   => 0x1F3EC, // Smiley 548
        'EUROPEAN_POST_OFFICE'                                               => 0x1F3E4, // Smiley 549
        'SUNSET_OVER_BUILDINGS'                                              => 0x1F307, // Smiley 550
        'CITYSCAPE_AT_DUSK'                                                  => 0x1F306, // Smiley 551
        'JAPANESE_CASTLE'                                                    => 0x1F3EF, // Smiley 552
        'EUROPEAN_CASTLE'                                                    => 0x1F3F0, // Smiley 553
        'TENT'                                                               => 0x26FA,  // Smiley 554
        'FACTORY'                                                            => 0x1F3ED, // Smiley 555
        'TOKYO_TOWER'                                                        => 0x1F5FC, // Smiley 556
        'SILHOUETTE_OF_JAPAN'                                                => 0x1F5FE, // Smiley 557
        'MOUNT_FUJI'                                                         => 0x1F5FB, // Smiley 558
        'SUNRISE_OVER_MOUNTAINS'                                             => 0x1F304, // Smiley 559
        'SUNRISE'                                                            => 0x1F305, // Smiley 560
        'NIGHT_WITH_STARS'                                                   => 0x1F303, // Smiley 561
        'STATUE_OF_LIBERTY'                                                  => 0x1F5FD, // Smiley 562
        'BRIDGE_AT_NIGHT'                                                    => 0x1F309, // Smiley 563
        'CAROUSEL_HORSE'                                                     => 0x1F3A0, // Smiley 564
        'FERRIS_WHEEL'                                                       => 0x1F3A1, // Smiley 565
        'FOUNTAIN'                                                           => 0x26F2,  // Smiley 566
        'ROLLER_COASTER'                                                     => 0x1F3A2, // Smiley 567
        'SHIP'                                                               => 0x1F6A2, // Smiley 568
        'SAILBOAT'                                                           => 0x26F5,  // Smiley 569
        'SPEEDBOAT'                                                          => 0x1F6A4, // Smiley 570
        'ROWBOAT'                                                            => 0x1F6A3, // Smiley 571
        'ANCHOR'                                                             => 0x2693,  // Smiley 572
        'ROCKET'                                                             => 0x1F680, // Smiley 573
        'AIRPLANE'                                                           => 0x2708,  // Smiley 574
        'SEAT'                                                               => 0x1F4BA, // Smiley 575
        'HELICOPTER'                                                         => 0x1F681, // Smiley 576
        'STEAM_LOCOMOTIVE'                                                   => 0x1F682, // Smiley 577
        'TRAM'                                                               => 0x1F68A, // Smiley 578
        'STATION'                                                            => 0x1F689, // Smiley 579
        'MOUNTAIN_RAILWAY'                                                   => 0x1F69E, // Smiley 580
        'TRAIN'                                                              => 0x1F686, // Smiley 581
        'HIGH_SPEED_TRAIN'                                                   => 0x1F684, // Smiley 582
        'HIGH_SPEED_TRAIN_WITH_BULLET_NOSE'                                  => 0x1F685, // Smiley 583
        'LIGHT_RAIL'                                                         => 0x1F688, // Smiley 584
        'METRO'                                                              => 0x1F687, // Smiley 585
        'MONO_RAIL'                                                          => 0x1F69D, // Smiley 586
        'TRAM_CAR'                                                           => 0x1F68B, // Smiley 587
        'RAILWAY_CAR'                                                        => 0x1F683, // Smiley 588
        'TROLLEYBUS'                                                         => 0x1F68E, // Smiley 589
        'BUS'                                                                => 0x1F68C, // Smiley 590
        'ONCOMING_BUS'                                                       => 0x1F68D, // Smiley 591
        'RECREATION_VEHICLE'                                                 => 0x1F699, // Smiley 592
        'ONCOMING_AUTOMOBILE'                                                => 0x1F698, // Smiley 593
        'AUTOMOBILE'                                                         => 0x1F697, // Smiley 594
        'TAXI'                                                               => 0x1F695, // Smiley 595
        'ONCOMING_TAXI'                                                      => 0x1F696, // Smiley 596
        'ARTICULATED_LORRY'                                                  => 0x1F69B, // Smiley 597
        'DELIVERY_TRUCK'                                                     => 0x1F69A, // Smiley 598
        'POLICE_CARS_REVOLVING_LIGHT'                                        => 0x1F6A8, // Smiley 599
        'POLICE_CAR'                                                         => 0x1F693, // Smiley 600
        'ONCOMING_POLICE_CAR'                                                => 0x1F694, // Smiley 601
        'FIRE_ENGINE'                                                        => 0x1F692, // Smiley 602
        'AMBULANCE'                                                          => 0x1F691, // Smiley 603
        'MINBUS'                                                             => 0x1F690, // Smiley 604
        'BICYCLE'                                                            => 0x1F6B2, // Smiley 605
        'AERIAL_TRAMWAY'                                                     => 0x1F6A1, // Smiley 606
        'SUSPENSION_RAILWAY'                                                 => 0x1F69F, // Smiley 607
        'MOUNTAIN_CABLEWAY'                                                  => 0x1F6A0, // Smiley 608
        'TRACTOR'                                                            => 0x1F69C, // Smiley 609
        'BARBER_POLE'                                                        => 0x1F488, // Smiley 610
        'BUS_STOP'                                                           => 0x1F68F, // Smiley 611
        'TICKET'                                                             => 0x1F3AB, // Smiley 612
        'VERTICAL_TRAFFIC_LIGHT'                                             => 0x1F6A6, // Smiley 613
        'HORIZONTAL_TRAFFIC_LIGHT'                                           => 0x1F6A5, // Smiley 614
        'WARNING_SIGN'                                                       => 0x26A0,  // Smiley 615
        'CONSTRUCTION_SIGN'                                                  => 0x1F6A7, // Smiley 616
        'JAPANESE_SYMBOL_FOR_BEGINNER'                                       => 0x1F530, // Smiley 617
        'FUEL_PUMP'                                                          => 0x26FD,  // Smiley 618
        'IZAKAYA_LANTERN'                                                    => 0x1F3EE, // Smiley 619
        'SLOT_MACHINE'                                                       => 0x1F3B0, // Smiley 620
        'HOT_SPRINGS'                                                        => 0x2668,  // Smiley 621
        'MOYAI'                                                              => 0x1F5FF, // Smiley 622
        'CIRCUS_TENT'                                                        => 0x1F3AA, // Smiley 623
        'PERFORMING_ARTS'                                                    => 0x1F3AD, // Smiley 624
        'ROUND_PUSHPIN'                                                      => 0x1F4CD, // Smiley 625
        'TRIANGULAR_FLAG_ON_POST'                                            => 0x1F6A9, // Smiley 626
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_JP'                               => [0xD83C, 0xDDEF, 0xD83C, 0xDDF5], // Smiley 627
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_KR'                               => [0xD83C, 0xDDF0, 0xD83C, 0xDDF7], // Smiley 628
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_DE'                               => [0xD83C, 0xDDE9, 0xD83C, 0xDDEA], // Smiley 629
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_CN'                               => [0xD83C, 0xDDE8, 0xD83C, 0xDDF3], // Smiley 630
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_US'                               => [0xD83C, 0xDDFA, 0xD83C, 0xDDF8], // Smiley 631
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_FR'                               => [0xD83C, 0xDDEB, 0xD83C, 0xDDF7], // Smiley 632
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_ES'                               => [0xD83C, 0xDDEA, 0xD83C, 0xDDF8], // Smiley 633
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_IT'                               => [0xD83C, 0xDDEE, 0xD83C, 0xDDF9], // Smiley 634
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_RU'                               => [0xD83C, 0xDDF7, 0xD83C, 0xDDFA], // Smiley 635
        'REGIONAL_INDICATOR_SYMBOL_LETTERS_GB'                               => [0xD83C, 0xDDEC, 0xD83C, 0xDDE7], // Smiley 636
        'KEYCAP_1'                                                           => [0x0031, 0x20E3], // Smiley 637
        'KEYCAP_2'                                                           => [0x0032, 0x20E3], // Smiley 638
        'KEYCAP_3'                                                           => [0x0033, 0x20E3], // Smiley 639
        'KEYCAP_4'                                                           => [0x0034, 0x20E3], // Smiley 640
        'KEYCAP_5'                                                           => [0x0035, 0x20E3], // Smiley 641
        'KEYCAP_6'                                                           => [0x0036, 0x20E3], // Smiley 642
        'KEYCAP_7'                                                           => [0x0037, 0x20E3], // Smiley 643
        'KEYCAP_8'                                                           => [0x0038, 0x20E3], // Smiley 644
        'KEYCAP_9'                                                           => [0x0039, 0x20E3], // Smiley 645
        'KEYCAP_0'                                                           => [0x0030, 0x20E3], // Smiley 646
        'KEYCAP_10'                                                          => 0x1F51F, // Smiley 647
        'INPUT_SYMBOL_FOR_NUMBERS'                                           => 0x1F522, // Smiley 648
        'HASH_KEY'                                                           => [0x0023, 0x20E3], // Smiley 649
        'INPUT_SYMBOL_FOR_SYMBOLS'                                           => 0x1F523, // Smiley 650
        'UPWARDS_BLACK_ARROW'                                                => 0x2B06,  // Smiley 651
        'DOWNWARDS_BLACK_ARROW'                                              => 0x2B07,  // Smiley 652
        'LEFTWARDS_BLACK_ARROW'                                              => 0x2B05,  // Smiley 653
        'BLACK_RIGHTWARDS_ARROW'                                             => 0x27A1,  // Smiley 654
        'INPUT_SYMBOL_FOR_LATIN_CAPITAL_LETTERS'                             => 0x1F520, // Smiley 655
        'INPUT_SYMBOL_FOR_LATIN_SMALL_LETTERS'                               => 0x1F521, // Smiley 656
        'INPUT_SYMBOL_FOR_LATIN_LETTERS'                                     => 0x1F524, // Smiley 657
        'NORTH_EAST_ARROW'                                                   => 0x2197,  // Smiley 658
        'NORTH_WEST_ARROW'                                                   => 0x2196,  // Smiley 659
        'SOUTH_EAST_ARROW'                                                   => 0x2198,  // Smiley 660
        'SOUTH_WEST_ARROW'                                                   => 0x2199,  // Smiley 661
        'LEFT_RIGHT_ARROW'                                                   => 0x2194,  // Smiley 662
        'UP_DOWN_ARROW'                                                      => 0x2195,  // Smiley 663
        'ANTICLOCKWISE_DOWNWARDS_AND_UPWARDS_OPEN_CIRCLE_ARROWS'             => 0x1F504, // Smiley 664
        'BLACK_LEFT_POINTING_TRIANGLE'                                       => 0x25C0,  // Smiley 665
        'BLACK_RIGHT_POINTING_TRIANGLE'                                      => 0x25B6,  // Smiley 666
        'UP_POINTING_SMALL_RED_TRIANGLE'                                     => 0x1F53C, // Smiley 667
        'DOWN_POINTING_SMALL_RED_TRIANGLE'                                   => 0x1F53D, // Smiley 668
        'LEFTWARDS_ARROW_WITH_HOOK'                                          => 0x21A9,  // Smiley 669
        'RIGHTWARDS_ARROW_WITH_HOOK'                                         => 0x21AA,  // Smiley 670
        'INFORMATION_SOURCE'                                                 => 0x2139,  // Smiley 671
        'BLACK_LEFT_POINTING_DOUBLE_TRIANGLE'                                => 0x23EA,  // Smiley 672
        'BLACK_RIGHT_POINTING_DOUBLE_TRIANGLE'                               => 0x23E9,  // Smiley 673
        'BLACK_UP_POINTING_DOUBLE_TRIANGLE'                                  => 0x23EB,  // Smiley 674
        'BLACK_DOWN_POINTING_DOUBLE_TRIANGLE'                                => 0x23EC,  // Smiley 675
        'ARROW_POINTING_RIGHTWARDS_THEN_CURVING_DOWNWARDS'                   => 0x2935,  // Smiley 676
        'ARROW_POINTING_RIGHTWARDS_THEN_CURVING_UPWARDS'                     => 0x2934,  // Smiley 677
        'SQUARED_OK'                                                         => 0x1F197, // Smiley 678
        'TWISTED_RIGHTWARDS_ARROWS'                                          => 0x1F500, // Smiley 679
        'CLOCKWISE_RIGHTWARDS_AND_LEFTWARDS_OPEN_CIRCLE_ARROWS'              => 0x1F501, // Smiley 680
        'CLOCKWISE_RIGHTWARDS_AND_LEFTWARDS_ARTOWS_WITH_CIRCLED_ONE_OVERLAY' => 0x1F502, // Smiley 681
        'SQUARED_NEW'                                                        => 0x1F195, // Smiley 682
        'SQUARED_UP_WITH_EXCLAMATION_MARK'                                   => 0x1F199, // Smiley 683
        'SQUARED_COOL'                                                       => 0x1F192, // Smiley 684
        'SQUARED_FREE'                                                       => 0x1F193, // Smiley 685
        'SQUARED_NG'                                                         => 0x1F196, // Smiley 686
        'ANTENNA_WITH_BARS'                                                  => 0x1F4F6, // Smiley 687
        'CINEMA'                                                             => 0x1F3A6, // Smiley 688
        'SQUARED_KATAKANA_KOKO'                                              => 0x1F201, // Smiley 689
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_6307'                                 => 0x1F22F, // Smiley 690
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_7A7A'                                 => 0x1F233, // Smiley 691
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_6E80'                                 => 0x1F235, // Smiley 692
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_5408'                                 => 0x1F234, // Smiley 693
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_7981'                                 => 0x1F232, // Smiley 694
        'CIRCLED_IDEOGRAPH_ADVANTAGE'                                        => 0x1F250, // Smiley 695
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_5272'                                 => 0x1F239, // Smiley 696
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_55B6'                                 => 0x1F23A, // Smiley 697
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_6709'                                 => 0x1F236, // Smiley 698
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_7121'                                 => 0x1F21A, // Smiley 699
        'RESTROOM'                                                           => 0x1F6BB, // Smiley 700
        'MENS_SYMBOL'                                                        => 0x1F6B9, // Smiley 701
        'WOMENS_SYMBOL'                                                      => 0x1F6BA, // Smiley 702
        'BABY_SYMBOL'                                                        => 0x1F6BC, // Smiley 703
        'WATER_CLOSET'                                                       => 0x1F6BE, // Smiley 704
        'POTABLE_WATER_SYMBOL'                                               => 0x1F6B0, // Smiley 705
        'PUT_LITTER_IN_ITS_PLACE_SYMBOL'                                     => 0x1F6AE, // Smiley 706
        'NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_P'                            => 0x1F17F, // Smiley 707
        'WHEELCHAIR_SYMBOL'                                                  => 0x267F,  // Smiley 708
        'NO_SMOKING_SYMBOL'                                                  => 0x1F6AD, // Smiley 709
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_6708'                                 => 0x1F237, // Smiley 710
        'SQUARED_CJK_UNIFIED_IDEOGRAPH_6533'                                 => 0x1F238, // Smiley 711
        'SQUARED_KATAKANA_SA'                                                => 0x1F202, // Smiley 712
        'CIRCLED_LATIN_CAPITAL_LETTER_M'                                     => 0x24C2,  // Smiley 713
        'PASSPORT_CONTROL'                                                   => 0x1F6C2, // Smiley 714
        'BAGGAGE_CLAIM'                                                      => 0x1F6C4, // Smiley 715
        'LEFT_LUGGAGE'                                                       => 0x1F6C5, // Smiley 716
        'CUSTOMS'                                                            => 0x1F6C3, // Smiley 717
        'CIRCLED_IDEOGRAPH_ACCEPT'                                           => 0x1F251, // Smiley 718
        'CIRCLED_IDEOGRAPH_SECRET'                                           => 0x3299,  // Smiley 719
        'CIRCLED_IDEOGRAPH_CONGRATULATIONS'                                  => 0x3297,  // Smiley 720
        'SQUARED_CL'                                                         => 0x1F191, // Smiley 721
        'SQUARED_SOS'                                                        => 0x1F198, // Smiley 722
        'SQUARED_ID'                                                         => 0x1F194, // Smiley 723
        'NO_ENTRY_SIGN'                                                      => 0x1F6AB, // Smiley 724
        'NO_ONE_UNDER_EIGHTEEN_SYMBOL'                                       => 0x1F51E, // Smiley 725
        'NO_MOBILE_PHONES'                                                   => 0x1F4F5, // Smiley 726
        'DO_NOT_LITTER_SYMBOL'                                               => 0x1F6AF, // Smiley 727
        'NON_POTABLE_WATER_SYMBOL'                                           => 0x1F6B1, // Smiley 728
        'NO_BICYCLES'                                                        => 0x1F6B3, // Smiley 729
        'NO_PEDESTRIANS'                                                     => 0x1F6B7, // Smiley 730
        'CHILDREN_CROSSING'                                                  => 0x1F6B8, // Smiley 731
        'NO_ENTRY'                                                           => 0x26D4,  // Smiley 732
        'EIGHT_SPOKED_ASTERISK'                                              => 0x2733,  // Smiley 733
        'SPARKLE'                                                            => 0x2747,  // Smiley 734
        'NEGATIVE_SQUARED_CROSS_MARK'                                        => 0x274E,  // Smiley 735
        'WHITE_HEAVY_CHECK_MARK'                                             => 0x2705,  // Smiley 736
        'EIGHT_POINTED_BLACK_STAR'                                           => 0x2734,  // Smiley 737
        'HEART_DECORATION'                                                   => 0x1F49F, // Smiley 738
        'SQUARED_VS'                                                         => 0x1F19A, // Smiley 739
        'VIBRATION_MODE'                                                     => 0x1F4F3, // Smiley 740
        'MOBILE_PHONE_OFF'                                                   => 0x1F4F4, // Smiley 741
        'NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_A'                            => 0x1F170, // Smiley 742
        'NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_B'                            => 0x1F171, // Smiley 743
        'NEGATIVE_SQUARED_AB'                                                => 0x1F18E, // Smiley 744
        'NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_O'                            => 0x1F17E, // Smiley 745
        'DIAMOND_SHAPE_WITH_A_DOT_INSIDE'                                    => 0x1F4A0, // Smiley 746
        'DOUBLE_CURLY_LOOP'                                                  => 0x27BF,  // Smiley 747
        'BLACK_UNIVERSAL_RECYCLING_SYMBOL'                                   => 0x267B,  // Smiley 748
        'ARIES'                                                              => 0x2648,  // Smiley 749
        'TAURUS'                                                             => 0x2649,  // Smiley 750
        'GEMINI'                                                             => 0x264A,  // Smiley 751
        'CANCER'                                                             => 0x264B,  // Smiley 752
        'LEO'                                                                => 0x264C,  // Smiley 753
        'VIRGO'                                                              => 0x264D,  // Smiley 754
        'LIBRA'                                                              => 0x264E,  // Smiley 755
        'SCORPIUS'                                                           => 0x264F,  // Smiley 756
        'SAGITTARIUS'                                                        => 0x2650,  // Smiley 757
        'CAPRICORN'                                                          => 0x2651,  // Smiley 758
        'AQUARIUS'                                                           => 0x2652,  // Smiley 759
        'PISCES'                                                             => 0x2653,  // Smiley 760
        'OPHIUCHUS'                                                          => 0x26CE,  // Smiley 761
        'SIX_POINTED_STAR_WITH_MIDDLE_DOT'                                   => 0x1F52F, // Smiley 762
        'AUTOMATED_TELLER_MACHINE'                                           => 0x1F3E7, // Smiley 763
        'CHART_WITH_UPWARDS_TREND_AND_YEN_SIGN'                              => 0x1F4B9, // Smiley 764
        'HEAVY_DOLLAR_SIGN'                                                  => 0x1F4B2, // Smiley 765
        'CURRENCY_EXCHANGE'                                                  => 0x1F4B1, // Smiley 766
        'COPYRIGHT_SIGN'                                                     => 0x00A9,  // Smiley 767
        'REGISTERED_SIGN'                                                    => 0x00AE,  // Smiley 768
        'TRADEMARK_SIGN'                                                     => 0x2122,  // Smiley 769
        'CROSS_MARK'                                                         => 0x274C,  // Smiley 770
        'DOUBLE_EXCLAMATION_MARK'                                            => 0x203C,  // Smiley 771
        'EXCLAMATION_QUESTION_MARK'                                          => 0x2049,  // Smiley 772
        'HEAVY_EXCLAMATION_MARK_SYMBOL'                                      => 0x2757,  // Smiley 773
        'BLACK_QUESTION_MARK_ORNAMENT'                                       => 0x2753,  // Smiley 774
        'WHITE_EXCLAMATION_MARK_ORNAMENT'                                    => 0x2755,  // Smiley 775
        'WHITE_QUESTION_MARK_ORNAMENT'                                       => 0x2754,  // Smiley 776
        'HEAVY_LARGE_CIRCLE'                                                 => 0x2B55,  // Smiley 777
        'TOP_WITH_UPWARDS_ARROW_ABOVE'                                       => 0x1F51D, // Smiley 778
        'END_WITH_LEFTWARDS_ARROW_ABOVE'                                     => 0x1F51A, // Smiley 779
        'BACK_WITH_LEFTWARDS_ARROW_ABOVE'                                    => 0x1F519, // Smiley 780
        'ON_WITH_EXCLAMATION_MARK_WITH_LEFT_RIGHT_ARROW_ABOVE'               => 0x1F51B, // Smiley 781
        'SOON_WITH_RIGHTWARDS_ARROW_ABOVE'                                   => 0x1F51C, // Smiley 782
        'CLOCKWISE_DOWNWARDS_AND_UPWARDS_OPEN_CIRCLE_ARROWS'                 => 0x1F503, // Smiley 783
        'CLOCK_FACE_TWELVE_OCLOCK'                                           => 0x1F55B, // Smiley 784
        'CLOCK_FACE_TWELVE_THIRTY'                                           => 0x1F567, // Smiley 785
        'CLOCK_FACE_ONE_OCLOCK'                                              => 0x1F550, // Smiley 786
        'CLOCK_FACE_ONE_THIRTY'                                              => 0x1F55C, // Smiley 787
        'CLOCK_FACE_TWO_OCLOCK'                                              => 0x1F551, // Smiley 788
        'CLOCK_FACE_TWO_THIRTY'                                              => 0x1F55D, // Smiley 789
        'CLOCK_FACE_THREE_OCLOCK'                                            => 0x1F552, // Smiley 790
        'CLOCK_FACE_THREE_THIRTY'                                            => 0x1F55E, // Smiley 791
        'CLOCK_FACE_FOUR_OCLOCK'                                             => 0x1F553, // Smiley 792
        'CLOCK_FACE_FOUR_THIRTY'                                             => 0x1F55F, // Smiley 793
        'CLOCK_FACE_FIVE_OCLOCK'                                             => 0x1F554, // Smiley 794
        'CLOCK_FACE_FIVE_THIRTY'                                             => 0x1F560, // Smiley 795
        'CLOCK_FACE_SIX_OCLOCK'                                              => 0x1F555, // Smiley 796
        'CLOCK_FACE_SEVEN_OCLOCK'                                            => 0x1F556, // Smiley 797
        'CLOCK_FACE_EIGHT_OCLOCK'                                            => 0x1F557, // Smiley 798
        'CLOCK_FACE_NINE_OCLOCK'                                             => 0x1F558, // Smiley 799
        'CLOCK_FACE_TEN_OCLOCK'                                              => 0x1F559, // Smiley 800
        'CLOCK_FACE_ELEVEN_OCLOCK'                                           => 0x1F55A, // Smiley 801
        'CLOCK_FACE_SIX_THIRTY'                                              => 0x1F561, // Smiley 802
        'CLOCK_FACE_SEVEN_THIRTY'                                            => 0x1F562, // Smiley 803
        'CLOCK_FACE_EIGHT_THIRTY'                                            => 0x1F563, // Smiley 804
        'CLOCK_FACE_NINE_THIRTY'                                             => 0x1F564, // Smiley 805
        'CLOCK_FACE_TEN_THIRTY'                                              => 0x1F565, // Smiley 806
        'CLOCK_FACE_ELEVEN_THIRTY'                                           => 0x1F566, // Smiley 807
        'HEAVY_MULTIPLICATION_SIGN'                                          => 0x2716,  // Smiley 808
        'HEAVY_PLUS_SIGN'                                                    => 0x2795,  // Smiley 809
        'HEAVY_MINUS_SIGN'                                                   => 0x2796,  // Smiley 810
        'HEAVY_DIVISION_SIGN'                                                => 0x2797,  // Smiley 811
        'BLACK_SPADE_SUIT'                                                   => 0x2660,  // Smiley 812
        'BLACK_HEART_SUIT'                                                   => 0x2665,  // Smiley 813
        'BLACK_CLUB_SUIT'                                                    => 0x2663,  // Smiley 814
        'BLACK_DIAMOND_SUITE'                                                => 0x2666,  // Smiley 815
        'WHITE_FLOWER'                                                       => 0x1F4AE, // Smiley 816
        'HUNDRED_POINTS_SYMBOL'                                              => 0x1F4AF, // Smiley 817
        'HEAVY_CHECK_MARK'                                                   => 0x2714,  // Smiley 818
        'BALLOT_BOX_WITH_CHECK'                                              => 0x2611,  // Smiley 819
        'RADIO_BUTTON'                                                       => 0x1F518, // Smiley 820
        'LINK_SYMBOL'                                                        => 0x1F517, // Smiley 821
        'CURLY_LOOP'                                                         => 0x27B0,  // Smiley 822
        'WAVY_DASH'                                                          => 0x3030,  // Smiley 823
        'PART_ALTERNATION_MARK'                                              => 0x303D,  // Smiley 824
        'TRIDENT_EMBLEM'                                                     => 0x1F531, // Smiley 825
        'BLACK_MEDIUM_SQUARE'                                                => 0x25FC,  // Smiley 826
        'WHITE_MEDIUM_SQUARE'                                                => 0x25FB,  // Smiley 827
        'BLACK_MEDIUM_SMALL_SQUARE'                                          => 0x25FE,  // Smiley 828
        'WHITE_MEDIUM_SMALL_SQUARE'                                          => 0x25FD,  // Smiley 829
        'BLACK_SMALL_SQUARE'                                                 => 0x25AA,  // Smiley 830
        'WHILTE_SMALL_SQUARE'                                                => 0x25AB,  // Smiley 831
        'UP_POINTING_RED_TRIANGLE'                                           => 0x1F53A, // Smiley 832
        'BLACK_SQUARE_BUTTON'                                                => 0x1F532, // Smiley 833
        'WHILTE_SQUARE_BUTTON'                                               => 0x1F533, // Smiley 834
        'MEDIUM_BLACK_CIRCLE'                                                => 0x26AB,  // Smiley 835
        'MEDIUM_WHITE_CIRCLE'                                                => 0x26AA,  // Smiley 836
        'LARGE_RED_CIRCLE'                                                   => 0x1F534, // Smiley 837
        'LARGE_BLUE_CIRCLE'                                                  => 0x1F535, // Smiley 838
        'DOWN_POINTING_RED_TRIANGLE'                                         => 0x1F53B, // Smiley 839
        'WHITE_LARGE_SQUARE'                                                 => 0x2B1C,  // Smiley 840
        'BLACK_LARGE_SQUARE'                                                 => 0x2B1B,  // Smiley 841
        'LARGE_ORANGE_DIAMOND'                                               => 0x1F536, // Smiley 842
        'LARGE_BLUE_DIAMOND'                                                 => 0x1F537, // Smiley 843
        'SMALL_ORANGE_DIAMOND'                                               => 0x1F538, // Smiley 844
        'SMALL_BLUE_DIAMOND'                                                 => 0x1F539, // Smiley 845
        'MIDDLEFINGER'                                                       => 0x1F595, // Smiley xxx
        'VULCAN_SALUTE'                                                      => 0x1F596, // Smiley xxx
    ];
    private $listKeys = [];

    public function __construct()
    {
        $this->listKeys = array_keys($this->listSmileys);
    }

    public function __get($name)
    {
        if (mb_strlen($name) > 7 && substr($name, 0, 7) === 'SMILEY_' && is_numeric(substr($name, 7))) {
            $id = (int) substr($name, 7) - 1;
            echo 'id '.$id;
            if ($id >= 0 && $id < count($this->listSmileys)) {
                return $this->__get($this->listKeys[$id]);
            }
            throw new SmileyNotFoundException();
        }

        if (!isset($this->listSmileys[$name])) {
            throw new SmileyNotFoundException();
        }

        if (is_array($this->listSmileys[$name])) {
            return implode(array_map([$this, 'ord_unicode'], $this->listSmileys[$name]));
        }

        return $this->ord_unicode($this->listSmileys[$name]);
    }

    // Source: http://stackoverflow.com/a/7153133/4990350

    private function ord_unicode($num)
    {
        if ($num <= 0x7F) {
            return chr($num);
        }
        if ($num <= 0x7FF) {
            return chr(($num >> 6) + 192).chr(($num & 63) + 128);
        }
        if ($num <= 0xFFFF) {
            return chr(($num >> 12) + 224).chr((($num >> 6) & 63) + 128).chr(($num & 63) + 128);
        }
        if ($num <= 0x1FFFFF) {
            return chr(($num >> 18) + 240).chr((($num >> 12) & 63) + 128).chr((($num >> 6) & 63) + 128).chr(($num & 63) + 128);
        }

        return '';
    }
}
