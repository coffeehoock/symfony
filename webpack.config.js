var Encore = require('@symfony/webpack-encore');


Encore

    // the project directory where compiled assets will be stored
    .setOutputPath('public/build/')
    // the public path used by the web server to access the previous directory
    .setPublicPath('/build')
    .cleanupOutputBeforeBuild()
    // .enableSourceMaps(!Encore.isProduction())
    .enableSassLoader()
    .enableCoffeeScriptLoader()
    .enablePostCssLoader((conf) => {
        conf.config = {
            path: 'config/postcss.config.js',
        };
    })

    // uncomment to create hashed filenames (e.g. app.abc123.css)
    // .enableVersioning(Encore.isProduction())

    // uncomment to define the assets of the project
    // .addEntry('./../../assets/js/coffeecompill', './assets/coffee/app.coffee')
    .addEntry('js/app', './assets/coffee/app.coffee')
    // .addEntry('js/app', './assets/js/app.js')
    .addStyleEntry('css/app', './assets/sass/app.sass')

    // uncomment if you use Sass/SCSS files
    // .enableSassLoader()

    // uncomment for legacy applications that require $/jQuery as a global variable
    .autoProvidejQuery({
        $: 'jquery',
        jQuery: 'jquery'
    })

    // Enable React/JSX (babel-preset-react)
    .enableReactPreset()

    // Enable ES6
    .configureBabel((conf) => {
        conf.presets.push = {
            targets: {
                browsers: "> 10%",
            }
        };
    })

    .enableBuildNotifications();


module.exports = Encore.getWebpackConfig();
