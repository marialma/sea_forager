# sea_forager
when is a good time to sea forage?

This is a function that takes a look at the http://tide-forecast.com and sunset/sunrise times to help you find a good time to go forage. Only works for california right now, unless you want to edit in your locations to `locations.R`

Usage: 

`find_tide()`
* `location` the default is "Monterey-Monterey-Harbor-California". This needs to be formatted the same way that tide-forecast.com does it. Your options are: 
     * `Alameda-Creek-San-Francisco-Bay-California ` : Alameda Creek, San Francisco Bay 
    * `Alameda-Naval-Air-Station-San-Francisco-Bay-California ` : Alameda Naval Air Station, San Francisco Bay 
    * `Alameda-San-Francisco-Bay-California ` : Alameda, San Francisco Bay 
    * `Albion-California ` : Albion 
    * `Alcatraz-Island-San-Francisco-Bay-California ` : Alcatraz Island, San Francisco Bay 
    * `Angel-Island-west-side-San-Francisco-Bay-California ` : Angel Island (west side), San Francisco Bay 
    * `Angel-Island-East-Garrison-San-Francisco-Bay-California ` : Angel Island, East Garrison, San Francisco Bay 
    * `Ano-Nuevo-Island-California ` : Ano Nuevo Island 
    * `Antioch-San-Joaquin-River-California ` : Antioch, San Joaquin River 
    * `Arcata-Wharf-Humboldt-Bay-California ` : Arcata Wharf, Humboldt Bay 
    * `Arena-Cove-California ` : Arena Cove 
    * `Avalon-Santa-Catalina-Island-California ` : Avalon, Santa Catalina Island 
    * `Avila-California ` : Avila 
    * `Balboa-Pier-Newport-Beach-California ` : Balboa Pier, Newport Beach 
    * `Bay-Slough-east-end-San-Francisco-Bay-California ` : Bay Slough, east end, San Francisco Bay 
    * `Bay-Slough-west-end-San-Francisco-Bay-California ` : Bay Slough, west end, San Francisco Bay 
    * `Bechers-Bay-Santa-Rosa-Island-California ` : Bechers Bay, Santa Rosa Island 
    * `Belmont-1 ` : Belmont 
    * `Benicia-Carquinez-Strait-California ` : Benicia, Carquinez Strait 
    * `Berkeley-California ` : Berkeley 
    * `Bishop-Cut-Disappointment-Slough-San-Joaquin-River-California ` : Bishop Cut, Disappointment Slough, San Joaquin River 
    * `Blackslough-Landing-San-Joaquin-River-California ` : Blackslough Landing, San Joaquin River 
    * `Blakes-Landing-Tomales-Bay-California ` : Blakes Landing, Tomales Bay 
    * `Bodega-Harbor-entrance-California ` : Bodega Harbor entrance 
    * `Bolinas-Lagoon-California ` : Bolinas Lagoon 
    * `Borden-Highway-Bridge-Middle-River-San-Joaquin-River-California ` : Borden Highway Bridge, Middle River, San Joaquin River 
    * `Borden-Highway-Bridge-Old-River-San-Joaquin-River-California ` : Borden Highway Bridge, Old River, San Joaquin River 
    * `Borden-Highway-Bridge-San-Joaquin-River-San-Joaquin-River-California ` : Borden Highway Bridge, San Joaquin River, San Joaquin River 
    * `Bradmoor-Island-Nurse-Slough-Suisun-Bay-California ` : Bradmoor Island, Nurse Slough, Suisun Bay 
    * `Brazos-Drawbridge-Napa-River-Carquinez-Strait-California ` : Brazos Drawbridge, Napa River, Carquinez Strait 
    * `Bucksport-Humboldt-Bay-California ` : Bucksport, Humboldt Bay 
    * `Burlingame ` : Burlingame 
    * `Cabrillo-Beach-California ` : Cabrillo Beach 
    * `Calaveras-Point-west-of-San-Francisco-Bay-California ` : Calaveras Point, west of, San Francisco Bay 
    * `Cape-Mendocino-California ` : Cape Mendocino 
    * `Carlsbad ` : Carlsbad 
    * `Carmel-Cove-Carmel-Bay-California ` : Carmel Cove, Carmel Bay 
    * `Carpinteria ` : Carpinteria 
    * `Catalina-Harbor-California ` : Catalina Harbor 
    * `Chula-Vista ` : Chula Vista 
    * `Clarksburg-number-4-Sacramento-River-California ` : Clarksburg #4, Sacramento River 
    * `Collinsville-Sacramento-River-California ` : Collinsville, Sacramento River 
    * `Corkscrew-Slough-San-Francisco-Bay-California ` : Corkscrew Slough, San Francisco Bay 
    * `Corte-Madera-Creek-San-Francisco-Bay-California ` : Corte Madera Creek, San Francisco Bay 
    * `Coyote-Creek-Alviso-Slough-San-Francisco-Bay-California ` : Coyote Creek, Alviso Slough, San Francisco Bay 
    * `Coyote-Creek-Tributary-number-1-San-Francisco-Bay-California ` : Coyote Creek, Tributary #1, San Francisco Bay 
    * `Coyote-Hills-Slough-entrance-San-Francisco-Bay-California ` : Coyote Hills Slough entrance, San Francisco Bay 
    * `Coyote-Point-Marina-San-Francisco-Bay-California ` : Coyote Point Marina, San Francisco Bay 
    * `Crescent-City-California ` : Crescent City 
    * `Crockett-Carquinez-Strait-California ` : Crockett, Carquinez Strait 
    * `Crown-Point-Mission-Bay-California ` : Crown Point, Mission Bay 
    * `Cuyler-Harbor-San-Miguel-Island-California ` : Cuyler Harbor, San Miguel Island 
    * `Daly-City ` : Daly City 
    * `Dana-Point ` : Dana Point 
    * `Davis-Slough-San-Joaquin-River-California ` : Davis Slough, San Joaquin River 
    * `Dumbarton-Bridge-San-Francisco-Bay-California ` : Dumbarton Bridge, San Francisco Bay 
    * `East-Palo-Alto ` : East Palo Alto 
    * `Edgerley-Island-Napa-River-Carquinez-Strait-California ` : Edgerley Island, Napa River, Carquinez Strait 
    * `Eel-River-entrance-California ` : Eel River entrance 
    * `El-Segundo-Santa-Monica-Bay-California ` : El Segundo, Santa Monica Bay 
    * `El-Sobrante ` : El Sobrante 
    * `Elk-River-Railroad-Bridge-number-18-Humboldt-Bay-California ` : Elk River Railroad Bridge #18, Humboldt Bay 
    * `Elkhorn-California ` : Elkhorn 
    * `Elkhorn-Slough-railroad-bridge-California ` : Elkhorn Slough railroad bridge 
    * `Elkhorn-Slough-Highway-1-Bridge-California ` : Elkhorn Slough, Highway 1 Bridge 
    * `Elkhorn-Slough-Highway-1-Bridge-Monterey-Bay-California ` : Elkhorn Slough, Highway 1 Bridge, Monterey Bay 
    * `Elkhorn-Yacht-Club-California ` : Elkhorn Yacht Club 
    * `Eureka-California ` : Eureka 
    * `Eureka-Slough-Bridge-Humboldt-Bay-California ` : Eureka Slough Bridge, Humboldt Bay 
    * `Eureka-Humboldt-Bay-California ` : Eureka, Humboldt Bay 
    * `False-River-San-Joaquin-River-California ` : False River, San Joaquin River 
    * `Fields-Landing-Humboldt-Bay-California ` : Fields Landing, Humboldt Bay 
    * `Fort-Bragg-Landing-California ` : Fort Bragg Landing 
    * `Fort-Ross-California ` : Fort Ross 
    * `Gallinas-Creek-San-Pablo-Bay-California ` : Gallinas Creek, San Pablo Bay 
    * `Gaviota-California ` : Gaviota 
    * `General-Fish-Company-Pier-California ` : General Fish Company Pier 
    * `General-Fish-Company-Pier-Moss-Landing-California ` : General Fish Company Pier, Moss Landing (sub) 
    * `Georgiana-Slough-entrance-Mokelumne-River-California ` : Georgiana Slough entrance, Mokelumne River 
    * `Gold-Street-Bridge-Alviso-Slough-San-Francisco-Bay-California ` : Gold Street Bridge, Alviso Slough, San Francisco Bay 
    * `Goleta ` : Goleta 
    * `Granite-Rock-Redwood-Creek-San-Francisco-Bay-California ` : Granite Rock, Redwood Creek, San Francisco Bay 
    * `Grant-Line-Canal-drawbridge-Old-River-California ` : Grant Line Canal (drawbridge), Old River 
    * `Grover-Beach ` : Grover Beach 
    * `Half-Moon-Bay-California ` : Half Moon Bay 
    * `Hayward ` : Hayward 
    * `Hercules-Refugio-Landing-San-Pablo-Bay-California ` : Hercules, Refugio Landing, San Pablo Bay 
    * `Hog-Island-San-Antonio-Creek-San-Pablo-Bay-California ` : Hog Island, San Antonio Creek, San Pablo Bay 
    * `Holt-Whiskey-Slough-San-Joaquin-River-California ` : Holt, Whiskey Slough, San Joaquin River 
    * `Hookton-Slough-Humboldt-Bay-California ` : Hookton Slough, Humboldt Bay 
    * `Humboldt-Bay-Entrance-California ` : Humboldt Bay Entrance 
    * `Humboldt-Bay-North-Spit-California ` : Humboldt Bay, North Spit 
    * `Hunters-Point-San-Francisco-Bay-California ` : Hunters Point, San Francisco Bay 
    * `Huntington-Beach ` : Huntington Beach 
    * `Imperial-Beach-California ` : Imperial Beach 
    * `Inverness-Tomales-Bay-California ` : Inverness, Tomales Bay 
    * `Irish-Landing-Sand-Mound-Slough-San-Joaquin-River-California ` : Irish Landing, Sand Mound Slough, San Joaquin River 
    * `Isla-Vista ` : Isla Vista 
    * `Joice-Island-Suisun-Slough-Suisun-Bay-California ` : Joice Island, Suisun Slough, Suisun Bay 
    * `King-Harbor-Santa-Monica-Bay-California ` : King Harbor, Santa Monica Bay 
    * `Kirby-Park-Elkhorn-Slough-California ` : Kirby Park, Elkhorn Slough 
    * `La-Jolla-Scripps-Pier-California ` : La Jolla, Scripps Pier 
    * `Laguna-Beach ` : Laguna Beach 
    * `Laguna-Niguel ` : Laguna Niguel 
    * `Lakeville-Petaluma-River-San-Pablo-Bay-California ` : Lakeville, Petaluma River, San Pablo Bay 
    * `Live-Oak ` : Live Oak 
    * `Lomita ` : Lomita 
    * `Long-Beach-Inner-Harbor-California ` : Long Beach, Inner Harbor 
    * `Long-Beach-Middle-Harbor-California ` : Long Beach, Middle Harbor 
    * `Long-Beach-Outer-Harbor-Pier-A-California ` : Long Beach, Outer Harbor, Pier A 
    * `Long-Beach-Terminal-Island-California ` : Long Beach, Terminal Island 
    * `Los-Angeles-California ` : Los Angeles 
    * `Los-Angeles-outer-harbor-California ` : Los Angeles (outer harbor) 
    * `Los-Angeles-Harbor-Mormon-Island-California ` : Los Angeles Harbor, Mormon Island 
    * `Los-Patos-highway-bridge-California ` : Los Patos (highway bridge) 
    * `Mad-River-Slough-Arcata-Bay-Humboldt-Bay-California ` : Mad River Slough, Arcata Bay, Humboldt Bay 
    * `Malibu ` : Malibu 
    * `Malibu-Beach ` : Malibu Beach 
    * `Mallard-Island-Ferry-Wharf-Suisun-Bay-California ` : Mallard Island Ferry Wharf, Suisun Bay 
    * `Manhattan-Beach ` : Manhattan Beach 
    * `Mare-Island-Naval-Shipyard-California ` : Mare Island, Naval Shipyard 
    * `Marina ` : Marina 
    * `Marshall-Tomales-Bay-California ` : Marshall, Tomales Bay 
    * `McKinleyville ` : McKinleyville 
    * `Meins-Landing-Montezuma-Slough-Suisun-Bay-California ` : Meins Landing, Montezuma Slough, Suisun Bay 
    * `Mendocino-Mendocino-Bay-California ` : Mendocino, Mendocino Bay 
    * `Mill-Valley ` : Mill Valley 
    * `Montecito ` : Montecito 
    * `Monterey-Monterey-Harbor-California ` : Monterey, Monterey Harbor 
    * `Montezuma-Slough-Bridge-Suisun-Bay-California ` : Montezuma Slough Bridge, Suisun Bay 
    * `Montezuma-Slough-Suisun-Bay-California ` : Montezuma Slough, Suisun Bay 
    * `Morro-Bay-California ` : Morro Bay 
    * `Morro-Beach-Estero-Bay-California ` : Morro Beach, Estero Bay 
    * `Moss-Landing-California ` : Moss Landing 
    * `Mowry-Slough-San-Francisco-Bay-California ` : Mowry Slough, San Francisco Bay 
    * `Mugu-Lagoon-ocean-pier-California ` : Mugu Lagoon (ocean pier) 
    * `Napa-Napa-River-Carquinez-Strait-California ` : Napa, Napa River, Carquinez Strait 
    * `National-City-San-Diego-Bay-California ` : National City, San Diego Bay 
    * `New-Hope-Bridge-number-4-San-Joaquin-River-California ` : New Hope Bridge #4, San Joaquin River 
    * `New-Hope-Bridge-Mokelumne-River-California ` : New Hope Bridge, Mokelumne River 
    * `Newark-Slough-San-Francisco-Bay-California ` : Newark Slough, San Francisco Bay 
    * `Newport-Bay-Entrance-California ` : Newport Bay Entrance 
    * `Newport-Bay-Entrance-Corona-del-Mar-California-2 ` : Newport Bay Entrance, Corona del Mar (2) 
    * `North-Point-Pier-41-San-Francisco-Bay-California ` : North Point, Pier 41, San Francisco Bay 
    * `Noyo-River-California ` : Noyo River 
    * `Oakland-California ` : Oakland 
    * `Oakland-Airport-San-Francisco-Bay-California ` : Oakland Airport, San Francisco Bay 
    * `Oakland-Harbor-Grove-Street-San-Francisco-Bay-California ` : Oakland Harbor, Grove Street, San Francisco Bay 
    * `Oakland-Harbor-Park-Street-Bridge-San-Francisco-Bay-California ` : Oakland Harbor, Park Street Bridge, San Francisco Bay 
    * `Oakland-Inner-Harbor-San-Francisco-Bay-California ` : Oakland Inner Harbor, San Francisco Bay 
    * `Oakland-Middle-Harbor-San-Francisco-Bay-California ` : Oakland Middle Harbor, San Francisco Bay 
    * `Oakland-Pier-San-Francisco-Bay-California ` : Oakland Pier, San Francisco Bay 
    * `Oakland-Matson-Wharf-San-Francisco-Bay-California ` : Oakland, Matson Wharf, San Francisco Bay 
    * `Ocean-Beach-California ` : Ocean Beach 
    * `Ocean-Beach-outer-coast-California ` : Ocean Beach, outer coast 
    * `Oceanside ` : Oceanside 
    * `Oil-Platform-Harvest-Topex-Project-California ` : Oil Platform Harvest (Topex Project) 
    * `Orwood-Old-River-San-Joaquin-River-California ` : Orwood, Old River, San Joaquin River 
    * `Oxnard ` : Oxnard 
    * `Oxnard-Shores ` : Oxnard Shores 
    * `Oyster-Point-Marina-San-Francisco-Bay-California ` : Oyster Point Marina, San Francisco Bay 
    * `Pacific-Mariculture-Dock-Elkhorn-Slough-California ` : Pacific Mariculture Dock, Elkhorn Slough 
    * `Pacifica ` : Pacifica 
    * `Palo-Alto-Yacht-Harbor-California ` : Palo Alto Yacht Harbor 
    * `Palos-Verdes-Estates ` : Palos Verdes Estates 
    * `Petaluma-River-entrance-San-Pablo-Bay-California ` : Petaluma River entrance, San Pablo Bay 
    * `Pierce-Harbor-Goodyear-Slough-Suisun-Bay-California ` : Pierce Harbor, Goodyear Slough, Suisun Bay 
    * `Pinole-Point-San-Pablo-Bay-California ` : Pinole Point, San Pablo Bay 
    * `Pittsburg-New-York-Slough-Suisun-Bay-California ` : Pittsburg Slough, Suisun Bay 
    * `Point-Arena-California ` : Point Arena 
    * `Point-Arguello-California ` : Point Arguello 
    * `Point-Bonita-Bonita-Cove-San-Francisco-Bay-California ` : Point Bonita, Bonita Cove, San Francisco Bay 
    * `Point-Buckler-Suisun-Bay-California ` : Point Buckler, Suisun Bay 
    * `Point-Chauncey-San-Francisco-Bay-California ` : Point Chauncey, San Francisco Bay 
    * `Point-Isabel-San-Francisco-Bay-California ` : Point Isabel, San Francisco Bay 
    * `Point-Loma-California ` : Point Loma 
    * `Point-Orient-San-Francisco-Bay-California ` : Point Orient, San Francisco Bay 
    * `Point-Reyes-California ` : Point Reyes 
    * `Point-San-Bruno-San-Francisco-Bay-California ` : Point San Bruno, San Francisco Bay 
    * `Point-San-Pedro-San-Pablo-Bay-California ` : Point San Pedro, San Pablo Bay 
    * `Point-San-Quentin-San-Francisco-Bay-California ` : Point San Quentin, San Francisco Bay 
    * `Port-Chicago-Suisun-Bay-California ` : Port Chicago, Suisun Bay 
    * `Port-Hueneme-California ` : Port Hueneme 
    * `Port-San-Luis-California ` : Port San Luis 
    * `Potrero-Point-San-Francisco-Bay-California ` : Potrero Point, San Francisco Bay 
    * `Prisoners-Harbor-Santa-Cruz-Island-California ` : Prisoners Harbor, Santa Cruz Island 
    * `Prisoners-Point-San-Joaquin-River-California ` : Prisoners Point, San Joaquin River 
    * `Quivira-Basin-Mission-Bay-California ` : Quivira Basin, Mission Bay 
    * `Rancho-Palos-Verdes ` : Rancho Palos Verdes 
    * `Redwood-City-Wharf-5-California ` : Redwood City, Wharf 5 
    * `Redwood-Creek-entrance-inside-San-Francisco-Bay-California ` : Redwood Creek entrance (inside), San Francisco Bay 
    * `Redwood-Creek-CM-number8-San-Francisco-Bay-California ` : Redwood Creek, C.M. number8, San Francisco Bay 
    * `Reynolds-Tomales-Bay-California ` : Reynolds, Tomales Bay 
    * `Richmond-California ` : Richmond 
    * `Richmond-Inner-Harbor-San-Francisco-Bay-California ` : Richmond Inner Harbor, San Francisco Bay 
    * `Richmond-Chevron-Oil-Pier-California ` : Richmond, Chevron Oil Pier 
    * `Rincon-Island-California ` : Rincon Island 
    * `Rincon-Island-Mussel-Shoals-California ` : Rincon Island, Mussel Shoals 
    * `Rio-Vista-Sacramento-River-California ` : Rio Vista, Sacramento River 
    * `Roberts-Landing-1point3-miles-west-of-San-Francisco-Bay-California ` : Roberts Landing, 1.3 miles west of, San Francisco Bay 
    * `Sacramento-number-4-Sacramento-River-California ` : Sacramento #4, Sacramento River 
    * `Samoa-Humboldt-Bay-California ` : Samoa, Humboldt Bay 
    * `San-Clemente-California ` : San Clemente 
    * `San-Diego-California ` : San Diego 
    * `San-Diego-Quarantine-Station-California ` : San Diego, Quarantine Station 
    * `San-Francisco ` : San Francisco 
    * `San-Francisco-California ` : San Francisco 
    * `San-Francisco-Bar-California ` : San Francisco Bar 
    * `San-Francisco-Pier-22-1-2-California ` : San Francisco, Pier 22 1/2 
    * `San-Leandro ` : San Leandro 
    * `San-Leandro-Channel-San-Leandro-Bay-San-Francisco-Bay-California ` : San Leandro Channel, San Leandro Bay, San Francisco Bay 
    * `San-Leandro-Marina-San-Francisco-Bay-California ` : San Leandro Marina, San Francisco Bay 
    * `San-Lorenzo-6 ` : San Lorenzo 
    * `San-Mateo-Bridge-East-California ` : San Mateo Bridge (East) 
    * `San-Mateo-Bridge-West-California ` : San Mateo Bridge (West) 
    * `San-Nicolas-Island-California ` : San Nicolas Island 
    * `San-Pablo-2 ` : San Pablo 
    * `San-Simeon-California ` : San Simeon 
    * `Santa-Ana-River-entrance-inside-California ` : Santa Ana River entrance (inside) 
    * `Santa-Barbara-California ` : Santa Barbara 
    * `Santa-Barbara-Island-California ` : Santa Barbara Island 
    * `Santa-Cruz-California ` : Santa Cruz 
    * `Santa-Monica-California ` : Santa Monica 
    * `Sausalito-California ` : Sausalito 
    * `Sausalito-Corps-of-Engineers-Dock-San-Francisco-Bay-California ` : Sausalito, Corps of Engineers Dock, San Francisco Bay 
    * `Seal-Beach ` : Seal Beach 
    * `Seaplane-Harbor-San-Francisco-Bay-California ` : Seaplane Harbor, San Francisco Bay 
    * `Selby-Carquinez-Strait-California ` : Selby, Carquinez Strait 
    * `Shelter-Cove-California ` : Shelter Cove 
    * `Smith-Slough-San-Francisco-Bay-California ` : Smith Slough, San Francisco Bay 
    * `Snodgrass-Slough-Sacramento-River-California ` : Snodgrass Slough, Sacramento River 
    * `Solana-Beach ` : Solana Beach 
    * `Sonoma-Creek-San-Pablo-Bay-California ` : Sonoma Creek, San Pablo Bay 
    * `South-Bay-Wreck-San-Francisco-Bay-California ` : South Bay Wreck, San Francisco Bay 
    * `South-San-Francisco-San-Francisco-Bay-California ` : South San Francisco, San Francisco Bay 
    * `Southeast-Farallon-Island-California ` : Southeast Farallon Island 
    * `Steamboat-Slough-Snug-Harbor-Marina-Sacramento-River-California ` : Steamboat Slough, Snug Harbor Marina, Sacramento River 
    * `Stockton-California ` : Stockton 
    * `Suisun-City-Suisun-Slough-Suisun-Bay-California ` : Suisun City, Suisun Slough, Suisun Bay 
    * `Suisun-Point-California ` : Suisun Point 
    * `Suisun-Point-Carquinez-Strait-California ` : Suisun Point, Carquinez Strait 
    * `Suisun-Slough-entrance-Suisun-Bay-California ` : Suisun Slough entrance, Suisun Bay 
    * `Terminous-South-Fork-Mokelumne-River-California ` : Terminous, South Fork, Mokelumne River 
    * `Threemile-Slough-Entrance-San-Joaquin-River-California ` : Threemile Slough Entrance, San Joaquin River 
    * `Threemile-Slough-Sacramento-River-California ` : Threemile Slough, Sacramento River 
    * `Tomales-Bay-Entrance-California ` : Tomales Bay Entrance 
    * `Trinidad-Harbor-California ` : Trinidad Harbor 
    * `Upper-drawbridge-Petaluma-River-San-Pablo-Bay-California ` : Upper drawbridge, Petaluma River, San Pablo Bay 
    * `Upper-Guadalupe-Slough-San-Francisco-Bay-California ` : Upper Guadalupe Slough, San Francisco Bay 
    * `Vallejo-Mare-Island-Strait-California ` : Vallejo, Mare Island Strait 
    * `Vallejo-Mare-Island-Strait-Carquinez-Strait-California ` : Vallejo, Mare Island Strait, Carquinez Strait 
    * `Ventura-California ` : Ventura 
    * `Wards-Island-Little-Connection-Slough-San-Joaquin-River-California ` : Wards Island, Little Connection Slough, San Joaquin River 
    * `West-Point-Slough-San-Francisco-Bay-California ` : West Point Slough, San Francisco Bay 
    * `Westport-California ` : Westport 
    * `Wilson-Cove-San-Clemente-Island-California ` : Wilson Cove, San Clemente Island 
    * `Wingo-Sonoma-Creek-San-Pablo-Bay-California ` : Wingo, Sonoma Creek, San Pablo Bay 
    * `Yerba-Buena-Island-San-Francisco-Bay-California ` : Yerba Buena Island, San Francisco Bay 
