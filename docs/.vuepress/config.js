module.exports = {
    dest: '.build/docs',
    temp: '.build/temp',
    base: '/qmk_distro_wsl/',
    head: [
        ['link', { rel: 'icon', href: '/logo.png' }]
    ],
    title: 'QMK WSL',
    description: 'A pre-configured WSL distro for working with the QMK CLI',
    theme: 'default-prefers-color-scheme',
    themeConfig: {
        overrideTheme: 'dark',
        nav: [
            { text: 'Discord', link: 'https://discord.gg/Uq7gcHh' },
            { text: 'GitHub', link: 'https://github.com/qmk/qmk_distro_wsl' }
        ],
        logo: '/logo.png',
        search: false,
        lastUpdated: false,
        sidebar: [
            '/guide',
            '/faq',
            '/dev',
        ],
    },
    plugins: ['vuepress-plugin-medium-zoom'],
};
