# frozen_string_literal: true

module ObsDeploy
  class Systemctl
    def status
      run ['systemctl'] + ['status'] + target
    end

    def list_dependencies
      run ['systemctl'] + ['list-dependencies'] + target
    end

    private

    def target
      ['obs-api-support.target']
    end

    def run(params)
      params + ['--no-pager']
    end
  end
end