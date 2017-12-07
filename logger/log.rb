require 'logger'

$LOG = Logger.new($stderr)



def run_me

	begin
		eval(3/0)
		
	rescue Exception => e

		$LOG.warn "Caught something:: #{e}"
		$LOG.info "Caught something:: #{e}"
		$LOG.fatal "Caught something:: #{e}"
		$LOG.error "Caught something:: #{e}"
		$LOG.debug "Caught something:: #{e}"
		
		
	end
	
end

run_me