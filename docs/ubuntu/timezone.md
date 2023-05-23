# tzselect
```
❯ tzselect
Please identify a location so that time zone rules can be set correctly.
Please select a continent, ocean, "coord", or "TZ".
1) Africa                                                            4) Asia                                                             7) Europe                                                          10) coord - I want to use geographical coordinates.
2) Americas                                                          5) Atlantic Ocean                                                   8) Indian Ocean                                                    11) TZ - I want to specify the timezone using the Posix TZ format.
3) Antarctica                                                        6) Australia                                                        9) Pacific Ocean
#? 4
Please select a country whose clocks agree with yours.
1) Afghanistan                6) Bangladesh               11) Christmas Island         16) Georgia                  21) Iraq                     26) Korea (North)            31) Lebanon                  36) Nepal                    41) Qatar                    46) Singapore                51) Thailand                 56) Yemen
2) Antarctica                 7) Bhutan                   12) Cocos (Keeling) Islands  17) Hong Kong                22) Israel                   27) Korea (South)            32) Macau                    37) Oman                     42) Russia                   47) Sri Lanka                52) Turkmenistan
3) Armenia                    8) Brunei                   13) Cyprus                   18) India                    23) Japan                    28) Kuwait                   33) Malaysia                 38) Pakistan                 43) Réunion                  48) Syria                    53) United Arab Emirates
4) Azerbaijan                 9) Cambodia                 14) East Timor               19) Indonesia                24) Jordan                   29) Kyrgyzstan               34) Mongolia                 39) Palestine                44) Saudi Arabia             49) Taiwan                   54) Uzbekistan
5) Bahrain                   10) China                    15) French S. Terr.          20) Iran                     25) Kazakhstan               30) Laos                     35) Myanmar (Burma)          40) Philippines              45) Seychelles               50) Tajikistan               55) Vietnam
#? 49

The following information has been given:

        Taiwan

Therefore TZ='Asia/Taipei' will be used.
Selected time is now:   Tue May 23 13:20:47 CST 2023.
Universal Time is now:  Tue May 23 05:20:47 UTC 2023.
Is the above information OK?
1) Yes
2) No
#? 1

You can make this change permanent for yourself by appending the line
        TZ='Asia/Taipei'; export TZ
to the file '.profile' in your home directory; then log out and log in again.

Here is that TZ value again, this time on standard output so that you
can use the /usr/bin/tzselect command in shell scripts:
Asia/Taipei
```