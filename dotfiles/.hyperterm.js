module.exports = {
  config: {
    fontSize: 12,
    fontFamily: 'MesloLGSDZ-Regular',
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorShape: 'BLOCK',
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#555',
    css: '',
    termCSS: '',
    showHamburgerMenu: true,
    showWindowControls: true,
    padding: '12px 14px',
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },
    shell: 'zsh',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: false,

    overlay: {
      animate: false,
      hideOnBlur: true,
      hasShadow: true,
      hotkeys: ['Ctrl+Cmd+Space'],
      position: 'left',
      resizable: false,
      size: 0.5
    },
  },

  plugins: [
    'hypercwd',
    'hyperterm-tab-icons',
    'hyperterm-overlay',
    'hyperterm-seti'
  ],

  localPlugins: []
};
