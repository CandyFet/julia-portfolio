module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  purge: {
    content: [
      './**/*.html.slim',
      '../views/**/*.html.slim',
    ],
  },
}