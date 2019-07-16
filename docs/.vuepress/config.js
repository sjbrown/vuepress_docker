module.exports = {
  title: 'Demo VuePress',
  description: 'Just playing around',

  themeConfig: {
    sidebar: [
      '/',
      '/page_a.md',
      ['/page_b', 'Explicit link text']
    ]
  }

}
