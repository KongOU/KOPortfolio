class ApplicationController < ActionController::Base
  include DeviseConcern
  include SourceConcern
  include CurrentUserConcern
end
