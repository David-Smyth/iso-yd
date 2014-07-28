module ApplicationHelper

	# Provide a page title with optional descriminator
	def page_title(descriminator)
		if descriminator.nil? || descriminator.empty?
			"iso-yd | WebApp for ISO Standards for Yacht Design"
		else
			"iso-yd | #{descriminator} WebApp for ISO Standards for Yacht Design"
		end
	end

end
