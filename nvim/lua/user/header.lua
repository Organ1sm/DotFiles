local headers = {
  ["block"] = {
    [[ .-----------------. .----------------.  .----------------.  .----------------.  .----------------.  .----------------. ]],
    [[| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |]],
    [[| | ____  _____  | || |  _________   | || |     ____     | || | ____   ____  | || |     _____    | || | ____    ____ | |]],
    [[| ||_   \|_   _| | || | |_   ___  |  | || |   .'    `.   | || ||_  _| |_  _| | || |    |_   _|   | || ||_   \  /   _|| |]],
    [[| |  |   \ | |   | || |   | |_  \_|  | || |  /  .--.  \  | || |  \ \   / /   | || |      | |     | || |  |   \/   |  | |]],
    [[| |  | |\ \| |   | || |   |  _|  _   | || |  | |    | |  | || |   \ \ / /    | || |      | |     | || |  | |\  /| |  | |]],
    [[| | _| |_\   |_  | || |  _| |___/ |  | || |  \  `--'  /  | || |    \ ' /     | || |     _| |_    | || | _| |_\/_| |_ | |]],
    [[| ||_____|\____| | || | |_________|  | || |   `.____.'   | || |     \_/      | || |    |_____|   | || ||_____||_____|| |]],
    [[| |              | || |              | || |              | || |              | || |              | || |              | |]],
    [[| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |]],
    [[ '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------' ]],
  },

  ["isometric1"] = {
    [[     ___           ___           ___          ___                       ___     ]],
    [[    /\__\         /\  \         /\  \        /\__\          ___        /\__\    ]],
    [[   /::|  |       /::\  \       /::\  \      /:/  /         /\  \      /::|  |   ]],
    [[  /:|:|  |      /:/\:\  \     /:/\:\  \    /:/  /          \:\  \    /:|:|  |   ]],
    [[ /:/|:|  |__   /::\~\:\  \   /:/  \:\  \  /:/__/  ___      /::\__\  /:/|:|__|__ ]],
    [[/:/ |:| /\__\ /:/\:\ \:\__\ /:/__/ \:\__\ |:|  | /\__\  __/:/\/__/ /:/ |::::\__\]],
    [[\/__|:|/:/  / \:\~\:\ \/__/ \:\  \ /:/  / |:|  |/:/  / /\/:/  /    \/__/~~/:/  /]],
    [[    |:/:/  /   \:\ \:\__\    \:\  /:/  /  |:|__/:/  /  \::/__/           /:/  / ]],
    [[    |::/  /     \:\ \/__/     \:\/:/  /    \::::/__/    \:\__\          /:/  /  ]],
    [[    /:/  /       \:\__\        \::/  /      ~~~~         \/__/         /:/  /   ]],
    [[    \/__/         \/__/         \/__/                                  \/__/    ]],
  },

  ["isometric2"] = {
    [[     ___           ___           ___                                    ___     ]],
    [[    /\  \         /\__\         /\  \          ___                     /\  \    ]],
    [[    \:\  \       /:/ _/_       /::\  \        /\  \       ___         |::\  \   ]],
    [[     \:\  \     /:/ /\__\     /:/\:\  \       \:\  \     /\__\        |:|:\  \  ]],
    [[ _____\:\  \   /:/ /:/ _/_   /:/  \:\  \       \:\  \   /:/__/      __|:|\:\  \ ]],
    [[/::::::::\__\ /:/_/:/ /\__\ /:/__/ \:\__\  ___  \:\__\ /::\  \     /::::|_\:\__\]],
    [[\:\~~\~~\/__/ \:\/:/ /:/  / \:\  \ /:/  / /\  \ |:|  | \/\:\  \__  \:\~~\  \/__/]],
    [[ \:\  \        \::/_/:/  /   \:\  /:/  /  \:\  \|:|  |  ~~\:\/\__\  \:\  \      ]],
    [[  \:\  \        \:\/:/  /     \:\/:/  /    \:\__|:|__|     \::/  /   \:\  \     ]],
    [[   \:\__\        \::/  /       \::/  /      \::::/__/      /:/  /     \:\__\    ]],
    [[    \/__/         \/__/         \/__/        ~~~~          \/__/       \/__/    ]],
  },

  ["isometric3"] = {
    [[     ___           ___           ___                                    ___     ]],
    [[    /__/\         /  /\         /  /\          ___        ___          /__/\    ]],
    [[    \  \:\       /  /:/_       /  /::\        /__/\      /  /\        |  |::\   ]],
    [[     \  \:\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\  ]],
    [[ _____\__\:\   /  /:/ /:/_   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\ ]],
    [[/__/::::::::\ /__/:/ /:/ /\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\]],
    [[\  \:\~~\~~\/ \  \:\/:/ /:/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/]],
    [[ \  \:\  ~~~   \  \::/ /:/   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\      ]],
    [[  \  \:\        \  \:\/:/     \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\     ]],
    [[   \  \:\        \  \::/       \  \::/      \__\::::/      \__\/      \  \:\    ]],
    [[    \__\/         \__\/         \__\/           ~~~~                   \__\/    ]],
  },

  ["isometric4"] = {
    [[     ___           ___           ___                                    ___     ]],
    [[    /  /\         /  /\         /  /\         ___           ___        /  /\    ]],
    [[   /  /::|       /  /::\       /  /::\       /  /\         /__/\      /  /::|   ]],
    [[  /  /:|:|      /  /:/\:\     /  /:/\:\     /  /:/         \__\:\    /  /:|:|   ]],
    [[ /  /:/|:|__   /  /::\ \:\   /  /:/  \:\   /  /:/          /  /::\  /  /:/|:|__ ]],
    [[/__/:/ |:| /\ /__/:/\:\ \:\ /__/:/ \__\:\ /__/:/  ___   __/  /:/\/ /__/:/_|::::\]],
    [[\__\/  |:|/:/ \  \:\ \:\_\/ \  \:\ /  /:/ |  |:| /  /\ /__/\/:/~~  \__\/  /~~/:/]],
    [[    |  |:/:/   \  \:\ \:\    \  \:\  /:/  |  |:|/  /:/ \  \::/           /  /:/ ]],
    [[    |__|::/     \  \:\_\/     \  \:\/:/   |__|:|__/:/   \  \:\          /  /:/  ]],
    [[    /__/:/       \  \:\        \  \::/     \__\::::/     \__\/         /__/:/   ]],
    [[    \__\/         \__\/         \__\/          ~~~~                    \__\/    ]],
  },

  ["merlin1"] = {
    [[ _____  ___    _______    ______  ___      ___  __     ___      ___ ]],
    [[(\"   \|"  \  /"     "|  /    " \|"  \    /"  ||" \   |"  \    /"  |]],
    [[|.\\   \    |(: ______) // ____  \\   \  //  / ||  |   \   \  //   |]],
    [[|: \.   \\  | \/    |  /  /    ) :)\\  \/. ./  |:  |   /\\  \/.    |]],
    [[|.  \    \. | // ___)_(: (____/ //  \.    //   |.  |  |: \.        |]],
    [[|    \    \ |(:      "|\        /    \\   /    /\  |\ |.  \    /:  |]],
    [[ \___|\____\) \_______) \"_____/      \__/    (__\_|_)|___|\__/|___|]],
  },

  ["smisome1"] = {
    [[   ___       ___       ___       ___       ___       ___   ]],
    [[  /\__\     /\  \     /\  \     /\__\     /\  \     /\__\  ]],
    [[ /:| _|_   /::\  \   /::\  \   /:/ _/_   _\:\  \   /::L_L_ ]],
    [[/::|/\__\ /::\:\__\ /:/\:\__\ |::L/\__\ /\/::\__\ /:/L:\__\]],
    [[\/|::/  / \:\:\/  / \:\/:/  / |::::/  / \::/\/__/ \/_/:/  /]],
    [[  |:/  /   \:\/  /   \::/  /   L;;/__/   \:\__\     /:/  / ]],
    [[  \/__/     \/__/     \/__/               \/__/     \/__/  ]],
  },

  ["sub-zero"] = {
    [[ __   __     ______     ______     __   __  __     __    __   ]],
    [[/\ "-.\ \   /\  ___\   /\  __ \   /\ \ / / /\ \   /\ "-./  \  ]],
    [[\ \ \-.  \  \ \  __\   \ \ \/\ \  \ \ \'/  \ \ \  \ \ \-./\ \ ]],
    [[ \ \_\\"\_\  \ \_____\  \ \_____\  \ \__|   \ \_\  \ \_\ \ \_\]],
    [[  \/_/ \/_/   \/_____/   \/_____/   \/_/     \/_/   \/_/  \/_/]],
  },

  ["swampland"] = {
    [[ ___   __    ______   ______   __   __   ________  ___ __ __     ]],
    [[/__/\ /__/\ /_____/\ /_____/\ /_/\ /_/\ /_______/\/__//_//_/\    ]],
    [[\::\_\\  \ \\::::_\/_\:::_ \ \\:\ \\ \ \\__.::._\/\::\| \| \ \   ]],
    [[ \:. `-\  \ \\:\/___/\\:\ \ \ \\:\ \\ \ \  \::\ \  \:.      \ \  ]],
    [[  \:. _    \ \\::___\/_\:\ \ \ \\:\_/.:\ \ _\::\ \__\:.\-/\  \ \ ]],
    [[   \. \`-\  \ \\:\____/\\:\_\ \ \\ ..::/ //__\::\__/\\. \  \  \ \]],
    [[    \__\/ \__\/ \_____\/ \_____\/ \___/_( \________\/ \__\/ \__\/]],
  },

  ["one"] = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
  },

  ["two"] = {
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⡿⢫⣷⣿⣿⣿⣿⣿⣿⣿⣾⣯⣿⡿⢧⡚⢷⣌⣽⣿⣿⣿⣿⣿⣶⡌⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⠇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣇⣘⠿⢹⣿⣿⣿⣿⣿⣻⢿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣻⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⣬⠏⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⠀⠈⠁⠀⣿⡇⠘⡟⣿⣿⣿⣿⣿⣿⣿⣿⡏⠿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⡏⠀⠀⠐⠀⢻⣇⠀⠀⠹⣿⣿⣿⣿⣿⣿⣩⡶⠼⠟⠻⠞⣿⡈⠻⣟⢻⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢿⠀⡆⠀⠘⢿⢻⡿⣿⣧⣷⢣⣶⡃⢀⣾⡆⡋⣧⠙⢿⣿⣿⣟⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⡥⠂⡐⠀⠁⠑⣾⣿⣿⣾⣿⣿⣿⡿⣷⣷⣿⣧⣾⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⡿⣿⣍⡴⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⣄⣀⣷⡄⣙⢿⣿⣿⣿⣿⣯⣶⣿⣿⢟⣾⣿⣿⢡⣿⣿⣿⣿⣿]],
    [[⣿⡏⣾⣿⣿⣿⣷⣦⠀⠀⠀⢀⡀⠀⠀⠠⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣡⣾⣿⣿⢏⣾⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⡴⠀⠀⠀⠀⠀⠠⠀⠰⣿⣿⣿⣷⣿⠿⠿⣿⣿⣭⡶⣫⠔⢻⢿⢇⣾⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⡿⢫⣽⠟⣋⠀⠀⠀⠀⣶⣦⠀⠀⠀⠈⠻⣿⣿⣿⣾⣿⣿⣿⣿⡿⣣⣿⣿⢸⣾⣿⣿⣿⣿⣿⣿⣿]],
    [[⡿⠛⣹⣶⣶⣶⣾⣿⣷⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢿⣿⡿⠫⠾⠿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⡆⣠⢀⣴⣏⡀⠀⠀⠀⠉⠀⠀⢀⣠⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⠿⠛⠛⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣯⣟⠷⢷⣿⡿⠋⠀⠀⠀⠀⣵⡀⢠⡿⠋⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⢿⣿⣿⠂⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣿⣿⣿⣿⣍⠛⠿⣿⣿⣿⣿⣿⣿]],
  },

  ["coffee-cat"] = {
    "     ⠀⠀⠀⠀⠀⠀⠀⡴⠞⠉⢉⣭⣿⣿⠿⣳⣤⠴⠖⠛⣛⣿⣿⡷⠖⣶⣤⡀⠀⠀⠀  ",
    "   ⠀⠀⠀⠀⠀⠀⠀⣼⠁⢀⣶⢻⡟⠿⠋⣴⠿⢻⣧⡴⠟⠋⠿⠛⠠⠾⢛⣵⣿⠀⠀⠀⠀  ",
    "   ⣼⣿⡿⢶⣄⠀⢀⡇⢀⡿⠁⠈⠀⠀⣀⣉⣀⠘⣿⠀⠀⣀⣀⠀⠀⠀⠛⡹⠋⠀⠀⠀⠀  ",
    "   ⣭⣤⡈⢑⣼⣻⣿⣧⡌⠁⠀⢀⣴⠟⠋⠉⠉⠛⣿⣴⠟⠋⠙⠻⣦⡰⣞⠁⢀⣤⣦⣤⠀  ",
    "   ⠀⠀⣰⢫⣾⠋⣽⠟⠑⠛⢠⡟⠁⠀⠀⠀⠀⠀⠈⢻⡄⠀⠀⠀⠘⣷⡈⠻⣍⠤⢤⣌⣀  ",
    "   ⢀⡞⣡⡌⠁⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠸⣇⠀⢾⣷⢤⣬⣉  ",
    "   ⡞⣼⣿⣤⣄⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠸⣿⣇⠈⠻  ",
    "   ⢰⣿⡿⢹⠃⠀⣠⠤⠶⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠀⣿⠛⡄⠀  ",
    "   ⠈⠉⠁⠀⠀⠀⡟⡀⠀⠈⡗⠲⠶⠦⢤⣤⣤⣄⣀⣀⣸⣧⣤⣤⠤⠤⣿⣀⡀⠉⣼⡇⠀  ",
    "   ⣿⣴⣴⡆⠀⠀⠻⣄⠀⠀⠡⠀⠀⠀⠈⠛⠋⠀⠀⠀⡈⠀⠻⠟⠀⢀⠋⠉⠙⢷⡿⡇⠀  ",
    "   ⣻⡿⠏⠁⠀⠀⢠⡟⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⢀⠈⠀⢀⣀⡾⣴⠃⠀  ",
    "   ⢿⠛⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠈⠢⠄⣀⠠⠼⣁⠀⡱⠤⠤⠐⠁⠀⠀⣸⠋⢻⡟⠀⠀  ",
    "   ⠈⢧⣀⣤⣶⡄⠘⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⠖⠛⠻⣄⠀⠀⠀⢀⣠⡾⠋⢀⡞⠀⠀⠀  ",
    "   ⠀⠀⠻⣿⣿⡇⠀⠈⠓⢦⣤⣤⣤⡤⠞⠉⠀⠀⠀⠀⠈⠛⠒⠚⢩⡅⣠⡴⠋⠀⠀⠀⠀  ",
    "   ⠀⠀⠀⠈⠻⢧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣻⠿⠋⠀⠀⠀⠀⠀⠀  ",
    "   ⠀⠀⠀⠀⠀⠀⠉⠓⠶⣤⣄⣀⡀⠀⠀⠀⠀⠀⢀⣀⣠⡴⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀  ",
  },

  ["love & science"] = {
    " ██▓     ▒█████   ██▒   █▓▓█████         ██████  ▄████▄   ██▓▓█████  ███▄    █  ▄████▄  ▓█████ ",
    "▓██▒    ▒██▒  ██▒▓██░   █▒▓█   ▀       ▒██    ▒ ▒██▀ ▀█  ▓██▒▓█   ▀  ██ ▀█   █ ▒██▀ ▀█  ▓█   ▀ ",
    "▒██░    ▒██░  ██▒ ▓██  █▒░▒███         ░ ▓██▄   ▒▓█    ▄ ▒██▒▒███   ▓██  ▀█ ██▒▒▓█    ▄ ▒███ ",
    "▒██░    ▒██   ██░  ▒██ █░░▒▓█  ▄         ▒   ██▒▒▓▓▄ ▄██▒░██░▒▓█  ▄ ▓██▒  ▐▌██▒▒▓▓▄ ▄██▒▒▓█  ▄ ",
    "░██████▒░ ████▓▒░   ▒▀█░  ░▒████▒      ▒██████▒▒▒ ▓███▀ ░░██░░▒████▒▒██░   ▓██░▒ ▓███▀ ░░▒████▒",
    "░ ▒░▓  ░░ ▒░▒░▒░    ░ ▐░  ░░ ▒░ ░      ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░▓  ░░ ▒░ ░░ ▒░   ▒ ▒ ░ ░▒ ▒  ░░░ ▒░ ░",
    "░ ░ ▒  ░  ░ ▒ ▒░    ░ ░░   ░ ░  ░      ░ ░▒  ░ ░  ░  ▒    ▒ ░ ░ ░  ░░ ░░   ░ ▒░  ░  ▒    ░ ░  ░",
    "░ ░   ░ ░ ░ ▒       ░░     ░         ░  ░  ░  ░         ▒ ░   ░      ░   ░ ░ ░           ░   ",
    "░  ░    ░ ░        ░     ░  ░            ░  ░ ░       ░     ░  ░         ░ ░ ░         ░  ░",
    "░                         ░                              ░  ",
  },

  ["cool"] = {
    [[                                                                   ]],
    [[     ████  ██████           █████      ██                    ]],
    [[     ██████ █████             █████                            ]],
    [[     █████████ ███████████████████ ███   ███████████  ]],
    [[    █████████  ███    █████████████ █████ ██████████████  ]],
    [[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
    [[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
    [[██████  █████████████████████ ████ █████ █████ ████ ██████]],
  },

  --   ["donate_your_heart"] = {
  --     "",
  --     "",
  --     "",
  --     "",
  --     "",
  --     "      ░░                                                  ░░      ",
  --     "      ████                                              ████      ",
  --     "      ██▓▓██                                          ██  ██      ",
  --     "      ██▓▓▓▓██                                      ██    ██      ",
  --     "  ██████▓▓▓▓▓▓██████████████████████████████████████      ██████  ",
  --     "  ██░░░░░░▓▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░      ░░░░░░██  ",
  --     "  ██▓▓▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▒▒▒▒▒▒  ██  ",
  --     "  ██▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒      ░░▒▒▒▒    ██  ",
  --     "  ██░░▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒    ░░██  ",
  --     "  ██░░▓▓▓▓▓▓▓▓▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒        ░░██  ",
  --     "  ██░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒        ▒▒░░██  ",
  --     "  ██▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒░░▒▒▒▒▒▒    ▒▒▒▒        ▒▒▒▒  ██  ",
  --     "  ██▓▓▓▓▓▓▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒░░▒▒▒▒    ▒▒▒▒▒▒    ▒▒▒▒      ██  ",
  --     "  ██░░▓▓▓▓▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓▒▒▒▒░░▒▒    ░░▒▒  ▒▒  ░░▒▒      ░░██  ",
  --     "  ██▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓    ▒▒  ▒▒▒▒    ▒▒▒▒▒▒      ▒▒  ██  ",
  --     "  ██▓▓▓▓▒▒▓▓▓▓▓▓▒▒▒▒▓▓▓▓▓▓▒▒      ▒▒▒▒▒▒      ▒▒▒▒      ▒▒    ██  ",
  --     "  ██░░▓▓▓▓▒▒▒▒▓▓▒▒▓▓▒▒▒▒▓▓        ▒▒▒▒    ▒▒▒▒  ▒▒  ▒▒▒▒    ░░██  ",
  --     "  ██░░▓▓▓▓▓▓▓▓▒▒▒▒▓▓▒▒▒▒      ░░░░▒▒▒▒  ░░▒▒    ▒▒▒▒        ░░██  ",
  --     "  ██░░▒▒▓▓▓▓▓▓▓▓▒▒▒▒▓▓▓▓    ▒▒▒▒░░  ▒▒▒▒▒▒    ▒▒▒▒        ▒▒░░██  ",
  --     "  ██░░░░░░▓▓▓▓▓▓░░░░░░▓▓  ░░░░      ░░      ░░░░░░      ░░░░░░██  ",
  --     "  ██░░▒▒▒▒▒▒▓▓▓▓░░▒▒▒▒▒▒▒▒▒▒      ░░▒▒    ░░    ▒▒    ░░▒▒▒▒░░██  ",
  --     "  ██░░▓▓▓▓▒▒▒▒▓▓▒▒▓▓▓▓▓▓▒▒    ▒▒░░  ▒▒▒▒▒▒      ▒▒  ▒▒▒▒    ░░██  ",
  --     "  ██░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓    ▒▒      ▒▒▒▒      ▒▒▒▒▒▒      ▒▒░░██  ",
  --     "  ██░░▒▒▓▓▓▓▓▓▓▓▒▒▓▓▒▒▓▓  ▒▒      ▒▒▒▒      ▒▒  ▒▒        ▒▒░░██  ",
  --     "  ██░░▒▒▒▒▒▒▓▓▓▓▒▒▓▓▓▓▒▒▒▒    ▒▒░░  ▒▒    ▒▒    ▒▒    ▒▒▒▒▒▒░░██  ",
  --     "  ██░░▒▒▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒  ▒▒      ▒▒▒▒▒▒      ▒▒▒▒▒▒▒▒  ▒▒░░██  ",
  --     "  ██░░▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▓▓  ▒▒      ▒▒▒▒      ▒▒▒▒▒▒        ▒▒░░██  ",
  --     "  ██░░▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒░░    ▒▒░░▒▒▒▒    ░░▒▒  ▒▒      ▒▒▒▒░░██  ",
  --     "  ██░░▒▒▒▒▒▒▒▒▓▓▒▒▓▓▓▓▓▓▒▒  ▒▒      ▒▒▒▒▒▒      ▒▒  ▒▒▒▒▒▒▒▒░░██  ",
  --     "  ██░░▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▓▓  ▒▒      ▒▒▒▒        ▒▒▒▒▒▒    ▒▒▒▒░░██  ",
  --     "  ██░░▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒░░  ▒▒▒▒░░▒▒▒▒    ░░▒▒▒▒      ░░▒▒▒▒░░██  ",
  --     "  ██░░▒▒▒▒▒▒▒▒▓▓▓▓▒▒▓▓▓▓  ▒▒▒▒      ▒▒▒▒▒▒    ▒▒    ▒▒▒▒▒▒▒▒░░██  ",
  --     "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒  ▒▒░░▒▒        ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░██  ",
  --     "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒    ▒▒    ░░▒▒▒▒      ▒▒▒▒▒▒▒▒░░██  ",
  --     "  ██░░░░▒▒▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒      ░░▒▒▒▒      ▒▒    ▒▒▒▒▒▒▒▒░░░░██  ",
  --     "  ██████░░░░▒▒▒▒▒▒▓▓▒▒▒▒    ▒▒▒▒░░        ▒▒▒▒  ▒▒▒▒▒▒░░░░██████  ",
  --     "        ████░░░░▒▒▒▒▒▒    ░░          ▒▒░░▒▒▒▒▒▒▒▒░░░░████        ",
  --     "            ████░░░░▒▒      ▒▒    ▒▒▒▒▓▓▓▓▓▓▒▒░░░░████            ",
  --     "                ██      ▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▓▓▓▓▓▓██                ",
  --     "              ██    ████░░░░▒▒▒▒░░▒▒▒▒░░░░████▓▓▓▓██              ",
  --     "            ██    ██    ████░░░░░░░░░░████    ██▓▓▓▓██            ",
  --     "          ████████          ████░░████          ████████          ",
  --   },
  --   ["Gundam"] = {
  --     [[⠰⡜⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠞⠁]],
  --     [[⠀⢳⡈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⡀⠀⠀⠀⠀⠀⠀⣴⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⢖⠽⠊⠁⠀⠀]],
  --     [[⠀⠀⢳⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠖⢋⡩⣝⠯⢻⣭⠓⠦⣄⣠⣮⠏⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⢊⡡⠖⠁⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⢧⠀⢳⡀⠀⠀⠀⠀⠀⠀⢀⣴⣊⣁⠠⡺⠝⠋⠁⠀⠀⢷⢧⠀⡴⡱⠓⠦⣄⠀⠀⠀⣀⠤⠚⠉⡠⠔⠉⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠈⡆⠀⢳⡀⠀⠀⠀⠠⠄⠉⠀⠨⠫⢹⣅⠀⠀⠀⠀⠀⠸⣟⠜⡴⠁⠀⠀⢈⣹⠖⠋⠀⣀⠔⠋⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠸⡄⠀⠱⡀⠀⢸⠟⣟⠿⢍⢆⠀⠈⠻⡀⠀⠀⣀⠤⠲⠋⡼⠿⣿⠶⠚⠉⠀⢀⡔⠊⠀⠀⠀⠀⢀⡤⣺⠕⠁⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⢹⡀⠀⠹⡄⠈⡆⠸⡄⠈⢧⣄⠀⠀⢱⡠⠊⢡⣞⣁⡼⠖⠉⠀⠀⢀⣀⠊⠙⠳⣄⠀⢀⡤⢒⠵⠊⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⢳⠀⠀⠹⡄⢹⣀⡳⠤⣬⣿⣴⣠⠊⢀⣠⠔⠊⠁⠀⠀⢀⡠⠒⠁⠈⢳⡦⣀⡨⢛⢥⣮⣁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⡇⢠⡀⢙⣞⣛⣛⣒⠶⣚⣾⠵⠚⣉⣤⠀⠀⠀⣠⠔⠉⠀⠀⠀⢀⡠⢟⡩⡖⢹⡆⠀⠈⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⢧⢸⢧⡜⠉⠉⠙⡎⠉⣜⠤⣒⠭⠓⠁⠀⢠⠏⠀⠀⠀⠀⢀⡰⣁⠀⠉⢻⡅⢸⡇⠀⠀⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⢸⣆⣿⠃⠀⠀⢀⡇⢨⠓⠉⠀⠀⢀⡠⠔⠃⠀⠀⠀⠀⠀⠘⠓⠉⠀⠀⠀⢷⢐⣀⠀⢀⣧⣿⡄⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⢰⠃⢸⡇⠀⠀⠀⢸⢃⡸⡇⣀⠴⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢽⣌⡉⠹⣞⠁⢧⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⢿⢲⣞⣃⠀⣀⣴⠾⠀⠉⠛⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⡴⠁⠀⠈⢉⠷⡟⠀⠈⣧⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⢸⠓⣎⣙⠉⡍⠀⠀⢀⡠⠖⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠟⠀⠀⢀⣊⣀⣠⡤⠤⢋⡜⢿⡀⡀⢸⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⡸⡁⣩⣩⣷⣝⡠⠖⠉⠀⠀⢠⠀⣀⣀⣀⣠⡤⠴⠒⠋⠈⠀⣠⣄⠀⠒⢛⠧⠤⠶⢶⠈⠀⠘⢧⠘⣼⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⢰⢻⡇⣠⡞⠘⣿⡀⠀⠀⠀⠀⢁⠜⠛⠛⠀⠀⣀⣀⣄⠀⠀⠉⠀⢹⠀⠀⠚⠶⣤⣶⣶⢀⡀⠀⠘⡇⡟⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠘⣎⠯⣭⠇⢀⡟⢲⣄⣀⢴⡎⠁⠀⠐⠚⠉⠉⠀⠠⢞⡷⡦⠶⢿⣇⠀⠀⣘⡉⠛⢉⣻⣷⡍⠀⢰⣷⠃⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠈⠳⣼⡛⢻⣇⠀⣯⣮⣭⣖⠙⢲⣶⠶⠶⠒⣦⡠⠜⡰⠁⢀⣾⠃⠀⢸⠹⣇⣤⠛⠁⣼⡇⢠⢿⡏⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⢹⣇⠀⣿⡄⢉⡿⠈⠉⠙⠺⠷⢶⣖⡾⠿⣶⣿⠷⣲⣾⠃⠀⠀⢇⠀⠙⠲⢤⣶⠟⠀⢸⣾⠁⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣀⣼⣷⠸⢿⠿⣶⠀⠀⠀⠀⠀⠀⠀⣹⢹⠀⠀⣿⠀⠀⠀⠈⡝⣻⠯⠿⠲⠀⠀⡿⠇⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⡿⣿⡇⣾⣤⣄⡀⠀⠀⠀⠀⠀⢠⡿⠈⡆⠀⠿⠀⠀⠀⠀⢀⣻⣶⣶⠿⠓⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇⠀⠣⠉⠛⠀⠀⠀⠀⠀⣼⠇⣰⡁⢸⡇⣀⠇⠀⠀⢀⠑⠚⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⣿⡧⠲⢻⠛⡶⡄⠀⠀⠀⣰⠟⣰⡃⡇⠘⡟⠁⠀⢀⠔⠁⠀⠀⠀⡰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⡀⢀⣤⡾⠂⠐⠁⠹⣄⣠⣂⠵⠚⢹⣧⣇⣀⣇⡀⠂⠁⠀⠀⠀⢀⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠀⣽⡍⠾⣿⡏⢳⡄⢠⢻⠉⠀⠀⠀⢸⣿⠀⢠⢫⡀⠀⠀⠀⠀⡰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⢀⡿⣷⣾⣿⣽⡖⠿⠃⡞⠀⠀⠀⠀⠸⣿⢠⠏⠀⢳⠀⠀⢀⠜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⠀⡜⠀⣼⡾⠟⠁⢸⡘⡇⠀⢀⠇⠀⠀⠀⠀⠀⣿⠎⠀⠀⠈⡆⡠⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⢰⠁⢀⡇⠀⠀⠀⠈⢧⠹⢤⣎⣀⣀⣀⡤⠤⢖⡟⠀⠀⠀⢀⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⠀⡞⠀⡼⠀⢀⡀⠀⠀⠈⠳⢾⣀⣀⣀⣤⠤⠖⡞⠀⠀⠀⡰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⢰⠁⢰⠃⢶⣻⠯⢤⣀⡀⠀⠀⠀⠀⠀⠀⠀⡜⠀⠀⢠⠎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⠀⠀⣎⡠⠞⠉⠓⠲⢤⣄⣀⠉⠙⠒⢢⡴⢭⡆⡼⠀⠀⡴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --     [[⠀⠀⠀⠀⡠⠞⠉⠀⠀⠀⠀⠀⠀⠀⠉⠙⠒⡦⢬⣙⠊⡽⠁⡠⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  --   },
}

local function random_header()
  local header_names = {}
  for header_name, _ in pairs(headers) do
    table.insert(header_names, header_name)
  end
  return headers[header_names[math.random(#header_names)]]
end

return random_header()
