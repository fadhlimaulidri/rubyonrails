# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( fontawesome-webfont.eot fontawesome-webfont.svg fontawesome-webfont.ttf fontawesome-webfont.woff fontawesome-webfont.woff2 FontAwesome.otf Simple-Line-Icons.dev.svg Simple-Line-Icons.eot Simple-Line-Icons.svg Simple-Line-Icons.ttf Simple-Line-Icons.woff Simple-Line-Icons.woff2 weathericons-regular-webfont.eot weathericons-regular-webfont.svg weathericons-regular-webfont.ttf weathericons-regular-webfont.woff weathericons-regular-webfont.woff2)

Rails.application.config.assets.precompile += %w( material/bootstrap.css)
Rails.application.config.assets.precompile += %w( material/application.css)
Rails.application.config.assets.precompile += %w( material/bootstrap.css)
Rails.application.config.assets.precompile += %w( material/font-awesome.css)
Rails.application.config.assets.precompile += %w( material/home.css)
Rails.application.config.assets.precompile += %w( material/lineicons.css)
Rails.application.config.assets.precompile += %w( material/mystyles.css)
Rails.application.config.assets.precompile += %w( material/weather-icons.css)

Rails.application.config.assets.precompile += %w( material/jquery.js)
Rails.application.config.assets.precompile += %w( material/moment.js)
Rails.application.config.assets.precompile += %w( material/bootstrap.js)
Rails.application.config.assets.precompile += %w( material/owl-carousel.js)
Rails.application.config.assets.precompile += %w( material/blur-area.js)
Rails.application.config.assets.precompile += %w( material/icheck.js)
Rails.application.config.assets.precompile += %w( material/gmap.js)
Rails.application.config.assets.precompile += %w( material/magnific-popup.js)
Rails.application.config.assets.precompile += %w( material/ion-range-slider.js)
Rails.application.config.assets.precompile += %w( material/sticky-kit.js)
Rails.application.config.assets.precompile += %w( material/smooth-scroll.js)
Rails.application.config.assets.precompile += %w( material/fotorama.js)
Rails.application.config.assets.precompile += %w( material/bs-datepicker.js)
Rails.application.config.assets.precompile += %w( material/typeahead.js)
Rails.application.config.assets.precompile += %w( material/quantity-selector.js)
Rails.application.config.assets.precompile += %w( material/countdown.js)
Rails.application.config.assets.precompile += %w( material/window-scroll-action.js)
Rails.application.config.assets.precompile += %w( material/youtube-bg.js)
Rails.application.config.assets.precompile += %w( material/custom.js)
Rails.application.config.assets.precompile += %w( material/fitvid.js)
