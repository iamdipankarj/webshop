module.exports = {
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        'primary-900': '#0f172a',
        'primary-700': '#334155'
      },
      backgroundImage: {
        'conic-gradient': 'linear-gradient(90deg, #44FF9A -.55%, #44B0FF 22.86%, #8B44FF 48.36%, #FF6644 73.33%, #EBFF70 99.34%)',
      }
    }
  },
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  plugins: [
    require('@tailwindcss/forms')
  ]
}
