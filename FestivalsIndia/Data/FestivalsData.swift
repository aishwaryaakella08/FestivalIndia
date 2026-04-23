import Foundation

// S: Pure static data store. No filtering, no formatting, no UI.
// O: Add new festivals here without touching Repository or Presenters.
enum FestivalsData {
    static let all: [Festival] = north + south + east + west + panIndia

    // MARK: North
    static let north: [Festival] = [
        Festival(
            id: UUID(uuidString: "00000001-0000-0000-0000-000000000001")!,
            name: "Lohri",
            region: .north,
            dateRule: .fixed(month: 1, day: 13),
            emoji: "🔥",
            colorHex: "e65100",
            tagline: "Bonfire night welcoming the harvest season",
            importance: """
Lohri marks the end of winter and the harvest of the rabi (winter) crops, especially sugarcane and wheat. Celebrated on January 13th every year, it falls a day before Makar Sankranti and is particularly beloved in Punjab, Haryana, and Himachal Pradesh.

The festival holds deep agricultural roots — farmers give thanks to the sun god Surya and the fire god Agni for a bountiful harvest. For newly married couples and newborn babies, the first Lohri is considered especially auspicious, symbolising prosperity and new beginnings in the family.

The night comes alive with a massive bonfire around which families and communities gather, sing folk songs like "Sunder Mundriye," dance bhangra and gidda, and toss sesame seeds, jaggery, popcorn, and rewri into the flames as offerings.
""",
            rituals: [
                "Light a community bonfire at dusk",
                "Offer til (sesame), gajak, popcorn, and rewri into the fire",
                "Sing the traditional Lohri folk song",
                "Dance bhangra and gidda around the fire",
                "Distribute sweets — especially til-gur (sesame and jaggery)"
            ],
            funFacts: [
                "The word 'Lohri' may derive from 'loh', meaning warmth and light of fire",
                "It is especially grand for a family's first Lohri after a wedding or newborn",
                "Children go door-to-door collecting sweets, popcorn, and coins a week before"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000001-0000-0000-0000-000000000002")!,
            name: "Baisakhi",
            region: .north,
            dateRule: .fixed(month: 4, day: 13),
            emoji: "🌾",
            colorHex: "f9a825",
            tagline: "Harvest festival and Sikh New Year",
            importance: """
Baisakhi, celebrated on April 13, is one of the most important festivals for the Sikh community worldwide and a major harvest festival in Punjab. It marks the beginning of the solar new year and the time when the rabi (spring) crop — primarily wheat — is ready for harvest.

For Sikhs, Baisakhi carries profound religious significance: it was on this day in 1699 that Guru Gobind Singh Ji founded the Khalsa Panth, giving the Sikh faith its distinct identity. The day is therefore both a joyous agricultural celebration and a deeply spiritual anniversary.

People visit Gurudwaras for special prayers, participate in Nagar Kirtans (processions), and celebrate with bhangra and gidda folk dances that originally mimicked the movements of harvesting.
""",
            rituals: [
                "Visit the Gurudwara for special Baisakhi prayers",
                "Take part in Nagar Kirtan processions",
                "Perform bhangra and gidda — the traditional harvest dances",
                "Share langar (community meal) at the Gurudwara",
                "Farmers give thanks at the fields with the first harvest"
            ],
            funFacts: [
                "Guru Gobind Singh created the Panj Pyaare (Five Beloved Ones) on Baisakhi 1699",
                "The Jallianwala Bagh massacre of 1919 also occurred on Baisakhi",
                "Baisakhi fairs (melas) along riverbanks are a centuries-old tradition"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000001-0000-0000-0000-000000000003")!,
            name: "Teej",
            region: .north,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 8, day: 7),
                2025: MonthDay(month: 7, day: 27),
                2026: MonthDay(month: 8, day: 15),
                2027: MonthDay(month: 8, day: 4),
                2028: MonthDay(month: 7, day: 23),
                2029: MonthDay(month: 8, day: 11),
                2030: MonthDay(month: 8, day: 1)
            ]),
            emoji: "🌿",
            colorHex: "2e7d32",
            tagline: "A celebration of love, marriage and the monsoon",
            importance: """
Teej is a vibrant festival celebrated primarily by women in North India — especially Rajasthan, Uttar Pradesh, Bihar, and Madhya Pradesh. It falls in the Hindu month of Shravan (July–August) and coincides with the arrival of the monsoon.

The festival honours the union of Goddess Parvati with Lord Shiva. Legend has it that Parvati observed 108 rebirths and undertook severe penance to win Shiva as her husband. Married women fast and pray for their husband's long life, while unmarried girls pray for a good husband.

The festival is known for its stunning green imagery — women wear green clothes and bangles, mehendi (henna) is applied, swings are hung from trees, and folk songs called Teej geet are sung.
""",
            rituals: [
                "Observe a day-long nirjala fast (without even water)",
                "Apply intricate mehendi (henna) designs on hands and feet",
                "Wear green clothes and green bangles symbolising prosperity",
                "Sing Teej folk songs and dance on flower-decorated swings",
                "Worship an idol of Goddess Parvati and Lord Shiva"
            ],
            funFacts: [
                "There are three types of Teej: Hariyali Teej, Hartalika Teej, and Kajari Teej",
                "The Teej procession in Jaipur is a spectacular royal tradition dating back centuries",
                "Green is the signature colour as it symbolises the lushness of the monsoon"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000001-0000-0000-0000-000000000004")!,
            name: "Karwa Chauth",
            region: .north,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 10, day: 20),
                2025: MonthDay(month: 10, day: 10),
                2026: MonthDay(month: 10, day: 29),
                2027: MonthDay(month: 10, day: 18),
                2028: MonthDay(month: 10, day: 6),
                2029: MonthDay(month: 10, day: 25),
                2030: MonthDay(month: 10, day: 14)
            ]),
            emoji: "🌕",
            colorHex: "c62828",
            tagline: "A wife's fast for her husband's long life",
            importance: """
Karwa Chauth is one of the most cherished festivals for married Hindu women, observed predominantly in North India — Punjab, Haryana, Rajasthan, and Uttar Pradesh. Wives fast from sunrise to moonrise, breaking the fast only after sighting the moon and their husband's face through a sieve.

The fast is a gesture of deep love and devotion, with women praying for their husband's health, long life, and well-being. It falls on the fourth day of the Krishna Paksha in the Hindu month of Kartik.

The evening ritual is particularly touching — women dressed in their finest attire gather to perform the puja, listen to the Karwa Chauth katha (story), and then watch for the moon to rise.
""",
            rituals: [
                "Fast from sunrise to moonrise without food or water",
                "Dress in bridal finery — red, maroon, or orange",
                "Apply mehendi and wear bridal jewellery",
                "Perform the evening puja with other women in the neighbourhood",
                "Sight the moon through a sieve, then see husband's face",
                "Husband offers water to wife to break the fast"
            ],
            funFacts: [
                "The tradition began as a way for women to pray for soldier husbands returning from wars",
                "The 'sieve' ritual symbolises filtering out evil and seeing only good",
                "Today many progressive households have husbands fasting alongside their wives"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000001-0000-0000-0000-000000000005")!,
            name: "Dussehra",
            region: .north,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 10, day: 12),
                2025: MonthDay(month: 10, day: 2),
                2026: MonthDay(month: 10, day: 21),
                2027: MonthDay(month: 10, day: 10),
                2028: MonthDay(month: 9, day: 28),
                2029: MonthDay(month: 10, day: 17),
                2030: MonthDay(month: 10, day: 7)
            ]),
            emoji: "🏹",
            colorHex: "b71c1c",
            tagline: "The triumph of good over evil",
            importance: """
Dussehra celebrates the victory of Lord Rama over the demon king Ravana. It falls on the tenth day of Navratri and is one of India's most dramatically celebrated festivals, especially in North India.

The word 'Dussehra' is derived from 'Dasha-Hara', meaning the defeat of the ten-headed Ravana. It symbolises the eternal truth that good always conquers evil. The festival also marks Goddess Durga's victory over the buffalo demon Mahishasura.

The highlight in North India is the spectacular burning of giant effigies of Ravana, his brother Kumbhakarna, and son Meghnad, filled with firecrackers. The Ramnagar Ramlila near Varanasi — a month-long theatrical performance — is a UNESCO-recognised tradition.
""",
            rituals: [
                "Watch or participate in Ramlila — theatrical enactment of the Ramayana",
                "Burn effigies of Ravana, Kumbhakarna, and Meghnad at sunset",
                "Worship weapons and tools (Ayudha Puja) in many regions",
                "Exchange Shami or Apta tree leaves as a symbol of gold",
                "Visit temples and pray for victory of righteousness"
            ],
            funFacts: [
                "The Mysore Dasara procession features a golden howdah elephant",
                "In Kullu, Himachal Pradesh, a week-long fair draws deities from surrounding villages",
                "Warriors historically sought blessings of their weapons on Dussehra"
            ]
        ),
           Festival(
               id: UUID(uuidString: "00000001-0000-0000-0000-000000000006")!,
               name: "Vasant Panchami",
               region: .north,
               dateRule: .lunisolar(knownDates: [
                   2024: MonthDay(month: 2, day: 14),
                   2025: MonthDay(month: 2, day: 2),
                   2026: MonthDay(month: 1, day: 23),
                   2027: MonthDay(month: 2, day: 11),
                   2028: MonthDay(month: 1, day: 31),
                   2029: MonthDay(month: 2, day: 18),
                   2030: MonthDay(month: 2, day: 7)
               ]),
               emoji: "🌼",
               colorHex: "f9a825",
               tagline: "Welcoming spring and honouring Goddess Saraswati",
               importance: """
   Vasant Panchami marks the arrival of spring (Vasant) and is celebrated on the fifth day (Panchami) of the bright half of the Hindu month of Magha. It is primarily a festival dedicated to Goddess Saraswati — the deity of knowledge, music, art, wisdom, and learning.

   On this day, students place their books, musical instruments, and pens before Saraswati's idol and seek her blessings. Schools and colleges hold special pujas, and it is considered one of the most auspicious days to start learning a new skill, enrol a child in school for the first time (a ceremony called Vidyarambham), or begin writing.

   Yellow is the signature colour of Vasant Panchami — worn by people, used in food (saffron-yellow sweet rice), and offered to the goddess. Yellow symbolises the mustard flowers that bloom across North Indian fields in spring, painting the landscape a vivid gold.
   """,
               rituals: [
                   "Worship Goddess Saraswati with books, instruments, and pens as offerings",
                   "Wear yellow clothes as a tribute to spring's mustard blossoms",
                   "Eat yellow sweet dishes — especially saffron rice (kesari bhat)",
                   "Perform Vidyarambham — first writing ceremony for young children",
                   "Fly kites in Punjab and Haryana to celebrate the arrival of spring",
                   "Visit Saraswati temples for special prayers and music performances"
               ],
               funFacts: [
                   "Vasant Panchami is considered the most auspicious day to start a child's formal education",
                   "In Bengal, elaborate Saraswati Puja is held in schools — students touch their books to the idol's feet",
                   "The festival also marks 40 days before Holi — spring is officially counted from Vasant Panchami"
               ]
           ),
           Festival(
               id: UUID(uuidString: "00000001-0000-0000-0000-000000000007")!,
               name: "Raksha Bandhan",
               region: .north,
               dateRule: .lunisolar(knownDates: [
                   2024: MonthDay(month: 8, day: 19),
                   2025: MonthDay(month: 8, day: 9),
                   2026: MonthDay(month: 8, day: 28),
                   2027: MonthDay(month: 8, day: 17),
                   2028: MonthDay(month: 8, day: 5),
                   2029: MonthDay(month: 8, day: 24),
                   2030: MonthDay(month: 8, day: 14)
               ]),
               emoji: "🪢",
               colorHex: "c62828",
               tagline: "The sacred thread of love between siblings",
               importance: """
   Raksha Bandhan — meaning 'bond of protection' — is one of the most heartwarming festivals in India, celebrating the relationship between brothers and sisters. On the full moon of the Hindu month of Shravan, a sister ties a rakhi (a sacred thread) around her brother's wrist, and in return he pledges to protect her for life.

   The festival has roots in multiple Hindu legends. One tells of Draupadi tearing a strip of her saree to bind Krishna's wounded wrist — and Krishna, moved, promised to repay that kindness a hundredfold (which he did during the Mahabharata). Another tells of Goddess Lakshmi tying a rakhi on King Bali to secure Lord Vishnu's freedom from his service.

   Raksha Bandhan has evolved beautifully — the bond of 'raksha' (protection) is no longer limited to biological siblings. Friends, neighbours, and even citizens tie rakhis to soldiers at the border, and in some communities, women tie rakhis on trees to honour the bond with nature.
   """,
               rituals: [
                   "Sister performs aarti and ties rakhi on brother's right wrist",
                   "Brother gives gifts or money (shagun) and pledges protection",
                   "Share sweets — especially mithai and homemade laddoos",
                   "Sisters send rakhis by post to brothers living far away",
                   "Women tie rakhis on trees (in some regions) as a nature-protection ritual"
               ],
               funFacts: [
                   "Rabindranath Tagore used Raksha Bandhan in 1905 to unite Hindus and Muslims against the British partition of Bengal",
                   "The global rakhi market is worth over ₹12,000 crore — it is one of India's biggest retail occasions",
                   "Soldiers at India's borders receive thousands of rakhis from citizens across the country every year"
               ]
           ),
           Festival(
               id: UUID(uuidString: "00000001-0000-0000-0000-000000000008")!,
               name: "Janmashtami",
               region: .north,
               dateRule: .lunisolar(knownDates: [
                   2024: MonthDay(month: 8, day: 26),
                   2025: MonthDay(month: 8, day: 16),
                   2026: MonthDay(month: 9, day: 3),
                   2027: MonthDay(month: 8, day: 23),
                   2028: MonthDay(month: 8, day: 11),
                   2029: MonthDay(month: 8, day: 31),
                   2030: MonthDay(month: 8, day: 20)
               ]),
               emoji: "🦚",
               colorHex: "1a6b8a",
               tagline: "Celebrating the birth of Lord Krishna at midnight",
               importance: """
   Janmashtami celebrates the birth of Lord Krishna — the eighth avatar of Lord Vishnu, philosopher, statesman, divine lover, and the speaker of the Bhagavad Gita — born at midnight in a prison cell in Mathura to free the world from the tyranny of his evil uncle Kansa. The festival falls on the eighth day (Ashtami) of the Krishna Paksha in the month of Bhadrapada.

   Mathura and Vrindavan — the cities of Krishna's birth and childhood — transform into a sea of devotion. Temples are decorated extravagantly, devotional songs (bhajans) are sung through the night, and at the stroke of midnight, the birth moment is celebrated with the ringing of bells, blowing of conches, and showering of flowers on Krishna's idol.

   In Maharashtra, the festival is celebrated as Dahi Handi — teams of young men form human pyramids to break a pot of curd (dahi) hung high above the street, re-enacting Krishna's famous childhood habit of stealing butter. Some pyramids reach eight to nine human tiers high — a breathtaking display of community teamwork and festive energy.
   """,
               rituals: [
                   "Fast the entire day until midnight — the moment of Krishna's birth",
                   "Decorate the home with flowers, diyas, and images of baby Krishna",
                   "Perform the midnight aarti precisely at 12:00 AM",
                   "Bathe and dress a baby Krishna idol (abhishek)",
                   "Sing Krishna bhajans and kirtans through the night",
                   "Participate in Dahi Handi — human pyramid to break the pot of curd (Maharashtra)"
               ],
               funFacts: [
                   "Mathura and Vrindavan begin Janmashtami celebrations a week in advance",
                   "The Dahi Handi in Mumbai offers prize money of up to ₹1 crore for the tallest human pyramid",
                   "ISKCON temples worldwide celebrate Janmashtami — it is one of the few Indian festivals with a truly global footprint"
               ]
           )
               ]

    // MARK: South
    static let south: [Festival] = [
        Festival(
            id: UUID(uuidString: "00000002-0000-0000-0000-000000000001")!,
            name: "Pongal",
            region: .south,
            dateRule: .fixed(month: 1, day: 14),
            emoji: "🌾",
            colorHex: "2e7d32",
            tagline: "Tamil harvest festival of gratitude",
            importance: """
Pongal is Tamil Nadu's most important harvest festival, celebrated over four days starting on January 14. The word 'Pongal' means 'to boil over' or 'overflow', symbolising abundance and prosperity. The festival marks the sun's northward journey (Uttarayan) and the harvest of rice, sugarcane, and turmeric.

Each of the four days has unique significance: Bhogi Pongal involves burning old belongings; Thai Pongal is the main day when sweet rice is cooked outdoors and offered to the sun; Mattu Pongal honours cattle; and Kaanum Pongal is for family reunions.

Women draw elaborate kolam patterns at the entrance of every home, and the air fills with the aroma of freshly boiled pongal rice.
""",
            rituals: [
                "Cook sweet pongal outdoors in a new clay pot",
                "Let it boil over — shout 'Pongalo Pongal!'",
                "Draw intricate kolam patterns with rice flour",
                "Decorate cattle with garlands and turmeric on Mattu Pongal",
                "Burn old items on Bhogi Pongal to embrace renewal"
            ],
            funFacts: [
                "Jallikattu — the traditional bull-taming sport — is held during Mattu Pongal",
                "The festival is over 2,000 years old, mentioned in ancient Sangam literature",
                "Turmeric plants with roots are tied around the pongal pot during cooking"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000002-0000-0000-0000-000000000002")!,
            name: "Onam",
            region: .south,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 9, day: 15),
                2025: MonthDay(month: 9, day: 4),
                2026: MonthDay(month: 8, day: 25),
                2027: MonthDay(month: 9, day: 12),
                2028: MonthDay(month: 9, day: 1),
                2029: MonthDay(month: 8, day: 21),
                2030: MonthDay(month: 9, day: 9)
            ]),
            emoji: "🌸",
            colorHex: "1b5e20",
            tagline: "Kerala's grandest festival welcoming King Mahabali",
            importance: """
Onam is the most celebrated festival of Kerala and one of the most visually splendid festivals in India. It is a ten-day harvest festival that commemorates the mythical golden age of Kerala under the beloved demon king Mahabali, known for his generosity, justice, and equality.

According to legend, Vishnu appeared as Vamana and pushed Mahabali into the netherworld — but granted him the boon of visiting his people once a year. Onam celebrates that annual homecoming.

The festival is characterised by the breathtaking Pookalam (floral carpet) made fresh every day, the spectacular Vallamkali (snake boat races), and the Onasadya — a grand vegetarian feast of 26 dishes served on a banana leaf.
""",
            rituals: [
                "Create a Pookalam — an intricate floral carpet — with fresh flowers daily",
                "Prepare Onasadya — a 26-dish vegetarian feast on a banana leaf",
                "Watch or participate in Vallamkali — the famous snake boat race",
                "Perform the Thiruvathirakali — a graceful women's dance",
                "Wear Kasavu sarees (cream and gold)"
            ],
            funFacts: [
                "The Nehru Trophy Boat Race on Punnamada Lake is the most famous snake boat race",
                "A traditional Onasadya has 26 to 28 dishes served in a specific order",
                "UNESCO recognised Onam as an important cultural heritage of Kerala"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000002-0000-0000-0000-000000000003")!,
            name: "Ugadi",
            region: .south,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 4, day: 9),
                2025: MonthDay(month: 3, day: 30),
                2026: MonthDay(month: 3, day: 19),
                2027: MonthDay(month: 4, day: 7),
                2028: MonthDay(month: 3, day: 26),
                2029: MonthDay(month: 4, day: 14),
                2030: MonthDay(month: 4, day: 3)
            ]),
            emoji: "🌺",
            colorHex: "558b2f",
            tagline: "Telugu and Kannada New Year",
            importance: """
Ugadi marks the beginning of a new Hindu lunar calendar year and is celebrated as New Year's Day by the Telugu and Kannada communities. The name derives from 'Yuga' (era) and 'Aadi' (beginning).

The festival's most unique custom is Ugadi Pachadi — a chutney made from six ingredients representing six tastes: neem flowers (bitterness), jaggery (sweetness), raw mango (tanginess), tamarind (sourness), chilli (heat), and salt. This symbolic dish teaches that life is a mixture of all experiences.

According to tradition, Lord Brahma began the creation of the universe on this day.
""",
            rituals: [
                "Wake up early, apply oil bath, and wear new clothes",
                "Decorate the entrance with fresh mango leaf torans",
                "Prepare and eat Ugadi Pachadi — the six-taste chutney",
                "Listen to Panchanga Shravanam — the astrological almanac reading",
                "Cook traditional dishes like Bobbatlu (sweet flatbread)"
            ],
            funFacts: [
                "The six tastes in Ugadi Pachadi symbolise that life is a blend of all emotions",
                "Panchanga Shravanam predicts the general character of the coming year",
                "Ugadi is the day when new business ventures are traditionally started"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000002-0000-0000-0000-000000000004")!,
            name: "Vishu",
            region: .south,
            dateRule: .fixed(month: 4, day: 14),
            emoji: "🌼",
            colorHex: "f57f17",
            tagline: "Kerala's auspicious New Year of first sights",
            importance: """
Vishu is the traditional New Year of Kerala, celebrated on April 14. The most sacred custom is the Vishukkani — 'the first sight of the new year'. The night before, the eldest woman arranges a Kani (auspicious arrangement) with Kani Konna flowers, rice, fruits, vegetables, a golden necklace, coins, and a lit lamp.

Family members wake up before dawn with eyes closed, are led to the Kani, and their first sight of the new year is this symbol of abundance. The first sight is believed to determine fortune for the year ahead.

Children receive Vishukkaineetam — a gift of money from elders.
""",
            rituals: [
                "Arrange the Vishukkani the night before with flowers, fruits, and gold",
                "Wake before dawn and see the Kani as your very first sight",
                "Elders give Vishukkaineetam — coins or money — to children",
                "Burst crackers at dawn to herald the new year",
                "Cook and share Vishu Sadya — a celebratory feast"
            ],
            funFacts: [
                "The Kani Konna — golden shower tree blossom — is essential to Vishu",
                "Every item in the Vishukkani has purpose: mirror reflects prosperity, texts represent wisdom",
                "The tradition is rooted in the idea that a good beginning ensures a good year"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000002-0000-0000-0000-000000000005")!,
            name: "Karthigai Deepam",
            region: .south,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 11, day: 26),
                2025: MonthDay(month: 12, day: 15),
                2026: MonthDay(month: 12, day: 4),
                2027: MonthDay(month: 11, day: 23),
                2028: MonthDay(month: 12, day: 11),
                2029: MonthDay(month: 11, day: 30),
                2030: MonthDay(month: 12, day: 19)
            ]),
            emoji: "🪔",
            colorHex: "e65100",
            tagline: "Tamil Nadu's festival of lights and Lord Shiva",
            importance: """
Karthigai Deepam is one of Tamil Nadu's oldest and most sacred festivals, predating even Diwali in the region's history. It honours Lord Shiva in his form as an infinite column of light (Jyotirlinga).

The festival is rooted in the legend of Lord Shiva appearing as an endless pillar of fire to resolve a cosmic dispute between Brahma and Vishnu about who was supreme. The Tiruvannamalai Karthigai Deepam, where a massive torch is lit atop the sacred Arunachala hill, is visible for miles.

On this day, every home in Tamil Nadu lights rows of oil lamps (deepams), turning entire streets golden.
""",
            rituals: [
                "Light rows of oil lamps (deepams) in every room and outside the home",
                "Prepare Pori Urundai (puffed rice balls) as the festival sweet",
                "Visit Shiva temples — especially Tiruvannamalai",
                "Light the beacon flame atop Arunachala hill",
                "Perform special evening prayers by lamp light"
            ],
            funFacts: [
                "The Tiruvannamalai deepam flame on Arunachala hill is visible 30 km away",
                "Karthigai Deepam was celebrated in ancient Tamil Sangam literature over 2,000 years ago",
                "It is considered the 'Diwali of South India' with distinct mythology"
            ]
        ),
        Festival(
                    id: UUID(uuidString: "00000005-0000-0000-0000-000000000004")!,
                    name: "Maha Shivaratri",
                    region: .panIndia,
                    dateRule: .lunisolar(knownDates: [
                        2024: MonthDay(month: 3, day: 8),
                        2025: MonthDay(month: 2, day: 26),
                        2026: MonthDay(month: 2, day: 15),
                        2027: MonthDay(month: 3, day: 6),
                        2028: MonthDay(month: 2, day: 23),
                        2029: MonthDay(month: 2, day: 12),
                        2030: MonthDay(month: 3, day: 3)
                    ]),
                    emoji: "🔱",
                    colorHex: "4a148c",
                    tagline: "The great night of Lord Shiva — worship, fast, and vigil",
                    importance: """
        Maha Shivaratri — 'the great night of Shiva' — is one of the most sacred nights in the Hindu calendar, observed on the 14th night of the dark half of the month of Phalguna. It is a night of profound spiritual significance, when Lord Shiva is believed to perform the Tandava — the cosmic dance of creation, preservation, and destruction.

        Among the many legends surrounding Shivaratri, the most widely told is of the hunter Guha who accidentally kept an all-night vigil under a Bilva (bel) tree, unknowingly dropping its leaves onto a Shiva Linga below. Shiva, pleased by this unintentional worship, granted him moksha. This teaches that even an unconscious act of devotion to Shiva bears fruit — and deliberate, sincere worship is infinitely more powerful.

        Unlike most Hindu festivals celebrated with noise and colour, Maha Shivaratri is a festival of inward stillness. Devotees observe a strict fast, stay awake all night (jaagran) chanting 'Om Namah Shivaya', visit Shiva temples for the four prahar (quarter-night) pujas, and offer bel leaves, milk, honey, and water on the Shiva Linga.
        """,
                    rituals: [
                        "Observe a day-long fast — many keep a nirjala (waterless) fast",
                        "Visit a Shiva temple for all four prahar pujas through the night",
                        "Offer bel (bilva) leaves, milk, honey, curd, and water on the Shiva Linga",
                        "Stay awake all night — the jaagran — chanting 'Om Namah Shivaya'",
                        "Bathe in a sacred river or at home before dawn",
                        "Break the fast the next morning after sunrise prayers"
                    ],
                    funFacts: [
                        "The Maha Shivaratri fair at Mandi, Himachal Pradesh brings together 200+ deities from surrounding temples — called the 'Kullu Dussehra of winter'",
                        "The Shiva Linga at Somnath temple — one of the 12 Jyotirlingas — sees over 100,000 pilgrims on Shivaratri",
                        "Staying awake on Shivaratri is itself considered a spiritual practice — it symbolises transcending tamas (inertia)"
                    ]
                ),
                Festival(
                    id: UUID(uuidString: "00000005-0000-0000-0000-000000000005")!,
                    name: "Ram Navami",
                    region: .panIndia,
                    dateRule: .lunisolar(knownDates: [
                        2024: MonthDay(month: 4, day: 17),
                        2025: MonthDay(month: 4, day: 6),
                        2026: MonthDay(month: 3, day: 26),
                        2027: MonthDay(month: 4, day: 15),
                        2028: MonthDay(month: 4, day: 3),
                        2029: MonthDay(month: 3, day: 24),
                        2030: MonthDay(month: 4, day: 12)
                    ]),
                    emoji: "🏹",
                    colorHex: "b71c1c",
                    tagline: "Celebrating the birth of Lord Rama — the ideal man",
                    importance: """
        Ram Navami celebrates the birth of Lord Rama — the seventh avatar of Lord Vishnu and the hero of the Ramayana — born at noon on the ninth day (Navami) of the bright half of Chaitra. Rama is revered as Maryada Purushottam — the ideal man, the perfect king, the embodiment of dharma (righteousness).

        The festival holds immense significance across India, but is celebrated with particular grandeur in Ayodhya (Rama's birthplace), Rameswaram, Varanasi, and Bhadrachalam (Telangana). In Ayodhya, the Saryu River ghat comes alive with thousands of pilgrims, and the Ram Janmabhoomi Temple — rebuilt on the exact site of Rama's birth — witnesses its grandest celebration.

        In South India, particularly Andhra Pradesh and Tamil Nadu, Ram Navami is celebrated as a grand cultural festival with classical music and dance performances (Sangita Utsavam) that run for nine days through Navratri. In Maharashtra, large processions (Shobha Yatras) carry decorated idols of Rama through the streets.
        """,
                    rituals: [
                        "Fast from sunrise to noon — the time of Rama's birth",
                        "Perform a special puja at noon with the idol of baby Rama (Ramlalla)",
                        "Recite the Ramayana or listen to Ram Katha",
                        "Take part in the Shobha Yatra — procession with Rama's idol through the streets",
                        "Offer tulsi (holy basil) leaves — Rama's most sacred offering",
                        "Distribute panakam (jaggery-pepper drink) and kosambari as prasad in South India"
                    ],
                    funFacts: [
                        "Ayodhya lights up with millions of diyas on Ram Navami — rivalling Diwali in grandeur",
                        "Bhadrachalam temple in Telangana is famous for its Ram Navami Kalyanam — the celestial wedding of Rama and Sita",
                        "Ram Navami 2024 was the first celebration at the newly consecrated Ram Mandir in Ayodhya"
                    ]
                ),
                Festival(
                    id: UUID(uuidString: "00000005-0000-0000-0000-000000000006")!,
                    name: "Buddha Purnima",
                    region: .panIndia,
                    dateRule: .lunisolar(knownDates: [
                        2024: MonthDay(month: 5, day: 23),
                        2025: MonthDay(month: 5, day: 12),
                        2026: MonthDay(month: 5, day: 31),
                        2027: MonthDay(month: 5, day: 20),
                        2028: MonthDay(month: 5, day: 8),
                        2029: MonthDay(month: 5, day: 27),
                        2030: MonthDay(month: 5, day: 16)
                    ]),
                    emoji: "☸️",
                    colorHex: "ef6c00",
                    tagline: "Commemorating the birth, enlightenment, and passing of the Buddha",
                    importance: """
        Buddha Purnima — also called Vesak or Buddha Jayanti — is the most sacred day in the Buddhist calendar, falling on the full moon of the Hindu month of Vaisakh (April–May). On this single day, Buddhists worldwide commemorate three extraordinary events in the life of Siddhartha Gautama: his birth (at Lumbini, Nepal), his enlightenment (Bodh Gaya, Bihar), and his passing into Parinirvana (Kushinagar, Uttar Pradesh).

        The Mahabodhi Temple in Bodh Gaya — the site under the Bodhi tree where the Buddha attained enlightenment — becomes the spiritual centre of the world on this day. Tens of thousands of monks, nuns, and lay practitioners from across Asia gather here in orange and saffron robes for prayers, meditation, and candlelight processions.

        In India, the festival is celebrated not only by the Buddhist community but also by many Hindus, who regard the Buddha as the ninth avatar of Vishnu. Sarnath near Varanasi — where the Buddha gave his first sermon — and Kushinagar are also major pilgrimage sites on this day.
        """,
                    rituals: [
                        "Visit Buddhist temples and monasteries for special prayers",
                        "Meditate and observe the Five Precepts with renewed commitment",
                        "Light oil lamps and candles to symbolise the Buddha's light of wisdom",
                        "Release caged birds and fish — an act of compassion and merit",
                        "Offer flowers, incense, and food to monks at monasteries",
                        "Circumambulate the Bodhi tree or stupa chanting 'Buddham Sharanam Gacchami'"
                    ],
                    funFacts: [
                        "Bodh Gaya in Bihar — where the Buddha attained enlightenment — is a UNESCO World Heritage Site",
                        "The Bodhi tree at Bodh Gaya is a direct descendant of the original tree under which the Buddha meditated",
                        "Vesak (Buddha Purnima) is a UN-recognised day of international observance, celebrated in 100+ countries"
                    ]
                ),
                Festival(
                    id: UUID(uuidString: "00000005-0000-0000-0000-000000000007")!,
                    name: "Eid ul-Adha",
                    region: .panIndia,
                    dateRule: .lunisolar(knownDates: [
                        2024: MonthDay(month: 6, day: 17),
                        2025: MonthDay(month: 6, day: 7),
                        2026: MonthDay(month: 5, day: 27),
                        2027: MonthDay(month: 5, day: 16),
                        2028: MonthDay(month: 5, day: 5),
                        2029: MonthDay(month: 4, day: 24),
                        2030: MonthDay(month: 4, day: 13)
                    ]),
                    emoji: "🐑",
                    colorHex: "1b5e20",
                    tagline: "Festival of Sacrifice — commemorating Ibrahim's devotion",
                    importance: """
        Eid ul-Adha — the 'Festival of Sacrifice' (also called Bakrid or Eid ul-Kabir) — is the second of Islam's two major Eid celebrations and is considered the holier of the two. It falls on the 10th of Dhul Hijjah, the last month of the Islamic lunar calendar, coinciding with the culmination of the Hajj pilgrimage to Mecca.

        The festival commemorates the supreme act of devotion by Prophet Ibrahim (Abraham), who was willing to sacrifice his son Ismail in obedience to Allah's command. As Ibrahim prepared to carry out the sacrifice, Allah intervened and replaced Ismail with a ram — rewarding Ibrahim's faith and establishing the tradition of Qurbani (sacrifice).

        In India, families who can afford to do so sacrifice a goat, sheep, cow, or camel. The meat is divided into three equal parts: one for the family, one for relatives and friends, and one — crucially — for the poor. This mandatory sharing ensures that everyone in the community, regardless of means, celebrates Eid with a feast. The spirit of Eid ul-Adha is therefore not just devotion but radical, structured generosity.
        """,
                    rituals: [
                        "Perform the special Eid prayer (Salat al-Eid) in congregation at mosques",
                        "Perform Qurbani — the ritual sacrifice of livestock after the prayer",
                        "Divide the meat into three equal portions: family, friends, and the poor",
                        "Wear new or finest clothes and exchange Eid greetings",
                        "Visit relatives and share biryani and other festive foods",
                        "Give Eidi (gifts of money) to children"
                    ],
                    funFacts: [
                        "Eid ul-Adha coincides with the Hajj pilgrimage — the world's largest annual gathering of people, with over 2 million in Mecca",
                        "The word 'Bakrid' comes from 'Bakr' (goat in Arabic) — reflecting the most commonly sacrificed animal in South Asia",
                        "The mandatory sharing of sacrifice meat with the poor makes Eid ul-Adha one of the world's most structured annual redistribution events"
                    ]
                ),
                Festival(
                    id: UUID(uuidString: "00000005-0000-0000-0000-000000000008")!,
                    name: "Guru Nanak Jayanti",
                    region: .panIndia,
                    dateRule: .lunisolar(knownDates: [
                        2024: MonthDay(month: 11, day: 15),
                        2025: MonthDay(month: 11, day: 5),
                        2026: MonthDay(month: 11, day: 24),
                        2027: MonthDay(month: 11, day: 13),
                        2028: MonthDay(month: 11, day: 1),
                        2029: MonthDay(month: 11, day: 20),
                        2030: MonthDay(month: 11, day: 9)
                    ]),
                    emoji: "🌟",
                    colorHex: "f57f17",
                    tagline: "Celebrating the birth of Sikhism's first Guru",
                    importance: """
        Guru Nanak Jayanti — also called Gurpurab or Prakash Parv — celebrates the birth of Guru Nanak Dev Ji, the founder of Sikhism, born in 1469 in Nankana Sahib (present-day Pakistan). It is the most important festival in the Sikh calendar, observed with extraordinary devotion in India and by Sikh communities worldwide.

        Guru Nanak's teachings were revolutionary for their time: he rejected the caste system, taught the equality of all human beings, emphasised honest work (Kirat Karo), selfless service (Seva), and remembrance of God (Naam Japo). His message — 'There is no Hindu, there is no Muslim' — was a radical call for universal brotherhood in 15th-century India.

        The celebrations begin two days before with the Akhand Path — a continuous, 48-hour, uninterrupted reading of the Guru Granth Sahib (the Sikh holy scripture). On Gurpurab morning, a Nagar Kirtan (holy procession) proceeds through the streets with singing of shabads (hymns), led by the Panj Pyare (the Five Beloved Ones) and carrying the Guru Granth Sahib on a decorated float.
        """,
                    rituals: [
                        "Attend the Akhand Path — the 48-hour uninterrupted reading of Guru Granth Sahib",
                        "Participate in the Nagar Kirtan — the pre-dawn street procession with hymns",
                        "Visit the Gurudwara for special prayers and kirtan",
                        "Serve and partake in the langar — the free community kitchen open to all",
                        "Distribute kada prasad (sweet semolina offering) to all visitors",
                        "Light the Gurudwara and home with candles and diyas"
                    ],
                    funFacts: [
                        "The Golden Temple in Amritsar — Sikhism's holiest shrine — receives over 100,000 pilgrims on Gurpurab",
                        "Langar at the Golden Temple serves free meals to over 100,000 people every single day — and this number multiplies on Gurpurab",
                        "Guru Nanak travelled over 28,000 km across Asia and the Middle East on foot to spread his message of unity — these journeys are called Udasis"
                    ]
                ),
                Festival(
                    id: UUID(uuidString: "00000005-0000-0000-0000-000000000009")!,
                    name: "Christmas",
                    region: .panIndia,
                    dateRule: .fixed(month: 12, day: 25),
                    emoji: "🎄",
                    colorHex: "2e7d32",
                    tagline: "Celebrating the birth of Jesus Christ",
                    importance: """
        Christmas, celebrated on December 25, commemorates the birth of Jesus Christ — the central figure of Christianity — in Bethlehem over 2,000 years ago. In India, with a Christian population of over 28 million, Christmas is a national public holiday and a festival embraced across communities, cultures, and religions.

        Indian Christmas has its own beautiful flavour. In Goa — whose Christian heritage dates to the 16th-century Portuguese era — midnight Mass at centuries-old churches, carol singing, and the smell of bebinca (a traditional Goan Christmas cake) define the season. In Kerala, the Christian community of over 6 million decks homes with nativity scenes and star-shaped lanterns (taras), and celebrates with midnight Mass followed by grand family feasts.

        In cities like Mumbai, Kolkata, and Delhi, Christmas lights and decorations turn shopping districts festive from early December. Santa Claus visits, carol singing at churches and malls, and the exchange of gifts and plum cake cross religious boundaries — making Indian Christmas a genuinely shared celebration.
        """,
                    rituals: [
                        "Attend midnight Mass (Christmas Eve) at churches",
                        "Decorate a Christmas tree with lights, stars, and ornaments",
                        "Exchange gifts and Christmas cards with family and friends",
                        "Sing Christmas carols in neighbourhoods and at churches",
                        "Bake or share Christmas cake, plum cake, or kulkuls (Goan sweets)",
                        "Set up a nativity scene (crib) depicting Jesus's birth"
                    ],
                    funFacts: [
                        "India has the world's 3rd-largest Christmas market in Kolkata — the Park Street area transforms into a festival strip",
                        "Goa's Velhas Conquistas (Old Conquests) region has churches built in 1510 that still hold midnight Mass in Latin",
                        "Kerala's star lanterns (taras) — hung outside every Christian home — are unique to Indian Christmas and not found in Western traditions"
                    ]
                    )
    ]

    // MARK: East
    static let east: [Festival] = [
        Festival(
            id: UUID(uuidString: "00000003-0000-0000-0000-000000000001")!,
            name: "Durga Puja",
            region: .east,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 10, day: 9),
                2025: MonthDay(month: 9, day: 28),
                2026: MonthDay(month: 10, day: 18),
                2027: MonthDay(month: 10, day: 7),
                2028: MonthDay(month: 9, day: 25),
                2029: MonthDay(month: 10, day: 15),
                2030: MonthDay(month: 10, day: 4)
            ]),
            emoji: "🌺",
            colorHex: "7b1fa2",
            tagline: "Bengal's grandest celebration of Goddess Durga",
            importance: """
Durga Puja is the biggest festival of West Bengal and one of the largest religious gatherings in the world. Over five days, communities erect thousands of elaborately themed pandals (temporary temples) housing stunning clay idols of Goddess Durga slaying the demon Mahishasura.

The festival celebrates Durga's victory over Mahishasura and represents the homecoming of Durga (regarded as a daughter of Bengal) with her children — Lakshmi, Saraswati, Kartikeya, and Ganesha — for a brief annual visit before returning to Kailash.

UNESCO recognised Durga Puja as an Intangible Cultural Heritage of Humanity in 2021.
""",
            rituals: [
                "Visit elaborately decorated pandals (community shrines)",
                "Perform Sandhi Puja at the junction of Ashtami and Navami",
                "Dance the Dhunuchi Naach — a trance-like dance with burning incense pots",
                "Apply sindoor (vermilion) during Sindoor Khela on Vijaya Dashami",
                "Immerse Durga idols in rivers on the final day (Visarjan)"
            ],
            funFacts: [
                "Kolkata has over 2,500 Durga Puja pandals during the festival",
                "UNESCO recognised Durga Puja as Intangible Cultural Heritage in 2021",
                "Clay for the idol must include soil from a sex worker's doorstep — a tradition rooted in respect"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000003-0000-0000-0000-000000000002")!,
            name: "Rath Yatra",
            region: .east,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 7, day: 7),
                2025: MonthDay(month: 6, day: 27),
                2026: MonthDay(month: 7, day: 16),
                2027: MonthDay(month: 7, day: 5),
                2028: MonthDay(month: 6, day: 22),
                2029: MonthDay(month: 7, day: 12),
                2030: MonthDay(month: 7, day: 1)
            ]),
            emoji: "🛕",
            colorHex: "5e35b1",
            tagline: "Lord Jagannath's grand chariot procession",
            importance: """
Rath Yatra, the Chariot Festival of Lord Jagannath, is held annually in Puri, Odisha. Massive wooden chariots carry Lord Jagannath, his sister Subhadra, and brother Balabhadra on a 3-kilometre journey to the Gundicha Temple.

Jagannath (Lord of the Universe) steps outside his temple to be accessible to everyone — regardless of caste, creed, or religion — which was revolutionary in medieval India. Pulling the chariot's rope is considered one of the highest spiritual acts.

This tradition is believed to be the origin of the English word 'juggernaut.'
""",
            rituals: [
                "Pull the massive chariot ropes as an act of devotion",
                "Offer Chhappan Bhog — 56 food items — to Lord Jagannath",
                "Watch the Pahandi Vijay — the unique swaying walk of the deity to the chariot",
                "Participate in the nine-day Adapa Mandap festival at Gundicha Temple",
                "Watch the return Rath Yatra (Bahuda Yatra) nine days later"
            ],
            funFacts: [
                "The English word 'juggernaut' comes from 'Jagannath'",
                "The chariot is built fresh every year — never reused",
                "Even the King of Puri sweeps the road with a golden broom as a mark of humility"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000003-0000-0000-0000-000000000003")!,
            name: "Bihu",
            region: .east,
            dateRule: .fixed(month: 4, day: 14),
            emoji: "🌿",
            colorHex: "00695c",
            tagline: "Assam's joyful harvest and New Year festival",
            importance: """
Bihu is the most important festival of Assam, celebrated three times a year. Rongali Bihu (April) is the most festive, marking spring and the Assamese New Year.

The Bihu dance is characterised by rapid hip movements, brisk footwork, and graceful hand gestures — performed to the beat of the dhol (drum), pepa (horn flute), and taal (cymbals). The festival reflects Assam's lush landscape, warm people, and rich cultural identity.

Young men and women dressed in traditional Assamese attire perform together in open fields, celebrating nature's fertility and agricultural renewal.
""",
            rituals: [
                "Perform the Bihu dance in groups",
                "Play the pepa (buffalo horn flute) and dhol (drum)",
                "Prepare traditional Assamese food: pitha, laru, and jolpan",
                "Exchange Bihu gifts: traditional gamosa (woven cloth)"
            ],
            funFacts: [
                "The Bihu dance was performed by indigenous tribes in open fields",
                "The pepa flute is made from a buffalo horn — unique to Assamese music",
                "Over 11,000 dancers performed Bihu simultaneously in Guwahati in 2023"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000003-0000-0000-0000-000000000004")!,
            name: "Chhath Puja",
            region: .east,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 11, day: 7),
                2025: MonthDay(month: 10, day: 28),
                2026: MonthDay(month: 11, day: 16),
                2027: MonthDay(month: 11, day: 5),
                2028: MonthDay(month: 10, day: 24),
                2029: MonthDay(month: 11, day: 13),
                2030: MonthDay(month: 11, day: 2)
            ]),
            emoji: "🌅",
            colorHex: "e65100",
            tagline: "Worshipping the sun god at dawn and dusk",
            importance: """
Chhath Puja is one of the most ancient and scientifically grounded festivals in the Hindu calendar, primarily celebrated in Bihar, Jharkhand, and eastern Uttar Pradesh. It is a four-day festival dedicated entirely to the sun god (Surya).

Unlike most Hindu festivals that are priest-led, Chhath is entirely performed by the devotees themselves without any priestly intermediary — making it one of the most egalitarian of Hindu festivals.

The beauty of thousands of devotees standing in flowing rivers with brass thalis full of fruits, bathed in golden sunrise light, is one of the most breathtaking sights in Indian culture.
""",
            rituals: [
                "Observe a 36-hour continuous fast without food or water",
                "Take ritual bath in the river on each day of the puja",
                "Offer arghya (water) to the setting sun on Sandhya Arghya",
                "Offer arghya to the rising sun the next morning — Usha Arghya",
                "Present thekua, fruits, sugarcane, and coconut as prasad",
                "Sing Chhath folk songs (Chhath geet) throughout"
            ],
            funFacts: [
                "Chhath is the only Hindu festival where the setting sun is also worshipped",
                "The festival has no priestly class involved — entirely community-led",
                "Standing in water at sunrise during Chhath is said to boost Vitamin D absorption"
            ]
        )
    ]

    // MARK: West
    static let west: [Festival] = [
        Festival(
            id: UUID(uuidString: "00000004-0000-0000-0000-000000000001")!,
            name: "Ganesh Chaturthi",
            region: .west,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 9, day: 7),
                2025: MonthDay(month: 8, day: 27),
                2026: MonthDay(month: 9, day: 14),
                2027: MonthDay(month: 9, day: 4),
                2028: MonthDay(month: 8, day: 23),
                2029: MonthDay(month: 9, day: 11),
                2030: MonthDay(month: 9, day: 1)
            ]),
            emoji: "🐘",
            colorHex: "f57f17",
            tagline: "Maharashtra's beloved festival of Lord Ganesha",
            importance: """
Ganesh Chaturthi is the grandest festival of Maharashtra, marking the birth of Lord Ganesha — the remover of obstacles and god of new beginnings. The festival spans 10 days, culminating in Ganesh Visarjan.

The festival was transformed into a major public event in 1893 by freedom fighter Bal Gangadhar Tilak, who used communal celebrations to unite Indians against British colonial rule — making it unique for its blend of devotion and democratic history.

The festival culminates in Ganesh Visarjan, where clay idols are carried in massive processions to be immersed in the sea, symbolising Ganesha's return to his heavenly abode.
""",
            rituals: [
                "Install a clay Ganesh idol at home or in community pandals",
                "Perform morning and evening aarti with 21 durva grass blades and modaks",
                "Offer modak (sweet rice flour dumpling) — Ganesha's favourite",
                "Listen to Ganesh Atharvashirsha recitations",
                "Celebrate Ganesh Visarjan with music, dance, and procession on Day 10"
            ],
            funFacts: [
                "Lalbaugcha Raja in Mumbai has a queue of over 5 km — devotees wait up to 20 hours",
                "Bal Gangadhar Tilak used this festival as a tool of unity against British rule",
                "Only eco-friendly clay idols that dissolve in water are encouraged"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000004-0000-0000-0000-000000000002")!,
            name: "Gudi Padwa",
            region: .west,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 4, day: 9),
                2025: MonthDay(month: 3, day: 30),
                2026: MonthDay(month: 3, day: 19),
                2027: MonthDay(month: 4, day: 7),
                2028: MonthDay(month: 3, day: 26),
                2029: MonthDay(month: 4, day: 14),
                2030: MonthDay(month: 4, day: 3)
            ]),
            emoji: "🪅",
            colorHex: "c62828",
            tagline: "Marathi New Year and victory celebration",
            importance: """
Gudi Padwa marks the beginning of the new year for the Marathi community of Maharashtra and Goa. It celebrates Lord Rama's return to Ayodhya, Emperor Shivaji's victories, and the start of spring.

The most distinctive ritual is the erecting of the Gudi outside homes — a bamboo pole topped with an upturned copper or silver pot, adorned with neem leaves, mango leaves, marigold garlands, and a bright silk cloth. This Gudi represents victory, good fortune, and the presence of the divine.

The name comes from 'Gudi' (a flag or pole) and 'Padwa' (the first day of a lunar fortnight).
""",
            rituals: [
                "Erect a Gudi (decorated bamboo pole with upturned pot) outside the home at sunrise",
                "Decorate the entrance with fresh mango and neem leaf torans",
                "Draw rangoli at the doorstep with vibrant colours",
                "Eat neem leaves with jaggery — representing life's bitter-sweet nature",
                "Cook puran poli (sweet lentil flatbread) as the festival delicacy"
            ],
            funFacts: [
                "The upturned pot on the Gudi represents the victory flag of Chhatrapati Shivaji",
                "Neem leaves eaten on Gudi Padwa have medicinal properties that boost immunity",
                "Gudi Padwa marks the start of the wedding season in Maharashtra"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000004-0000-0000-0000-000000000003")!,
            name: "Navratri (Garba)",
            region: .west,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 10, day: 3),
                2025: MonthDay(month: 9, day: 22),
                2026: MonthDay(month: 10, day: 12),
                2027: MonthDay(month: 10, day: 1),
                2028: MonthDay(month: 9, day: 19),
                2029: MonthDay(month: 10, day: 9),
                2030: MonthDay(month: 9, day: 28)
            ]),
            emoji: "💃",
            colorHex: "6a1b9a",
            tagline: "Nine nights of divine dance for Goddess Durga",
            importance: """
Navratri — meaning 'nine nights' — is celebrated four times a year, but the Sharad Navratri (autumn) is the most celebrated, particularly in Gujarat where it transforms into the world's longest dance festival. UNESCO recognised Garba as an Intangible Cultural Heritage of Humanity in 2023.

Each of the nine nights honours one of the nine forms of Goddess Durga. In Gujarat, thousands gather in open grounds wearing dazzling traditional attire, dancing Garba and Dandiya Raas through the night.

The Garba dance is performed around a clay pot with a lit lamp (the Garba lamp), a whirling, rhythmic folk dance of deep spiritual and cultural significance.
""",
            rituals: [
                "Fast during the day and break fast with specific allowed foods",
                "Perform daily Durga puja honouring a different form each day",
                "Dance Garba in a circle around the Garba lamp from dusk to dawn",
                "Play Dandiya Raas — the colourful stick dance on later nights",
                "Dress in specific colours each day — each colour has significance"
            ],
            funFacts: [
                "Gujarat's Navratri holds a Guinness World Record for the world's largest dance",
                "UNESCO recognised Garba as Intangible Cultural Heritage in 2023",
                "The nine colours of Navratri represent the nine forms of Durga"
            ]
        )
    ]

    // MARK: Pan India
    static let panIndia: [Festival] = [
        Festival(
            id: UUID(uuidString: "00000005-0000-0000-0000-000000000001")!,
            name: "Diwali",
            region: .panIndia,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 11, day: 1),
                2025: MonthDay(month: 10, day: 20),
                2026: MonthDay(month: 11, day: 8),
                2027: MonthDay(month: 10, day: 29),
                2028: MonthDay(month: 10, day: 17),
                2029: MonthDay(month: 11, day: 5),
                2030: MonthDay(month: 10, day: 26)
            ]),
            emoji: "🪔",
            colorHex: "f57f17",
            tagline: "India's Festival of Lights — joy, prosperity, and triumph",
            importance: """
Diwali — the Festival of Lights — is the most celebrated festival across India, observed by Hindus, Jains, Sikhs, and even some Buddhists. The word 'Deepavali' means 'row of lights' and for five days India transforms into a galaxy of oil lamps, candles, and fireworks.

For Hindus, Diwali primarily celebrates Lord Rama's return to Ayodhya after 14 years of exile. For Jains, it marks the day Mahavira attained moksha. For Sikhs, it is Bandi Chhor Divas, commemorating Guru Hargobind's release from imprisonment.

Diwali is also the most important business festival in India — accounts are reset and new financial years begin.
""",
            rituals: [
                "Clean and decorate the home — invite Lakshmi with light",
                "Light diyas (oil lamps) in every room and outside the home",
                "Draw rangoli patterns at the entrance with vibrant colours",
                "Perform Lakshmi Puja on the main Diwali night",
                "Share and exchange sweets and dry fruits with neighbours",
                "Give Diwali gifts and bonuses to employees and loved ones"
            ],
            funFacts: [
                "Diwali is visible from space — satellites photograph the subcontinent glowing",
                "It is the most important shopping season in India, comparable to Christmas in the West",
                "Over a billion people across 17 countries celebrate Diwali in some form"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000005-0000-0000-0000-000000000002")!,
            name: "Holi",
            region: .panIndia,
            dateRule: .lunisolar(knownDates: [
                2024: MonthDay(month: 3, day: 25),
                2025: MonthDay(month: 3, day: 14),
                2026: MonthDay(month: 3, day: 3),
                2027: MonthDay(month: 3, day: 22),
                2028: MonthDay(month: 3, day: 11),
                2029: MonthDay(month: 3, day: 1),
                2030: MonthDay(month: 3, day: 19)
            ]),
            emoji: "🎨",
            colorHex: "9c27b0",
            tagline: "The festival of colours, love, and spring",
            importance: """
Holi is India's most exuberant festival — a joyous explosion of colour signalling the arrival of spring. Celebrated on the full moon of the Hindu month of Phalgun (March), it is observed across the entire country.

The story of Prahlad, the devoted boy who survived a bonfire while his aunt Holika burned, is at the heart of the festival. The night before Holi, Holika Dahan (bonfire) commemorates this triumph of devotion over arrogance.

The next morning, barriers of age, gender, caste, and status dissolve as everyone throws coloured powder (gulal) and water on each other — Holi is the one day when India's social hierarchies are happily forgotten.
""",
            rituals: [
                "Light the Holika Dahan bonfire the night before and circle it",
                "Play with dry gulal (coloured powder) and water balloons",
                "Drink thandai (a spiced milk drink, sometimes with bhang)",
                "Eat gujiya (sweet fried dumplings filled with khoya)",
                "Perform Lathmar Holi in Barsana — women playfully beat men with sticks"
            ],
            funFacts: [
                "Lathmar Holi re-enacts the playful teasing between Krishna and Radha",
                "The colours traditionally came from flowers like tesu (flame of the forest)",
                "Holi is the only day it's socially acceptable to smear colour on strangers"
            ]
        ),
        Festival(
            id: UUID(uuidString: "00000005-0000-0000-0000-000000000003")!,
            name: "Makar Sankranti",
            region: .panIndia,
            dateRule: .fixed(month: 1, day: 14),
            emoji: "🪁",
            colorHex: "0277bd",
            tagline: "Sun's northward journey — kites, harvest, and new beginnings",
            importance: """
Makar Sankranti follows the solar calendar, always falling on January 14. It marks the sun's transition into Capricorn (Makar Rashi) and the beginning of Uttarayan — the sun's northward journey.

In different regions it is known by different names: Pongal in Tamil Nadu, Lohri in Punjab, Uttarayan in Gujarat, and Magh Bihu in Assam — but all share the theme of gratitude for the harvest and the return of warmth.

Gujarat transforms into a magical spectacle: the entire sky fills with thousands of colourful kites as people compete in kite-flying battles (patang baazi).
""",
            rituals: [
                "Fly kites all day — kite battles (patang baazi) in Gujarat",
                "Eat til-gur (sesame and jaggery) ladoos — distributed to everyone",
                "Take a ritual dip in sacred rivers, especially the Sangam at Prayagraj",
                "Cook khichdi (rice and lentils) and donate it to the needy",
                "Feed birds — especially crows — as an offering"
            ],
            funFacts: [
                "The International Kite Festival in Ahmedabad attracts kite flyers from 40+ countries",
                "A Guinness World Record kite was flown in India during Uttarayan",
                "Ancient texts describe Bhishma Pitamah choosing to die on Makar Sankranti"
            ]
        )
    ]
}
