module.exports = {
  title: 'Demo VuePress',
  description: 'Just playing around',

  themeConfig: {
    sidebar: [
      '/',
      '/page_a.md',
      ['/page_b', 'Explicit link text'],
    ]
  },

  plugins: {
    '@vuepress/active-header-links': {
        //sidebarLinkSelector: '.sidebar-link',
        //headerAnchorSelector: '.header-anchor',
    },
  },

}
