module RailsAdmin
  module Config
    module Actions
      class Dashboard < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :root? do
          true
        end

        register_instance_option :breadcrumb_parent do
          nil
        end

        register_instance_option :controller do
          proc do
            @history = @auditing_adapter && @auditing_adapter.latest || []
            if @action.statistics?
           
            end
            render @action.template_name, status: @status_code || :ok
          end
        end

        register_instance_option :route_fragment do
          ''
        end

        register_instance_option :link_icon do
          'icon-home'
        end

        register_instance_option :statistics? do
          true
        end
      end
    end
  end
end
