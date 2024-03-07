// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

const base = {
  1: "#101211",
  2: "#171918",
  3: "#202221",
  4: "#272a29",
  5: "#2e3130",
  6: "#373b39",
  7: "#444947",
  8: "#5b625f",
  9: "#63706b",
  10: "#717d79",
  11: "#adb5b2",
  12: "#eceeed",
}

const accent = {
  1: "#0e1515",
  2: "#0f1b1b",
  3: "#092c2b",
  4: "#003a38",
  5: "#004744",
  6: "#105650",
  7: "#1e685f",
  8: "#277f70",
  9: "#86ead4",
  10: "#a8f5e5",
  11: "#58d5ba",
  12: "#c4f5e1",
}

const blue = {
  1: "#0d1520",
  2: "#111927",
  3: "#0d2847",
  4: "#003362",
  5: "#004074",
  6: "#104d87",
  7: "#205d9e",
  8: "#2870bd",
  9: "#0090ff",
  10: "#3b9eff",
  11: "#70b8ff",
  12: "#c2e6ff",
}

const cyan = {
  1: "#0b161a",
  2: "#101b20",
  3: "#082c36",
  4: "#003848",
  5: "#004558",
  6: "#045468",
  7: "#12677e",
  8: "#11809c",
  9: "#00a2c7",
  10: "#23afd0",
  11: "#4ccce6",
  12: "#b6ecf7",
}

const green = {
  1: "#0e1512",
  2: "#121b17",
  3: "#132d21",
  4: "#113b29",
  5: "#174933",
  6: "#20573e",
  7: "#28684a",
  8: "#2f7c57",
  9: "#30a46c",
  10: "#33b074",
  11: "#3dd68c",
  12: "#b1f1cb",
}

const magenta = {
  1: "#191117",
  2: "#21121d",
  3: "#37172f",
  4: "#4b143d",
  5: "#591c47",
  6: "#692955",
  7: "#833869",
  8: "#a84885",
  9: "#d6409f",
  10: "#de51a8",
  11: "#ff8dcc",
  12: "#fdd1ea",
}

const red = {
  1: "#191111",
  2: "#201314",
  3: "#3b1219",
  4: "#500f1c",
  5: "#611623",
  6: "#72232d",
  7: "#8c333a",
  8: "#b54548",
  9: "#e5484d",
  10: "#ec5d5e",
  11: "#ff9592",
  12: "#ffd1d9",
}

const yellow = {
  1: "#14120b",
  2: "#1b180f",
  3: "#2d2305",
  4: "#362b00",
  5: "#433500",
  6: "#524202",
  7: "#665417",
  8: "#836a21",
  9: "#ffe629",
  10: "#ffff57",
  11: "#f5e147",
  12: "#f6eeb4",
}

module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: "stable",

    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: "MesloLGS NF",

    // default font weight: 'normal' or 'bold'
    fontWeight: "normal",

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: "bold",

    // line height as a relative unit
    lineHeight: 1.5,

    // letter spacing as a relative unit
    letterSpacing: 1,

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: accent[9],

    // terminal text color under BLOCK cursor
    cursorAccentColor: "#000",

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: "BLOCK",

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: base[12],

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: base[1],

    // terminal selection color
    selectionColor: accent[5],

    // border color (window, tabs)
    borderColor: base[6],

    // custom CSS to embed in the main window
    css: "",

    // custom CSS to embed in the terminal window
    termCSS: "",

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: "",

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: "",

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: "12px 14px",

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      white: base[12],
      lightWhite: "#ffffff",
      black: "#000",
      lightBlack: base[10],
      blue: blue[10],
      lightBlue: blue[11],
      cyan: cyan[10],
      lightCyan: cyan[11],
      green: green[10],
      lightGreen: green[11],
      magenta: magenta[10],
      lightMagenta: magenta[11],
      red: red[10],
      lightRed: red[11],
      yellow: yellow[10],
      lightYellow: yellow[11],
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // PowerShell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: "",

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ["--login"],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: "SOUND",

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    quickEdit: false,

    // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
    // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
    // (inside tmux or vim with mouse mode enabled for example).
    macOptionSelectionMode: "vertical",

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // Whether to use the WebGL renderer. Set it to false to use canvas-based
    // rendering (slower, but supports transparent backgrounds)
    webGLRenderer: true,

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: ["hypercwd", /*  "xi-hyper", */ "hyper-hide-title"],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
}
