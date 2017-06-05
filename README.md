# Ramen

- **Author:** [Rose McKeon](http://rosemckeon.co.uk)
- **Version:** 0.1.2
- **Licence:** MIT
- **Repo:** [git@github.com:rozeykex/ramen.git](https://github.com/rozeykex/ramen.git)
- **Issues:** https://github.com/rozeykex/ramen/issues
- **Demo:** https://roses.shinyapps.io/ramen/

## More control over your Shiny App's style and dependencies

**Ramen is a Shiny app template which provides Bootstrap, along with some of the other dependencies, via Bower so they can be customised and compiled into single css and js resources.**

Gulp is used to minify assets and compile SCSS so you can customise bootstrap variables and error check custom JS. Final app files are stored in `./app` for deployment. A basic tabbed layout, with inputs and outputs is included for demonstration, along with skeleton module files to use as a template.

## Installation

1. Inside a new empty project folder: `$ git clone --depth=1 git@github.com:rozeykex/ramen.git ./ && rm -rf .git`
2. `$ bower update`
3. `$ npm install`

## Usage 

1. Edit `./assets` 
2. Run `$ gulp` from the project root.
3. Files output to `./app/www/dist/` are made available to your App.

> `./assets/manifest.json` controls distribution output (see [Manifest help](https://github.com/austinpray/asset-builder/tree/master/help)).

### More gulp commands

- `$ gulp watch` compiles/minifies and exports live as you edit. A self refreshing dev url can be set via manifest.json.
- `$ gulp styles` compiles and exports style changes only.
- `$ gulp fonts` exports fonts only.
- `$ gulp scripts` exports scripts only.

See: `./gulpfile.js` tasks for more details.

### Useful links

- [Bootstrap](https://getbootstrap.com/)
- [Bower](https://bower.io/)
- [Manifest](https://github.com/austinpray/asset-builder/tree/master/help)
- [Gulp](http://gulpjs.com/)

### Contribution

Please feel free to contribute via Github. I'd like to expand on this to allow use of Bootrap 4, but have come across some conflicts that will need resolving.