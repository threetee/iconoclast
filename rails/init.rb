require 'iconoclast'

ActionController::Base.extend Iconoclast::ControllerMixin

RAILS_DEFAULT_LOGGER.info("** Iconoclast: initialized properly") if defined?(RAILS_DEFAULT_LOGGER)

