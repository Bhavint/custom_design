module ApplicationHelper

def full_title(specific_title)

	base_title = "FACO^"
	if specific_title.empty?
		base_title
	else
		"#{base_title} #{specific_title}"
	end
end
end
