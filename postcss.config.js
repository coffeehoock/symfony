module.exports = {
    plugins: {
        // include whatever plugins you want
        // but make sure you install these via yarn or npm!

        // add browserslist config to package.json (see below)
        autoprefixer: { browsers:[
            'samsung >= 5',
            'chrome >= 30',
            'edge >= 6',
            'ios_saf >= 6',
            'safari >= 6',
            'firefox >= 6',
            'opera >= 6',
            'ie >= 6',
            'last 15 version'
            ] }
    },
};

